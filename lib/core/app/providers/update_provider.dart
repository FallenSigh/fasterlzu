import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fasterlzu/app_config.dart';
import 'package:fasterlzu/core/logger/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider/path_provider.dart';
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
      state = state.copyWith(isChecking: true);
      final packageInfo = await PackageInfo.fromPlatform();
      final currentVersion = Version.parse(packageInfo.version);

      final response = await _dio.get(AppConfig.githubApiUrl);
      final data = response.data;
      final latestVersion = Version.parse(data['tag_name'].toString().replaceAll('v', ''));

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
            onPressed: () => Navigator.pop(context),
            child: const Text('稍后再说'),
          ),
          TextButton(
            onPressed: () => _startDownload(context),
            child: const Text('立即更新'),
          ),
        ],
      ),
    );
  }

  Future<void> _startDownload(BuildContext context) async {
    try {
      state = state.copyWith(isDownloading: true);
      final dir = await getExternalStorageDirectory();
      if (dir == null) return;

      final savePath = '${dir.path}/fasterlzu_update.apk';
      await _dio.download(
        state.downloadUrl!,
        savePath,
        onReceiveProgress: (received, total) {
          if (total != -1) {
            state = state.copyWith(
              downloadProgress: received / total,
            );
          }
        },
      );

      if (Platform.isAndroid) {
        final uri = Uri.file(savePath);
        await launchUrl(
          uri,
          mode: LaunchMode.externalApplication,
        );
      }
    } catch (e) {
      log.e('Error downloading update: $e');
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('下载更新失败，请稍后重试')),
        );
      }
    } finally {
      state = state.copyWith(isDownloading: false);
    }
  }
}