part of 'transform.dart';

abstract class TransformLogger extends ProxyLogger {
  const TransformLogger(Logger logger) : super(logger);

  const factory TransformLogger.pass(
    Logger logger,
    Object? Function(Object? message) transform,
  ) = _TransformLoggerPass;

  Object? transform(Object? message);

  @override
  FutureOr<void> log(Object? message) {
    final transformed = transform(message);
    return super.log(transformed);
  }
}

class _TransformLoggerPass extends TransformLogger {
  final Object? Function(Object? message) _transform;

  const _TransformLoggerPass(Logger logger, this._transform) : super(logger);

  @override
  Object? transform(Object? message) => _transform(message);
}
