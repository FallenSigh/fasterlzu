import 'dart:convert';

import 'package:fasterlzu/core/logger/logger.dart';
import 'package:fasterlzu/core/task/models/task_model.dart';
import 'package:hive/hive.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final taskStorageProvider = Provider<TaskStorage>((ref){
  return TaskStorage();
});

class TaskStorage {
  final box = Hive.box('task');

  List<Task> taskList = [
    Task(name: 'test', endTime: '20250221', isUrgent: true, isCompleted: false),
    Task(name: 'test2', endTime: '20250221', isUrgent: true, isCompleted: true)
  ];

  Future<void> updateTasks() async {
    try {
      final jsonList = taskList.map((classInfo) => classInfo.toJson()).toList();
      final jsonString = jsonEncode(jsonList);
      await box.put('tasks', jsonString);
    } catch (e) {
      log.e('保存任务数据失败', e);
      rethrow;
    }
  }

  Future<void> addTask(Task task) async {
    taskList.add(task);
    updateTasks();
  }

  Future<void> removeTask(String taskname) async {
    for (var task in taskList) {
      if (task.name == taskname) {
        taskList.remove(task);
        break;
      }
    }
  }

  List<Task>? getTasks() {
    try {
      final jsonString = box.get('tasks') as String?;
      if (jsonString == null) return null;

      final jsonList = jsonDecode(jsonString) as List;
      taskList = jsonList
          .map((item) => Task.fromJson(Map<String, dynamic>.from(item)))
          .toList();
      return taskList;
    } catch (e) {
      log.e('读取任务数据失败', e);
      return null;
    }
  }
}