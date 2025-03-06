import 'dart:convert';

import 'package:fasterlzu/core/logger/logger.dart';
import 'package:fasterlzu/core/schedule/models/schedule_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

final scheduleStorageProvider = Provider<ScheduleStorage>((ref) {
  return ScheduleStorage();
});

class ScheduleStorage {
  final box = Hive.box('schedule');

  Future<void> saveSchedule(int zc, List<CourseInfo> schedule) async {
    try {
      final jsonList = schedule.map((classInfo) => classInfo.toJson()).toList();
      final jsonString = jsonEncode(jsonList);
      await box.put('schedule_$zc', jsonString);
    } catch (e) {
      log.e('保存课程表数据失败', e);
      rethrow;
    }
  }

  Future<void> saveXlxx(XlxxData xlxx) async {
    await box.put('xlxx', jsonEncode(xlxx.toJson()));
  }

  List<CourseInfo>? getSchedule(int zc) {
    try {
      final jsonString = box.get('schedule_$zc') as String?;
      if (jsonString == null) return null;

      final jsonList = jsonDecode(jsonString) as List;
      return jsonList
          .map((item) => CourseInfo.fromJson(Map<String, dynamic>.from(item)))
          .toList();
    } catch (e) {
      log.e('读取课程表数据失败', e);
      return null;
    }
  }

  XlxxData? getXlxx() {
    String? xlxx = box.get('xlxx');
    if (xlxx == null) return null;
    Map<String, dynamic> data = jsonDecode(xlxx);
    return XlxxData.fromJson(data);
  }

  Future<void> clear() async {
    await box.clear();
  }
}