part of omnilog_flutter;

class ProxyLoggerWidget extends StatefulWidget {
  final Logger Function(Logger) proxy;
  final Widget child;

  const ProxyLoggerWidget({
    Key? key,
    required this.proxy,
    required this.child,
  }) : super(key: key,);

  @override
  State<ProxyLoggerWidget> createState() => _ProxyLoggerWidgetState();
}

class _ProxyLoggerWidgetState<IM, OM> extends State<ProxyLoggerWidget> {
  Logger _logger = NullLogger();

  @override
  void initState() {
    super.initState();

    _updateLogger();

    print('DEBUG initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _updateLogger();

    print('DEBUG didChangeDependencies');
  }

  @override
  void didUpdateWidget(ProxyLoggerWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.proxy != widget.proxy) {
      _updateLogger();
    }

    print('DEBUG didUpdateWidget');
  }

  void _updateLogger() {
    _logger = widget.proxy(context.logger());
  }

  @override
  Widget build(BuildContext context) {
    print('DEBUG build');

    return LoggerWidget(
      logger: _logger,
      child: widget.child,
    );
  }
}
