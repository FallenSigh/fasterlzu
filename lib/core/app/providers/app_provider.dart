import 'dart:convert';

import 'package:fasterlzu/core/app/models/app_model.dart';
import 'package:fasterlzu/core/app/repositories/app_repository.dart';
import 'package:fasterlzu/core/logger/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

final appProvider = StateNotifierProvider<AppProvider, AppState>((ref) {
  return AppProvider(appRepository: ref.watch(appRepositoryProvider));
});

class AppState {
  final List<AppType>? apps;

  AppState({this.apps});

  factory AppState.copyWith({required List<AppType>? apps}) {
    return AppState(apps: apps);
  }
}

class AppProvider extends StateNotifier<AppState> {
  final AppRepository _appRepository;

  AppProvider({required AppRepository appRepository})
    : _appRepository = appRepository,
      super(AppState()) { refresh(); }

  Future<void> refresh() async {
    final apps = await _appRepository.getApps();
    if (apps != null) {
      state = AppState.copyWith(apps: apps);
    }
  }

 
}
