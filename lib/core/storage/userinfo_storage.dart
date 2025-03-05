import 'dart:convert';

import 'package:fasterlzu/core/auth/models/auth_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

final userInfoStorageProvider = Provider<UserInfoStorage>((ref) {
  return UserInfoStorage();
});

class UserInfoStorage {
  final box = Hive.box('userInfo');

  Future<void> saveUserInfo(UserInfoData data) async {
    await box.put('userInfo', jsonEncode({
      'xm': data.xm,
      'xykh': data.xykh,
      'xb': data.xb,
      'dwmc': data.dwmc
    }));
  }

  Future<void> saveUserImage(String base64Image) async {
    await box.put('userImage', base64Image);
  }

  Map<String, dynamic>? getUserInfo() {
    return jsonDecode(box.get('userInfo'));
  }

  String? getUserImage() {
    return box.get('userImage');
  }

  Future<void> clear() async {
    await box.clear();
  }
}