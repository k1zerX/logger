part of omnilog_flutter;

class LoggerWidget extends InheritedWidget {
  final Logger logger;

  const LoggerWidget({
    Key? key,
    required this.logger,
    required Widget child,
  }) : super(key: key, child: child,);

  @override
  bool updateShouldNotify(LoggerWidget oldWidget) => oldWidget.logger != logger;

  static LoggerWidget? of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<LoggerWidget>();
}