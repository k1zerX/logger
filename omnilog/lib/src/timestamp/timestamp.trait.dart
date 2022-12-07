part of 'timestamp.dart';

class TimestampTrait extends Trait {
  static const kId = TypeId<TimestampTrait>();

  final DateTime timestamp;

  const TimestampTrait(this.timestamp);

  @override
  Object? get id => kId;
}