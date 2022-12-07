part of 'sink.dart';

class SinkLogger extends Logger {
  final Sink<Object?> _sink;

  const SinkLogger(this._sink);

  @override
  void log(Object? message) =>
    _sink.add(message);
}
