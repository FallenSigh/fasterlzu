import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fasterlzu/app_config.dart';
import 'package:fasterlzu/core/api/app_client.dart';
import 'package:fasterlzu/core/easytong/models/easytong_model.dart';
import 'package:fasterlzu/core/auth/repositories/auth_repository.dart';
import 'package:fasterlzu/core/encryption/md5_crypto.dart';
import 'package:fasterlzu/core/storage/userinfo_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

final easytongRepositoryProvider = Provider<EasytongRepository>((ref) {
  return EasytongRepository(
    dio: ref.watch(appDioProvider),
    storage: ref.watch(userInfoStorageProvider),
    authProvider: ref.watch(authRepositoryProvider),
  );
});

class EasytongRepository {
  final Dio _dio;
  final UserInfoStorage _storage;
  final AuthRepository _authRepository;

  String get currentUser => _authRepository.currentUser;
  String? get etToken => _storage.box.get('EtToken');
  String? get accNum => _storage.box.get('AccNum');

  EasytongRepository({
    required Dio dio,
    required UserInfoStorage storage,
    required AuthRepository authProvider,
  }) : _dio = dio,
       _storage = storage,
       _authRepository = authProvider;

  Future<EtTokenResponse?> exchangeEtToken() async {
    if (_authRepository.currentUser == '') return null;

    String? st = await _authRepository.getSt();
    if (st == null) return null;

    String time = DateFormat('yyyyMMddHHmmss').format(DateTime.now());
    String data = 'Time=$time&St=$st&ContentType=application%2Fjson';

    final response = await _dio.post(
      AppConfig.appApis['etToken']!,
      data: data,
      options: Options(
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
      ),
    );

    final res = EtTokenResponse.fromJson(jsonDecode(response.data));

    if (res.code == 1) {
      _storage.box.put('AccNum', res.accNum);
      _storage.box.put('EtToken', res.token);
    }
    return res;
  }

  Future<String?> getEtToken() async {
    if (etToken == null) {
      exchangeEtToken();
    }
    return etToken;
  }

  Future<String?> getAccNum() async {
    if (accNum == null) {
      exchangeEtToken();
    }
    return accNum;
  }

  Future<void> refresh() async {
    exchangeEtToken();
  }

  Future<GetWalletMoneyResponse?> getWalletMoney() async {
    final token = await getEtToken();
    if (token == null) return null;

    String time = DateFormat('yyyyMMddHHmmss').format(DateTime.now());
    Map<String, String> data = {
      'AccNum': await getAccNum() ?? '',
      'EPID': (await _storage.box.get('epid'))!,
      'Time': time,
    };

    final String sign = MD5Crypto.sign(data);
    data['Sign'] = sign;
    data['ContentType'] = 'application%2Fjson';
    String queryString = Uri(queryParameters: data).query;
    final response = await _dio.post(
      AppConfig.appApis['GetWalletMoney']!,
      options: Options(
        headers: {
          'Authorization': token,
          'Content-Type': 'application/x-www-form-urlencoded',
        },
      ),
      data: queryString,
    );

    GetWalletMoneyResponse r = GetWalletMoneyResponse.fromXml(response.data);
    return r;
  }

  Future<GetAccInfoResponse?> getAccInfo() async {
    final token = await getEtToken();
    if (token == null) return null;

    String time = DateFormat('yyyyMMddHHmmss').format(DateTime.now());
    Map<String, String> data = {
      'AccNum': await getAccNum() ?? '',
      'Time': time,
    };

    final String sign = MD5Crypto.sign(data);
    data['Sign'] = sign;
    data['ContentType'] = 'application/json';
    String queryString = Uri(queryParameters: data).query;

    final response = await _dio.post(
      AppConfig.appApis['GetAccInfo']!,
      options: Options(
        headers: {
          'Authorization': token,
          'Content-Type': 'application/x-www-form-urlencoded',
        },
      ),
      data: queryString,
    );

    GetAccInfoResponse r = GetAccInfoResponse.fromXml(response.data);

    if (r.code == 1) {
      _storage.box.put('CardAccNum', r.cardAccNum);
      _storage.box.put('epid', r.epid);
    }

    return r;
  }

  Future<GetH5QRCodeResponse?> getH5QRCode() async {
    final token = await getEtToken();
    if (token == null) return null;

    String time = DateFormat('yyyyMMddHHmmss').format(DateTime.now());
    Map<String, String> data = {
      'AccNum': await getAccNum() ?? '',
      'Time': time,
    };

    final String sign = MD5Crypto.sign(data);
    data['Sign'] = sign;
    data['ContentType'] = 'application/json';
    String queryString = Uri(queryParameters: data).query;

    final response = await _dio.post(
      AppConfig.appApis['qrCode']!,
      options: Options(
        headers: {
          'Authorization': token,
          'Content-Type': 'application/x-www-form-urlencoded',
        },
      ),
      data: queryString,
    );
    GetH5QRCodeResponse r = GetH5QRCodeResponse.fromJson(
      jsonDecode(response.data),
    );

    if (r.code == 1) {
      _storage.box.put('CardAccNum', r.cardAccNum);
    }

    return r;
  }

  Future<GetOrderByCodeResponse?> getOrderByCode(String authCode) async {
    final token = await getEtToken();
    if (token == null) return null;

    String time = DateFormat('yyyyMMddHHmmss').format(DateTime.now());
    Map<String, String> data = {
      'AccNum': await getAccNum() ?? '',
      'AuthCode': authCode,
      'CardAccNum': _storage.box.get('CardAccNum'),
      'Time': time,
    };

    final String sign = MD5Crypto.sign(data);
    data['Sign'] = sign;
    data['ContentType'] = 'application/json';
    String queryString = Uri(queryParameters: data).query;

    final response = await _dio.post(
      AppConfig.appApis['GetOrderByCode']!,
      options: Options(
        headers: {
          'Authorization': token,
          'Content-Type': 'application/x-www-form-urlencoded',
        },
      ),
      data: queryString,
    );

    GetOrderByCodeResponse r = GetOrderByCodeResponse.fromXml(response.data);
    return r;
  }
}
