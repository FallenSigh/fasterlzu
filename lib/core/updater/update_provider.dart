import 'package:dio/dio.dart';
import 'package:fasterlzu/app_config.dart';
import 'package:fasterlzu/core/logger/logger.dart';
import 'package:fasterlzu/core/settings/models/settings_model.dart';
import 'package:fasterlzu/core/settings/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_update/flutter_app_update.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:version/version.dart';

final updateProvider = StateNotifierProvider<UpdateNotifier, UpdateState>(
  (ref) => UpdateNotifier(settings: ref.watch(settingsProvider)),
);

class UpdateState {
  final bool isChecking;
  final String? latestVersion;
  final String? downloadUrl;
  final String? releaseNotes;
  final double downloadProgress;
  final bool isDownloading;

  UpdateState({
    this.isChecking = false,
    this.latestVersion,
    this.downloadUrl,
    this.releaseNotes,
    this.downloadProgress = 0.0,
    this.isDownloading = false,
  });

  UpdateState copyWith({
    bool? isChecking,
    String? latestVersion,
    String? downloadUrl,
    String? releaseNotes,
    double? downloadProgress,
    bool? isDownloading,
  }) {
    return UpdateState(
      isChecking: isChecking ?? this.isChecking,
      latestVersion: latestVersion ?? this.latestVersion,
      downloadUrl: downloadUrl ?? this.downloadUrl,
      releaseNotes: releaseNotes ?? this.releaseNotes,
      downloadProgress: downloadProgress ?? this.downloadProgress,
      isDownloading: isDownloading ?? this.isDownloading,
    );
  }
}

class UpdateNotifier extends StateNotifier<UpdateState> {
  UpdateNotifier({required Settings settings})
    : _settings = settings,
      super(UpdateState());

  final _dio = Dio();
  final Settings _settings;

  Future<void> checkForUpdates(
    BuildContext context, {
    bool showErrorDialog = true,
  }) async {
    try {
      log.t('checking updates');
      state = state.copyWith(isChecking: true);
      final packageInfo = await PackageInfo.fromPlatform();
      final currentVersion = Version.parse(packageInfo.version);

      Response? response;

      String url1 = AppConfig.githubApiUrl;
      String url2 = AppConfig.giteeApiUrl;
      if (_settings.preferGitee) {
        (url1, url2) = (url2, url1);
      }

      try {
        response = await _dio.get(url1);
      } catch (e) {
        log.w('$url1请求失败，尝试使用$url2: $e');
        response = await _dio.get(url2);
      }

      final data = response.data;
      final latestVersion = Version.parse(
        data['tag_name'].toString().replaceAll('v', ''),
      );

      log.d('latest: $latestVersion, curr: $currentVersion');
      if (latestVersion > currentVersion) {
        String? apkAssetUrl;
        final assets = data['assets'] as List;
        for (final asset in assets) {
          if (asset['name'].toString().toLowerCase().endsWith('.apk')) {
            apkAssetUrl = asset['browser_download_url'];
            break;
          }
        }

        if (apkAssetUrl != null) {
          state = state.copyWith(
            latestVersion: latestVersion.toString(),
            downloadUrl: apkAssetUrl,
            releaseNotes: data['body'],
            isChecking: false,
          );

          log.d('start download ${state.downloadUrl}');
          UpdateModel model = UpdateModel(
            state.downloadUrl ?? '',
            'fasterlzu.apk',
            'ic_launcher',
            '',
          );
          log.d('installing');
          AzhonAppUpdate.update(model);
        }
      } else {
        state = state.copyWith(isChecking: false);
      }
    } catch (e) {
      log.e('Error checking for updates: $e');
      state = state.copyWith(isChecking: false);
      if (showErrorDialog) {
        showDialog(
          context: context,
          builder:
              (context) => AlertDialog(
                title: const Text('检查更新失败'),
                content: Text('无法连接到更新服务器，请检查网络连接后重试。\n\n错误信息：${e.toString()}'),
                actions: [
                  TextButton(
                    onPressed: () => context.pop(),
                    child: const Text('确定'),
                  ),
                ],
              ),
        );
      }
    }
  }

 
}
