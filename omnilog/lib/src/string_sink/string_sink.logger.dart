part of 'string_sink.dart';

class StringSinkLogger<S extends StringSink> extends Logger {
  @protected
  final S sink;

  const StringSinkLogger(this.sink);

  @override
  void log(Object? message) =>
    sink.writeln(message);

}