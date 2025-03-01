import 'package:dio/dio.dart';
import 'package:fasterlzu/core/auth/providers/auth_state.dart';
import 'package:fasterlzu/core/auth/repositories/auth_repository.dart';
import 'package:fasterlzu/core/logger/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authStateProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier(
    repository: ref.watch(authRepositoryProvider),
  );
});

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthRepository _repository;

  AuthNotifier({required AuthRepository repository})
    : _repository = repository, super(const AuthState.initial()) { init(); }

  Future<void> init() async {
    state = const AuthState.loggingIn();
    try {
      final response = await _repository.cachedLogin();
      if (response != null && response.code == 1) {
        await Future.wait([
          _repository.userImg(),
          _repository.userInfo()
        ]);
        state = const AuthState.authenticated();

        log.i('[AuthNotifier] 缓存登录成功');
      } else {
        state = const AuthState.unauthenticated();
      }
    } catch (e) {
      log.i('[AuthNotifier] 缓存登录失败');
      state = const AuthState.unauthenticated();
    }
  }

  Future<void> login(String username, String password) async {
    state = const AuthState.loggingIn();

    try {
      final response = await _repository.login(username, password);

      if (response.code == 1) {
        // 登录成功
        await Future.wait([
          _repository.userImg(),
          _repository.userInfo()
        ]);

        state = AuthState.authenticated();

        log.i('[AuthNotifier] 账号密码登录成功');
      } else {
        state = AuthState.error(response.message);
      }

    } on DioException catch (e) {
      state = AuthState.error(e.message ?? '登录失败');
      log.i('[AuthNotifier] 账号密码登录失败');
    }
  }

  Future<void> logout() async {
    try {
      final response = await _repository.logout();
      if (response.code == 1) {
        state = const AuthState.unauthenticated();
      } else {
        state = AuthState.error(response.message);
      }
    } on DioException catch (e) {
      state = AuthState.error(e.message ?? '退出登录失败');
    }
  }

}