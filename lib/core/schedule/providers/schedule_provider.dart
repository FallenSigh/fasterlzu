import 'package:fasterlzu/core/schedule/models/schedule_model.dart';
import 'package:fasterlzu/core/schedule/repositories/schedule_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final scheduleProvider = StateNotifierProvider<ScheduleNotifier, ScheduleState>((ref) {
  return ScheduleNotifier(
    apiRepository: ref.watch(scheduleRepositoryProvider),
    cachedRepository: ref.watch(cachedScheduleRepositoryProvider),
  );
});

class ScheduleState {
  final bool isLoading;
  final String? error;
  final String? successMessage;
  final List<CourseInfo>? schedule;
  final List<CourseInfo>? scheduleCurrentWeek;
  final XlxxData? xlxx;
  final int currentWeek;

  ScheduleState({
    this.isLoading = false,
    this.error,
    this.successMessage,
    this.schedule,
    this.scheduleCurrentWeek,
    this.xlxx,
    this.currentWeek = 1,
  });

  ScheduleState copyWith({
    bool? isLoading,
    String? error,
    String? successMessage,
    List<CourseInfo>? schedule,
    List<CourseInfo>? scheduleCurrentWeek,
    XlxxData? xlxx,
    int? currentWeek,
  }) {
    return ScheduleState(
      isLoading: isLoading ?? this.isLoading,
      error: error,
      successMessage: successMessage,
      schedule: schedule ?? this.schedule,
      xlxx: xlxx ?? this.xlxx,
      currentWeek: currentWeek ?? this.currentWeek,
      scheduleCurrentWeek: scheduleCurrentWeek ?? this.scheduleCurrentWeek
    );
  }
}

class ScheduleNotifier extends StateNotifier<ScheduleState> {
  final ApiScheduleRepository _apiRepository;
  final CachedScheduleRepository _cachedRepository;

  ScheduleNotifier({
    required ApiScheduleRepository apiRepository,
    required CachedScheduleRepository cachedRepository,
  })  : _apiRepository = apiRepository,
        _cachedRepository = cachedRepository,
        super(ScheduleState()) { init(); }

  Future<void> init() async {
    state = state.copyWith(isLoading: true);
    try {
      // 先尝试获取缓存的学期信息
      final cachedXlxx = await _cachedRepository.getXlxx();

      if (cachedXlxx != null) {
        state = state.copyWith(xlxx: cachedXlxx);
        final currentWeek = int.parse(cachedXlxx.dqrqszzc ?? '1');
        await loadSchedule(currentWeek);
        await loadScheduleCurrentWeek();
      } else {
        await refreshXlxx();
        await loadScheduleCurrentWeek();
      }
    } catch (e) {
      if (!mounted) return;
      state = state.copyWith(error: e.toString(), isLoading: false);
    }
  }

  Future<void> loadScheduleCurrentWeek() async {
    try {
      int week = int.parse(state.xlxx!.dqrqszzc!);
      final cachedSchedule = await _cachedRepository.getSchedule(week);
      if (cachedSchedule != null) {
        state = state.copyWith(scheduleCurrentWeek: cachedSchedule);
        return;
      }

      final response = await _apiRepository.getSchedule(week);
      if (response.code == 1) {
        await _cachedRepository.saveSchedule(week, response.data ?? []);
        state = state.copyWith(scheduleCurrentWeek: response.data);
      } else {
        state = state.copyWith(error: response.message);
      }
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }

  Future<void> refreshXlxx() async {
    try {
      final xlxx = await _apiRepository.getXlxx();
      if (xlxx.code == 1 && xlxx.data != null) {
        await _cachedRepository.saveXlxx(xlxx.data!);
        state = state.copyWith(xlxx: xlxx.data);
        final currentWeek = int.parse(xlxx.data?.dqrqszzc ?? '1');
        await loadSchedule(currentWeek);
      }
    } catch (e) {
      state = state.copyWith(error: e.toString(), isLoading: false);
    }
  }

  Future<void> refreshSchedule(int week) async {
    try {
      final response = await _apiRepository.getSchedule(week);
      if (response.code == 1) {
        state = state.copyWith(schedule: response.data, isLoading: false);
        _cachedRepository.saveSchedule(week, response.data ?? []);
      } else {
        state = state.copyWith(error: response.message, isLoading: false);
      }
    } catch (e) {
      state = state.copyWith(error: e.toString(), isLoading: false);
    }
  }

  Future<void> loadSchedule(int week) async {
    state = state.copyWith(isLoading: true, currentWeek: week);
    try {
      // 先尝试从缓存加载
      final cachedSchedule = await _cachedRepository.getSchedule(week);
      if (cachedSchedule != null) {
        state = state.copyWith(schedule: cachedSchedule, isLoading: false);
        return;
      }
      // 缓存没有则从网络加载
      final response = await _apiRepository.getSchedule(week);
      if (response.code == 1) {
        await _cachedRepository.saveSchedule(week, response.data ?? []);
        state = state.copyWith(schedule: response.data, isLoading: false);
      } else {
        state = state.copyWith(error: response.message, isLoading: false);
      }
    } catch (e) {
      state = state.copyWith(error: e.toString(), isLoading: false);
    }
  }

  Future<void> addSchedule(AddScheduleData scheduleData) async {
    try {
      state = state.copyWith(isLoading: true, error: null, successMessage: null);
      
      final request = AddScheduleRequest(kclsit: [scheduleData]);
      final response = await _apiRepository.addSchedule(request);

      if (response.code == 1) {
        await refreshSchedule(state.currentWeek);
        state = state.copyWith(
          isLoading: false,
          successMessage: response.message
        );
      } else {
        state = state.copyWith(
          isLoading: false,
          error: '添加失败: ${response.message}'
        );
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: '添加失败: $e'
      );
    }
  }

  Future<void> deleteSchedule(String kch) async {
    try {
      state = state.copyWith(isLoading: true, error: null, successMessage: null);
      
      final response = await _apiRepository.delSchedule(kch);
      
      if (response.code == 1) {
        await refreshSchedule(state.currentWeek);
        state = state.copyWith(
          isLoading: false,
          successMessage: response.message
        );
      } else {
        state = state.copyWith(
          isLoading: false,
          error: '删除失败: ${response.message}'
        );
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: '删除失败: $e'
      );
    }
  }

  void clearMessage() {
    state = state.copyWith(
      error: null,
      successMessage: null
    );
  }
}