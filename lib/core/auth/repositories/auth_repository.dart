import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fasterlzu/app_config.dart';
import 'package:fasterlzu/core/api/appservice_client.dart';
import 'package:fasterlzu/core/auth/models/auth_model.dart';
import 'package:fasterlzu/core/encryption/aes_crypto.dart';
import 'package:fasterlzu/core/logger/logger.dart';
import 'package:fasterlzu/core/storage/secure_storage.dart';
import 'package:fasterlzu/core/storage/userinfo_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository(
      dio: ref.watch(appServiceDioProvider),
      storage: ref.watch(secureStorageProvider),
      userInfoStorage: ref.watch(userInfoStorageProvider));
});

class AuthRepository {
  final Dio _dio;
  final FlutterSecureStorage _storage;
  final UserInfoStorage _userInfoStorage;
  String currentUser;

  FlutterSecureStorage get storage => _storage;
  Future<String?> get loginToken => _storage.read(key: '${currentUser}login_token');
  Future<String?> get gatewayToken => _storage.read(key: '${currentUser}gateway_token');

  AuthRepository(
      {required Dio dio,
      required FlutterSecureStorage storage,
      required UserInfoStorage userInfoStorage})
      : _dio = dio,
        _storage = storage,
        _userInfoStorage = userInfoStorage,
        currentUser = '';

  Future<LoginResponse> login(String username, String password) async {
    final postData =
        LoginRequest(app_os: 2, name: username, pwd: password).toJson();
    final response = await _dio.post(AppConfig.appServiceApis['login']!,
        data: postData, options: Options(headers: {'Authorization': ''}));

    final res = LoginResponse.fromJson(response.data);

    if (res.code == 1) {
      _storage.write(
          key: 'cached_login_data',
          value: AESCrypto.encrypt(jsonEncode(postData)));
      await _storage.write(key: 'username', value: username);
      await _storage.write(
          key: '${username}login_token', value: res.data!.login_token);
      await _storage.write(
          key: '${username}gateway_token', value: res.data!.gateway_token);
      currentUser = username;
    }

    return res;
  }

  Future<LoginResponse?> cachedLogin() async {
    final postData = await _storage.read(key: 'cached_login_data');

    if (postData == null) {
      log.t('trying cachedLogin, but no cache was found!');
      return null;
    }

    final response = await _dio.post(AppConfig.appServiceApis['login']!,
        data: postData, options: Options(headers: {'Authorization': ''}));

    final res = LoginResponse.fromJson(response.data);

    if (res.code == 1) {
      currentUser = (await _storage.read(key: 'username'))!;
      await _storage.write(
          key: '${currentUser}login_token', value: res.data!.login_token);
      await _storage.write(
          key: '${currentUser}gateway_token', value: res.data!.gateway_token);
    }
    return res;
  }

  Future<LogoutResponse> logout() async {
    final postData = 'loginToken=${(await loginToken)!}';
    final response = await _dio.post(AppConfig.appServiceApis['logout']!, data: AESCrypto.encrypt(postData),
        options: Options(headers: {
          'Authorization': await gatewayToken,
          'Content-Type': 'application/x-www-form-urlencoded'
        }));

    final res = LogoutResponse.fromJson(response.data);
    if (res.code == 1) {
      _storage.deleteAll();
      currentUser = '';
      _userInfoStorage.clear();
    }

    return res;
  }

  Future<UserImageResponse> userImg() async {
    final response = await _dio.get(AppConfig.appServiceApis['userImg']!,
        queryParameters:
            UserImageRequest(loginToken: (await loginToken)!).toJson(),
        options: Options(headers: {'Authorization': await gatewayToken}));

    final res = UserImageResponse.fromJson(response.data);

    if (res.code == 1 && res.data?.zp != null) {
      await _userInfoStorage.saveUserImage(res.data!.zp!);
    }

    return res;
  }

  Future<UserInfoResponse> userInfo() async {
    final response = await _dio.get(AppConfig.appServiceApis['userInfo']!,
        queryParameters:
            UserInfoRequest(loginToken: (await loginToken)!).toJson(),
        options: Options(headers: {'Authorization': await gatewayToken}));

    final res = UserInfoResponse.fromJson(response.data);

    if (res.code == 1 && res.data != null) {
      await _userInfoStorage.saveUserInfo(res.data!);
    }
    return res;
  }

  Future<StResponse> refreshSt() async {
    final param = {
      'loginToken': await loginToken,
      'serviceId': '',
      'service': 'https://gateway.lzu.edu.cn:9000/auth/token/logout'
    };

    final response = await _dio.get(AppConfig.appServiceApis['getSt']!,
    queryParameters: param);

    final res = StResponse.fromJson(response.data);
    if (res.code == 1) {
      _storage.write(key: '${currentUser}st', value: res.data);
    }
    return res;
  }

  Future<String?> getSt() async {
    try {
      final res = await refreshSt();
      if (res.code == 1) return res.data;
    } catch (e) {
      log.e(e);
    }
    return null;
  }




}
