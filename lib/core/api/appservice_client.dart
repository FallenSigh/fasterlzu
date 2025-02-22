import 'dart:convert';
import 'package:fasterlzu/app_config.dart';
import 'package:fasterlzu/core/encryption/aes_crypto.dart';
import 'package:fasterlzu/core/logger/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';

final appServiceDioProvider = Provider<Dio>((ref) {
  final dio = Dio(BaseOptions(
    baseUrl: AppConfig.appServiceBaseUrl,
    headers: AppConfig.appServiceHeaders,
    connectTimeout: Duration(seconds: 3),
    receiveTimeout: Duration(seconds: 3),
    sendTimeout: Duration(seconds: 3),
    // 关闭dio根据"content-type"的自动解析功能
    // 在本项目中，json数据经过加密后再发送
    // 如果不关闭，dio会尝试解析加密的数据，导致错误
    responseType: ResponseType.plain
  ));

  dio.interceptors.add(EncryptInterceptor(ref));

  return dio;
});

class EncryptInterceptor extends Interceptor {
  final Ref _ref;
  
  EncryptInterceptor(this._ref);

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {

    if (response.data is String) {
      try {
        response.data = jsonDecode(response.data);
      } catch (e) {
        response.data = jsonDecode(AESCrypto.decrypt(response.data)!);
        log.t('[Dio Interceptor] 解析原数据失败，尝试解析解码数据');
      }
    }

    super.onResponse(response, handler);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.data is Map && options.headers['Transfer-Encrypt'] == 'true') {
      String plainText = jsonEncode(options.data);
      options.data = AESCrypto.encrypt(plainText);
    }

    super.onRequest(options, handler);
  }
}