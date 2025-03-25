import 'package:fasterlzu/core/settings/models/settings_model.dart';
import 'package:fasterlzu/core/storage/settings_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final settingsStorageProvider = Provider((ref) => SettingsStorage());

final settingsProvider = StateNotifierProvider<SettingsNotifier, Settings>(
  (ref) => SettingsNotifier(ref.watch(settingsStorageProvider)),
);

class SettingsNotifier extends StateNotifier<Settings> {
  final SettingsStorage _storage;

  SettingsNotifier(this._storage) : super(const Settings()) {
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    state = await _storage.getSettings();
  }

  Future<void> updateSettings(Settings settings) async {
    state = settings;
    await _storage.saveSettings(settings);
  }

  Future<void> toggleAutoCheckUpdate() async {
    final newSettings = state.copyWith(autoCheckUpdate: !state.autoCheckUpdate);
    await updateSettings(newSettings);
  }

  Future<void> togglePreferGitee() async {
    final newSettings = state.copyWith(preferGitee: !state.preferGitee);
    await updateSettings(newSettings);
  }
}