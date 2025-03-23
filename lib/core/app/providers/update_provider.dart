import 'package:dio/dio.dart';
import 'package:fasterlzu/app_config.dart';
import 'package:fasterlzu/core/logger/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:version/version.dart';

final updateProvider = StateNotifierProvider<UpdateNotifier, UpdateState>(
  (ref) => UpdateNotifier(),
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
  UpdateNotifier() : super(UpdateState());

  final _dio = Dio();

  Future<void> checkForUpdates(BuildContext context) async {
    try {
      log.t('checking updates');
      state = state.copyWith(isChecking: true);
      final packageInfo = await PackageInfo.fromPlatform();
      final currentVersion = Version.parse(packageInfo.version);

      final response = await _dio.get(AppConfig.giteeRepoUrl);
      final data = response.data;
      final latestVersion = Version.parse(data['tag_name'].toString().replaceAll('v', ''));

      log.d('latest: $latestVersion, curr: $currentVersion');
      if (latestVersion > currentVersion) {
        String? apkAssetUrl;
        for (final asset in data['assets']) {
          if (asset['name'].toString().endsWith('.apk')) {
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

          _showUpdateDialog(context);
        }
      }
    } catch (e) {
      log.e('Error checking for updates: $e');
    } finally {
      state = state.copyWith(isChecking: false);
    }
  }

  void _showUpdateDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('发现新版本'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('最新版本: ${state.latestVersion}'),
            const SizedBox(height: 8),
            const Text('更新内容:'),
            Text(state.releaseNotes ?? ''),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: const Text('稍后再说'),
          ),
          TextButton(
            onPressed: () {
              launchUrl(Uri.parse(AppConfig.giteeRepoUrl + '/releases/latest'));
              context.pop();
              },
            child: const Text('立即更新'),
          ),
        ],
      ),
    );
  }


}