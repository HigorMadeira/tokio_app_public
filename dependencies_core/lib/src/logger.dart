// ignore_for_file: unused_local_variable, prefer_typing_uninitialized_variables

import 'package:dependencies_core/src/i_logger.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart' as log;

class ProductionFilter extends log.LogFilter {
  @override
  bool shouldLog(log.LogEvent event) {
    return true;
  }
}

class Logger implements ILogger {
  late final _logger;
  final List<String> messages = [];

  Logger(this.releaseExceptionCatcher) {
    var release = true;
    assert(() {
      release = false;
      return true;
    }());
    _logger = log.Logger(filter: ProductionFilter());
  }

  final Function(dynamic message, {dynamic hint, StackTrace? stackTrace})?
      releaseExceptionCatcher;
  @override
  void debug(dynamic message, [dynamic error, StackTrace? stackTrace]) =>
      kDebugMode ? _logger.d(message, error, stackTrace) : null;

  @override
  void error(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    if (kDebugMode) {
      _logger.e(message, error, stackTrace);
    } else if (kReleaseMode && releaseExceptionCatcher != null) {
      releaseExceptionCatcher!(
        error,
        hint: message,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  void info(dynamic message, [dynamic error, StackTrace? stackTrace]) =>
      kDebugMode ? _logger.i(message, error, stackTrace) : null;

  @override
  void warning(dynamic message, [dynamic error, StackTrace? stackTrace]) =>
      kDebugMode ? _logger.w(message, error, stackTrace) : null;

  @override
  void append(String message) => messages.add(message);

  @override
  void closeAppend() {
    info(messages.join('\n'));
    messages.clear();
  }
}
