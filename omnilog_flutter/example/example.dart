import 'dart:io';

import 'package:flutter/material.dart';
import 'package:omnilog_flutter/omnilog_flutter.dart';
import 'package:omnilog/omnilog.dart';

void main() {
  runApp(const TestApp());
}

class IndexTrait extends Trait {
  final int index;

  const IndexTrait(this.index);

  @override
  Object? get id => ValueId(index);
}

class TestApp extends StatelessWidget {
  const TestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TestScreen(),
    );
  }
}

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => LoggerWidget(
        logger: IOLogger(stdout),
        child: Column(
          children: [
            for (var i = 0; i < 5; ++i)
            ProxyLoggerWidget(
              proxy: (logger) => TransformLogger.pass(logger, (message) => '[index $i]: $message'),
              child: const TestWidget(),
            ),
          ],
        ),
      );
}

class TestWidget extends StatefulWidget {
  const TestWidget({Key? key}) : super(key: key);

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  @override
  void initState() {
    super.initState();
    context.log('initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.log('didChangeDependencies');
  }

  @override
  void didUpdateWidget(TestWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    context.log('didUpdateWidget');
  }

  @override
  void dispose() {
    context.log('dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.log('build');
    return const SizedBox();
  }
}
