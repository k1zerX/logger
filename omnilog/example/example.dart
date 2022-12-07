import 'dart:io';

import 'package:omnilog/omnilog.dart';

Object? addTimestamp(Object? message) => '${DateTime.now().toIso8601String()}: $message';

bool isA<T>(Object? message) => message is T;

bool isNotA<T>(Object? message) => message is! T;

Logger initLogger(File logFile, [bool isDebug = true]) => MultiLogger([
      TransformLogger.pass(FileLogger(logFile), addTimestamp),
      if (isDebug) ...[
        FilterLogger(IOLogger(stdout), (message) => isNotA<Error>(message)),
        FilterLogger(IOLogger(stderr), (message) => isA<Error>(message)),
      ],
    ]);

void startLogging(Logger logger) {
  void log() {
    logger
      ..log(0.5)
      ..log('Hello, world!')
      ..log(null)
      ..log(UnimplementedError())
      ..log(logger);

    Future.delayed(Duration(seconds: 1), log);
  }

  log();
}

class TestModule {
  final Logger logger;

  TestModule(this.logger) {
    startLogging(logger);
  }
}

Object? Function(Object?) addLabel(String label) {
  String func(Object? message) => '$label $message';

  return func;
}

void main(List<String> arguments) {
  final logger = initLogger(File('log.txt'));

  TestModule(TransformLogger.pass(logger, addLabel('[Module A]')));
  TestModule(TransformLogger.pass(logger, addLabel('[Module B]')));
  TestModule(TransformLogger.pass(logger, addLabel('[Module C]')));
}
