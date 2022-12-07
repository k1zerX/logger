import 'dart:async';

import 'package:meta/meta.dart';

abstract class Logger {
  const Logger();

  // TODO(k1zerX): rename message to entry
  FutureOr<void> log(Object? message);

  @mustCallSuper
  FutureOr<void> dispose() {}
}