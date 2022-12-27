import 'dart:convert';
import 'dart:developer' as developer;

import 'log_level.dart';

class LoggerHelper {
  const LoggerHelper({
    required this.isEnabled,
  });

  final bool isEnabled;

  void info(message) {
    _log(LogLevel.info, message);
  }

  void debug(message) {
    _log(LogLevel.debug, message);
  }

  void warning(message) {
    _log(LogLevel.warning, message);
  }

  void error(message) {
    _log(LogLevel.error, message);
  }

  void _log(LogLevel logLevel, message) {
    if (isEnabled) {
      _stringifyMessage(message).split('\n').forEach(
            (element) => developer.log(
              element,
              name: logLevel.name,
            ),
          );
    }
  }

  String _stringifyMessage(message) {
    final finalMessage = message is Function ? message() : message;
    if (finalMessage is Map || finalMessage is Iterable) {
      final encoder =
          JsonEncoder.withIndent('  ', (object) => object.toString());
      return encoder.convert(finalMessage);
    } else {
      return finalMessage.toString();
    }
  }
}
