import 'dart:io';
import 'package:logger/logger.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';

class AppLogger {
  static final AppLogger _instance = AppLogger._internal();
  late final Logger _logger;

  factory AppLogger() {
    return _instance;
  }

  AppLogger._internal() {
    _logger = Logger(
      printer: PrettyPrinter(
        methodCount: 2, // 显示的调用栈层数
        errorMethodCount: 8, // 错误时显示更多的调用栈
        lineLength: 120,
        colors: true, // 在控制台使用颜色
        printEmojis: true, // 使用表情符号
      ),
      output: MultiOutputLogger(), // 同时输出到控制台和文件
      level: kDebugMode ? Level.trace : Level.warning, // 在发布模式下限制日志级别
    );
  }

  void t(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.t('[trace] $message', error: error, stackTrace: stackTrace);
  }

  void d(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.d('[debug] $message', error: error, stackTrace: stackTrace);
  }

  void i(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.i('[info] $message', error: error, stackTrace: stackTrace);
  }

  void w(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.w('[warning] $message', error: error, stackTrace: stackTrace);
  }

  void e(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.e('[error] $message', error: error, stackTrace: stackTrace);
  }

  void f(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.f('[fatal] $message', error: error, stackTrace: stackTrace);
  }
}

// 全局单例实例
final log = AppLogger();

/// **文件日志记录器**
/// 这个类用于将日志写入文件
class FileLogPrinter extends LogOutput {
  File? _logFile; // 改成可空类型

  FileLogPrinter() {
    _initLogFile();
  }

  Future<void> _initLogFile() async {
    final directory = await getApplicationDocumentsDirectory();
    _logFile = File('${directory.path}/app_logs.txt');

    if (!await _logFile!.exists()) {
      await _logFile!.create();
    }
  }

  @override
  void output(OutputEvent event) async {
    if (_logFile == null) {
      debugPrint('Log file is not initialized yet.');
      return;
    }

    final logMessage = event.lines.join('\n');
    await _logFile!.writeAsString('$logMessage\n', mode: FileMode.append);
  }
}


/// **多输出日志器**
/// 这个类用于将日志同时输出到控制台和文件
class MultiOutputLogger extends LogOutput {
  final ConsoleOutput _consoleOutput = ConsoleOutput();
  final FileLogPrinter _fileOutput = FileLogPrinter();

  @override
  void output(OutputEvent event) {
    _consoleOutput.output(event); // 输出到控制台
    _fileOutput.output(event); // 输出到文件
  }
}
