part of 'multi.dart';

class MultiLogger extends Logger {
  final Iterable<Logger> _loggers;

  const MultiLogger(this._loggers);

  @override
  FutureOr<void> log(Object? message) async {
    final tasks = [
      for (final logger in _loggers)
        logger.log(message),
    ];

    for (final task in tasks) {
      await task;
    }
  }
}
