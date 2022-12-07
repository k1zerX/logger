part of 'null.dart';

class NullLogger extends Logger {
  const NullLogger._();

  static const _singleton = NullLogger._();
  factory NullLogger() => _singleton;

  @override
  void log(Object? message) {}
}