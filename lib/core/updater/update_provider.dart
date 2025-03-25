import 'package:dio/dio.dart';
import 'package:fasterlzu/app_config.dart';
import 'package:fasterlzu/core/logger/logger.dart';
import 'package:fasterlzu/core/settings/models/settings_model.dart';
import 'package:fasterlzu/core/settings/providers/settings_provider.dart';
import 'package:flutter/material.dart';
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

  UpdateState({
    this.isChecking = false,
    this.latestVersion,
    this.downloadUrl,
    this.releaseNotes,
  });

  UpdateState copyWith({
    bool? isChecking,
    String? latestVersion,
    String? downloadUrl,
    String? releaseNotes,
  }) {
    return UpdateState(
      isChecking: isChecking ?? this.isChecking,
      latestVersion: latestVersion ?? this.latestVersion,
      downloadUrl: downloadUrl ?? this.downloadUrl,
      releaseNotes: releaseNotes ?? this.releaseNotes,
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

      try {
        response = await _dio.get(AppConfig.githubApiUrl);
      } catch (e) {
        log.w('github API请求失败: $e');
      }

      final data = response!.data;
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
          log.d('showing dialog');
          _showUpdateDialog(context);
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

  void _showUpdateDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder:
          (context) => AlertDialog(
            title: const Text('发现新版本'),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('最新版本: ${state.latestVersion}'),
                  const SizedBox(height: 8),
                  const Text(
                    '更新内容:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    state.releaseNotes ?? '',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            actions: [
                TextButton(
                  onPressed: () => context.pop(),
                  child: const Text('稍后再说'),
                ),
                TextButton(
                  onPressed: () {
                    final url = state.downloadUrl;
                    if (url != null) {
                      launchUrl(Uri.parse(url));
                    } else {
                      launchUrl(
                        Uri.parse(AppConfig.githubRepoUrl + '/releases/latest'),
                      );
                    }
                  },
                  child: const Text('前往Github下载'),
                ),
              ],
          ),
    );
  }
}
