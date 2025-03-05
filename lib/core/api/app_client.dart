import 'package:dio/dio.dart';
import 'package:fasterlzu/app_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appDioProvider = Provider<Dio>((ref){
  final dio = Dio(BaseOptions(
    baseUrl: AppConfig.appBaseUrl,
    headers: AppConfig.appHeaders,
    connectTimeout: Duration(seconds: 3),
    receiveTimeout: Duration(seconds: 3),
    sendTimeout: Duration(seconds: 3),
  ));
  return dio;
});