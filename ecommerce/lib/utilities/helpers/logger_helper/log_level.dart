enum LogLevel {
  info,
  debug,
  warning,
  error,
}

extension LogLevelExtension on LogLevel {
  String get name {
    switch (this) {
      case LogLevel.info:
        return 'INFO';
      case LogLevel.debug:
        return 'DEBUG';
      case LogLevel.warning:
        return 'WARNING';
      case LogLevel.error:
        return 'ERROR';
    }
  }
}
