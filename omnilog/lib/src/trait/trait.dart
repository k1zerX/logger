import 'dart:collection';

import 'package:equatable/equatable.dart';
import 'package:omnilog/omnilog.dart';

part 'trait.extension.dart';
part 'trait.id.dart';
part 'trait.log_message.dart';
part 'trait.logger.dart';

abstract class Trait implements MapEntry<Object?, Trait> {
  const Trait();

  Object? get id;

  @override
  Object? get key => id;

  @override
  Trait get value => this;
}
