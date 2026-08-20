import 'dart:async';

import 'package:dio/dio.dart';
import 'package:fasterlzu/core/auth/models/auth_model.dart';
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
    log.t("[AuthNotifier] initing");
    state = const AuthState.loggingIn();

    // 自动登录:最多重试 3 次(间隔 1 秒,应对临时网络/服务器故障)
    const MAX_ATTEMPTS = 3;
    LoginResponse? response;
    for (int attempt = 1; attempt <= MAX_ATTEMPTS; attempt++) {
      try {
        response = await _repository.cachedLogin();
        if (response != null && response.code == 1) {
          break;
        }
        log.i('[AuthNotifier] 缓存登录第 $attempt 次失败: ${response?.message ?? "未知错误"}');
      } catch (e) {
        log.i('[AuthNotifier] 缓存登录第 $attempt 次出错: $e');
      }
      if (attempt < MAX_ATTEMPTS) {
        await Future.delayed(const Duration(seconds: 1));
      }
    }

    if (response != null && response.code == 1) {
      // 立即置为已认证,用户信息/头像在后台异步刷新,不阻塞启动
      state = const AuthState.authenticated();
      unawaited(_refreshUserData());
      log.i('[AuthNotifier] 缓存登录成功');
    } else {
      state = const AuthState.unauthenticated();
    }
  }

  /// 后台刷新用户信息与头像(失败不阻塞登录状态)
  Future<void> _refreshUserData() async {
    try {
      await Future.wait([
        _repository.userImg(),
        _repository.userInfo()
      ]);
    } catch (e) {
      log.i('[AuthNotifier] 用户信息后台刷新失败: $e');
    }
  }

  Future<void> login(String username, String password) async {
    state = const AuthState.loggingIn();

    try {
      final response = await _repository.login(username, password);

      if (response.code == 1) {
        // 登录成功:立即认证,用户信息/头像后台刷新
        state = AuthState.authenticated();
        unawaited(_refreshUserData());
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