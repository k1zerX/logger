part of 'trait.dart';

class TraitLogMessage<T extends Trait> extends ProxyLogMessage {
  final T trait;

  const TraitLogMessage(
    Object? message, {
    required this.trait,
  }) : super(message);
}
