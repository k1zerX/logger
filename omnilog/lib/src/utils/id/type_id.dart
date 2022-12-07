

import 'package:equatable/equatable.dart';

class TypeId<T> with EquatableMixin {
  const TypeId();

  @override
  List<Object?> get props => [T];
}