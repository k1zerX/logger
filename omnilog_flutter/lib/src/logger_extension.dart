part of omnilog_flutter;

extension LoggerExtension on BuildContext {
  Logger logger() => LoggerWidget.of(this)?.logger ?? NullLogger();

  void log(Object? message) => logger().log(message);
}