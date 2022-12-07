part of 'filter.dart';

class FilterLogger extends ProxyLogger {
  final bool Function(Object? message) _filter;

  const FilterLogger(Logger logger, this._filter) : super(logger);

  @override
  void log(Object? message) {
    if (_filter(message)) {
      super.log(message);
    }
  }
}
