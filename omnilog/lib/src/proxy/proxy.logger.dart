part of 'proxy.dart';

abstract class ProxyLogger extends Logger {
  final Logger _logger;

  const ProxyLogger(this._logger);

  @override
  FutureOr<void> log(Object? message) => _logger.log(message);
}
