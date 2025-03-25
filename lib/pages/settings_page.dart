import 'package:fasterlzu/core/settings/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsProvider);
    final settingsNotifier = ref.read(settingsProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('设置'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('自动检查更新'),
            subtitle: const Text('每次启动应用时自动检查更新'),
            trailing: Switch(
              value: settings.autoCheckUpdate,
              onChanged: (value) => settingsNotifier.toggleAutoCheckUpdate(),
            ),
          ),
          ListTile(
            title: const Text('优先使用GitHub源'),
            subtitle: const Text('切换更新源（GitHub/Gitee）'),
            trailing: Switch(
              value: settings.preferGitee,
              onChanged: (value) => settingsNotifier.togglePreferGitee(),
            ),
          ),
        ],
      ),
    );
  }
}