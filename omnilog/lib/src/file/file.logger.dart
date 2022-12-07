part of 'file.dart';

class FileLogger extends IOLogger {
  FileLogger(File file) : super(file.openWrite());

  @override
  Future<void> dispose() async {
    await sink.flush();
    await sink.close();
    await super.dispose();
  }
}
