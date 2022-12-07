part of 'queue.dart';

// TODO(k1zerX): remove
class QueueLogger extends ProxyLogger {
  final Queue<Object?> _queue;

  QueueLogger(Logger logger) : _queue = Queue(), super(logger);

  @override
  void log(Object? message) => _queue.push(message);

  FutureOr<void> flush() async {
    while (_queue.isNotEmpty) {
      final message = _queue.pop();
      // TODO(k1zerX): use scheduler
      await super.log(message);
    }
  }
}
