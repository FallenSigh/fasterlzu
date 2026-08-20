import 'package:fasterlzu/app_config.dart';
import 'package:fasterlzu/core/logger/logger.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:releasehub_updater/autoupdater.dart';

class AboutPage extends ConsumerStatefulWidget {
  const AboutPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AboutPageState();
}

class _AboutPageState extends ConsumerState<AboutPage> {
  late Future<PackageInfo> _packageInfo;

  @override
  void initState() {
    super.initState();
    _packageInfo = PackageInfo.fromPlatform(); // 获取版本信息
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('关于 FasterLZU'),
      ),
      body: FutureBuilder<PackageInfo>(
        future: _packageInfo,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              PackageInfo packageInfo = snapshot.data!;
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'FasterLZU',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '版本号: ${packageInfo.version}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        AutoUpdater.checkForUpdates();
                      },
                      child: const Text('检查更新'),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      '开源仓库',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () => _launchURL(AppConfig.githubRepoUrl),
                      child: const Text(
                        AppConfig.githubRepoUrl,
                        style: TextStyle(fontSize: 16, color: Colors.blue),
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'CopyRight 2025 FallenSigh. 保留所有权利。',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              );
            } else {
              return const Center(child: Text('获取应用信息失败'));
            }
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  // 打开链接
  void _launchURL(String url) async {
    final uri = Uri.parse(url);
    try {
      launchUrl(uri);
    } catch (e) {
      log.e('unable to launchUrl: $url');
    }
  }
}
