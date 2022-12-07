
import 'package:equatable/equatable.dart';

class ValueId<V> with EquatableMixin {
  final V value;

  const ValueId(this.value);

  @override
  List<Object?> get props => [value];
}
