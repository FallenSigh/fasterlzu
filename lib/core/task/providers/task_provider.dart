import 'package:fasterlzu/core/storage/task_storage.dart';
import 'package:fasterlzu/core/task/models/task_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final taskProvider = StateNotifierProvider<TaskNotifier, TaskState>((ref){
  return TaskNotifier(storage: ref.watch(taskStorageProvider));
});

class TaskState {
  bool isLoading;
  final String? error;
  final String? successMessage;
  List<Task>? tasks;

  TaskState({
    this.isLoading = false,
    this.error,
    this.successMessage,
    this.tasks
  });

  TaskState copyWith({
    final bool? isLoading,
    final String? error,
    final String? successMessage,
    List<Task>? tasks
  }) {
    return TaskState(
      isLoading: isLoading ?? this.isLoading,
      error: error,
      successMessage: successMessage,
      tasks: tasks ?? []
    );
  }
}

class TaskNotifier extends StateNotifier<TaskState> {
  final TaskStorage _storage;

  TaskNotifier({required TaskStorage storage})
  : _storage = storage, super(TaskState()) { _init(); }
  
  Future<void> _init() async {
    updateTasks();
  }

  Future<void> updateTasks() async {
    state = state.copyWith(isLoading: true);

    // for test
    List<Task>? tasks = [
      Task(name: 'test', endTime: '20250221', isUrgent: true, isCompleted: false),
      Task(name: 'test2', endTime: '20250221', isUrgent: true, isCompleted: true)
    ];

    if (tasks != null) {
      state = state.copyWith(tasks: tasks, isLoading: false);
    } else {
      state = state.copyWith(error: '读取任务失败', isLoading: false);
    }
  }

  Future<void> addTask(Task task) async {
    _storage.addTask(task);
  }

  Future<void> removeTask(String taskName) async {
    _storage.removeTask(taskName);
  }

  void clearMessage() {
    state = state.copyWith(error: null, successMessage: null);
  }
}