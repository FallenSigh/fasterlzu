import 'dart:convert';

import 'package:fasterlzu/core/settings/models/settings_model.dart';
import 'package:hive/hive.dart';

class SettingsStorage {
  static const String _boxName = 'settings';
  static const String _settingsKey = 'user_settings';

  Future<void> init() async {
    await Hive.openBox(_boxName);
  }

  Future<Settings> getSettings() async {
    final box = Hive.box(_boxName);
    final jsonStr = box.get(_settingsKey);
    if (jsonStr != null) {
      return Settings.fromJson(jsonDecode(jsonStr));
    }
    return const Settings();
  }

  Future<void> saveSettings(Settings settings) async {
    final box = Hive.box(_boxName);
    await box.put(_settingsKey, jsonEncode(settings.toJson()));
  }
}