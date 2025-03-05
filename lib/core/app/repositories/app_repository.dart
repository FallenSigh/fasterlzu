import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fasterlzu/app_config.dart';
import 'package:fasterlzu/core/api/app_client.dart';
import 'package:fasterlzu/core/api/appservice_client.dart';
import 'package:fasterlzu/core/app/models/app_model.dart';
import 'package:fasterlzu/core/auth/providers/auth_provider.dart';
import 'package:fasterlzu/core/auth/providers/auth_state.dart';
import 'package:fasterlzu/core/auth/repositories/auth_repository.dart';
import 'package:fasterlzu/core/easytong/repositories/easytong_repository.dart';
import 'package:fasterlzu/core/encryption/aes_crypto.dart';
import 'package:fasterlzu/core/logger/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appRepositoryProvider = Provider<AppRepository>((ref) {
  return AppRepository(
    authState: ref.watch(authStateProvider),
    dio: ref.watch(appServiceDioProvider),
    authRepository: ref.watch(authRepositoryProvider),
    // easytongRepository: ref.watch(easytongRepositoryProvider)
  );
});

class AppRepository {
  final AuthState _authState;
  final Dio _dio;
  final AuthRepository _authRepository;

  AppRepository({
    required AuthState authState,
    required Dio dio,
    required AuthRepository authRepository,
    // required EasytongRepository easytongRepository,
  }) : _authState = authState,
       _dio = dio,
       _authRepository = authRepository;

  Future<DetailedAppResponse?> getServiceInfoDetail() async {
    final token = await _authRepository.loginToken;
    final data = AESCrypto.encrypt('terminalId=1&loginToken=${token ?? ''}');

    final response = await _dio.post(
      AppConfig.appServiceApis['getServiceInfoDetail']!,
      data: data,
      options: Options(
        headers: {"Content-Type": "application/x-www-form-urlencoded"},
      ),
    );

    final res = DetailedAppResponse.fromJson(response.data);
    return res;
  }

  Future<List<AppType>?> getApps() async {
    try {
      final res = await getServiceInfoDetail();
      if (res != null && res.code == 1) {
        return res.data;
      }
    } catch (e) {
      log.e("[AppProvider] failed to get apps; ${e.toString()}");
    }
    return null;
  }
}
