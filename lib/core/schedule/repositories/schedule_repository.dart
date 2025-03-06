import 'package:dio/dio.dart';
import 'package:fasterlzu/app_config.dart';
import 'package:fasterlzu/core/api/appservice_client.dart';
import 'package:fasterlzu/core/auth/providers/auth_provider.dart';
import 'package:fasterlzu/core/auth/providers/auth_state.dart';
import 'package:fasterlzu/core/auth/repositories/auth_repository.dart';
import 'package:fasterlzu/core/schedule/models/schedule_model.dart';
import 'package:fasterlzu/core/storage/schedule_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final scheduleRepositoryProvider = Provider<ApiScheduleRepository>((ref) {
  return ApiScheduleRepository(
    authState: ref.watch(authStateProvider),
    dio: ref.watch(appServiceDioProvider),
    authRepository: ref.watch(authRepositoryProvider),
  );
});

class ApiScheduleRepository {
  // 保证auth在schedule之前加载
  final AuthState _authState;
  final Dio _dio;
  final AuthRepository _authRepository;

  ApiScheduleRepository({
    required AuthState authState,
    required Dio dio,
    required AuthRepository authRepository,
  }) : _authState = authState,
       _dio = dio,
       _authRepository = authRepository;

  Future<ScheduleResponse> getSchedule(int zc) async {
    final param = ScheduleRequest(zc: zc, qsbz: 0).toJson();
    final st = await _authRepository.gatewayToken;
    final response = await _dio.get(
      AppConfig.appServiceApis['schedule']!,
      queryParameters: param,
      options: Options(
        headers: {'Authorization': st, 'Content-Type': 'text/plain'},
      ),
    );
    final res = ScheduleResponse.fromJson(response.data);
    return res;
  }

  Future<XlxxResponse> getXlxx() async {
    final st = await _authRepository.gatewayToken;
    final response = await _dio.post(
      AppConfig.appServiceApis['xlxx']!,
      options: Options(
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
          'Authorization': st,
        },
      ),
    );
    final res = XlxxResponse.fromJson(response.data);
    return res;
  }

  Future<AddScheduleResponse> addSchedule(AddScheduleRequest sc) async {
    final st = await _authRepository.gatewayToken;

    _dio.options.headers.remove('Transfer-Encrypt');
    final response = await _dio.post(
      AppConfig.appServiceApis['addSchedule']!,
      data: sc.toJson(),
      options: Options(
        headers: {
          'Authorization': st,
          'Content-Type': 'application/json;charset=UTF-8',
        },
      ),
    );
    _dio.options.headers['Transfer-Encrypt'] = 'true';

    final res = AddScheduleResponse.fromJson(response.data);
    return res;
  }

  Future<DelScheduleResponse> delSchedule(String kch) async {
    final st = await _authRepository.gatewayToken;

    _dio.options.headers.remove('Transfer-Encrypt');
    final response = await _dio.post(
      AppConfig.appServiceApis['delSchedule']!,
      queryParameters: {'kch': kch},
      data: '{}',
      options: Options(headers: {'Authorization': st}),
    );
    _dio.options.headers['Transfer-Encrypt'] = 'true';

    final res = DelScheduleResponse.fromJson(response.data);
    return res;
  }
}

final cachedScheduleRepositoryProvider = Provider<CachedScheduleRepository>((
  ref,
) {
  return CachedScheduleRepository(storage: ref.watch(scheduleStorageProvider));
});

class CachedScheduleRepository {
  final ScheduleStorage _storage;

  CachedScheduleRepository({required ScheduleStorage storage})
    : _storage = storage;

  Future<List<CourseInfo>?> getSchedule(int zc) async {
    return _storage.getSchedule(zc);
  }

  Future<void> saveSchedule(int zc, List<CourseInfo> schedule) async {
    await _storage.saveSchedule(zc, schedule);
  }

  Future<XlxxData?> getXlxx() async {
    return _storage.getXlxx();
  }

  Future<void> saveXlxx(XlxxData xlxx) async {
    await _storage.saveXlxx(xlxx);
  }
}
