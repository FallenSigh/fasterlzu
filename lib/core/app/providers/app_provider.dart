import 'package:fasterlzu/core/app/models/app_model.dart';
import 'package:fasterlzu/core/app/repositories/app_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appProvider = StateNotifierProvider<AppProvider, AppState>((ref) {
  return AppProvider(appRepository: ref.watch(appRepositoryProvider));
});

class AppState {
  final List<AppType>? apps;
  final bool isLoading;

  AppState({this.apps, this.isLoading = false});

  factory AppState.copyWith({
    required List<AppType>? apps,
    bool? isLoading,
  }) {
    return AppState(apps: apps, isLoading: isLoading ?? false);
  }
}

class AppProvider extends StateNotifier<AppState> {
  final AppRepository _appRepository;

  AppProvider({required AppRepository appRepository})
    : _appRepository = appRepository,
      super(AppState()) {
    _initFromCache();
  }

  /// 构造时从缓存恢复(不发起网络请求),保证页面秒开
  Future<void> _initFromCache() async {
    final cached = await _appRepository.getCachedApps();
    if (cached != null && mounted) {
      state = AppState.copyWith(apps: cached);
    }
  }

  /// 打开页面时调用:优先缓存,无缓存才请求网络
  Future<void> load() async {
    if (state.isLoading) return;
    if (state.apps != null) return;

    state = AppState.copyWith(apps: state.apps, isLoading: true);
    final apps = await _appRepository.getApps();
    if (mounted) {
      state = AppState.copyWith(apps: apps, isLoading: false);
    }
  }

  /// 强制刷新(下拉刷新/手动刷新)
  Future<void> refresh() async {
    if (state.isLoading) return;

    state = AppState.copyWith(apps: state.apps, isLoading: true);
    final apps = await _appRepository.getApps(forceRefresh: true);
    if (mounted) {
      state = AppState.copyWith(apps: apps, isLoading: false);
    }
  }

  /// 清空缓存(登出时调用)
  Future<void> clear() async {
    state = AppState();
    await _appRepository.clearCache();
  }
}
