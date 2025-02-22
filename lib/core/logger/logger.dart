import 'package:logger/logger.dart';
import 'package:flutter/foundation.dart';

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
        printTime: true, // 显示时间戳
      ),
      // 在发布模式下只显示警告和错误
      level: kDebugMode ? Level.trace : Level.warning,
    );
  }

  void t(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.t('[trace] {$message}', error: error, stackTrace: stackTrace);
  }

  // 调试信息
  void d(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.d('[debug] {$message}', error: error, stackTrace: stackTrace);
  }

  // 信息
  void i(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.i('[info] {$message}', error: error, stackTrace: stackTrace);
  }

  // 警告
  void w(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.w('[warning] {$message}', error: error, stackTrace: stackTrace);
  }

  // 错误
  void e(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.e('[error] {$message}', error: error, stackTrace: stackTrace);
  }

  // 严重错误
  void f(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.f('[fatal] {$message}', error: error, stackTrace: stackTrace);
  }
}

// 全局单例实例
final log = AppLogger();