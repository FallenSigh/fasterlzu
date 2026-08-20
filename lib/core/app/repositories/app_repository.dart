import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fasterlzu/app_config.dart';
import 'package:fasterlzu/core/api/appservice_client.dart';
import 'package:fasterlzu/core/app/models/app_model.dart';
import 'package:fasterlzu/core/auth/repositories/auth_repository.dart';
import 'package:fasterlzu/core/encryption/aes_crypto.dart';
import 'package:fasterlzu/core/logger/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

final appRepositoryProvider = Provider<AppRepository>((ref) {
  return AppRepository(
    dio: ref.watch(appServiceDioProvider),
    authRepository: ref.watch(authRepositoryProvider),
  );
});

class AppRepository {
  final Dio _dio;
  final AuthRepository _authRepository;

  static const String _hiveKeyPrefix = 'app_list_cache';
  Box? _box;

  // 内存缓存(避免每次打开页面都请求)
  List<AppType>? _memoryCache;

  AppRepository({
    required Dio dio,
    required AuthRepository authRepository,
  }) : _dio = dio,
       _authRepository = authRepository;

  /// 按用户隔离缓存 key,避免换账号读到旧缓存
  String get _hiveKey => '${_hiveKeyPrefix}_${_authRepository.currentUser}';

  Future<Box> _getBox() async {
    if (_box != null) return _box!;
    _box = await Hive.openBox('apps');
    return _box!;
  }

  /// 读取缓存(内存优先,Hive 兜底)。未登录/无缓存返回 null
  Future<List<AppType>?> getCachedApps() async {
    final token = await _authRepository.loginToken;
    if (token == null || token.isEmpty) return null;

    if (_memoryCache != null) return _memoryCache;
    try {
      final box = await _getBox();
      final raw = box.get(_hiveKey) as String?;
      if (raw == null) return null;
      final resp = DetailedAppResponse.fromJson(jsonDecode(raw));
      if (resp.code == 1 && resp.data != null) {
        _memoryCache = resp.data;
        return resp.data;
      }
    } catch (e) {
      log.e('[AppRepository] 读取应用列表缓存失败: $e');
    }
    return null;
  }

  Future<DetailedAppResponse?> getServiceInfoDetail() async {
    final token = await _authRepository.loginToken;
    if (token == null || token.isEmpty) {
      log.w('[AppRepository] 未登录,无法获取应用列表');
      return null;
    }

    final data = AESCrypto.encrypt('terminalId=1&loginToken=$token');

    final response = await _dio.post(
      AppConfig.appServiceApis['getServiceInfoDetail']!,
      data: data,
      options: Options(
        headers: {"Content-Type": "application/x-www-form-urlencoded"},
      ),
    );

    // 网络成功后写 Hive 缓存(供下次秒开/离线使用)
    try {
      final box = await _getBox();
      await box.put(_hiveKey, jsonEncode(response.data));
    } catch (e) {
      log.e('[AppRepository] 写入应用列表缓存失败: $e');
    }

    final res = DetailedAppResponse.fromJson(response.data);
    return res;
  }

  /// 获取应用列表。
  /// [forceRefresh] 为 true 时强制网络请求;否则优先内存/Hive 缓存。
  /// 未登录或无数据返回 null。
  Future<List<AppType>?> getApps({bool forceRefresh = false}) async {
    if (!forceRefresh) {
      final cached = await getCachedApps();
      if (cached != null) return cached;
    }

    try {
      final res = await getServiceInfoDetail();
      if (res != null && res.code == 1 && res.data != null) {
        _memoryCache = res.data;
        return res.data;
      }
    } catch (e) {
      log.e('[AppRepository] 获取应用列表失败; ${e.toString()}');
    }
    return null;
  }

  /// 清空缓存(登出时调用)
  Future<void> clearCache() async {
    _memoryCache = null;
    try {
      final box = await _getBox();
      await box.delete(_hiveKey);
    } catch (e) {
      log.e('[AppRepository] 清除应用列表缓存失败: $e');
    }
  }
}
