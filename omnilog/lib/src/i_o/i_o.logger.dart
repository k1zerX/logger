part of 'i_o.dart';

class IOLogger extends StringSinkLogger<IOSink> {
  const IOLogger(IOSink sink) : super(sink);
}
