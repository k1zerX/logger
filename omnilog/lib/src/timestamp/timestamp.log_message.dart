part of 'timestamp.dart';

class TimestampLogMessage extends TraitLogMessage {
  TimestampLogMessage(Object? message, {required DateTime timestamp,}) : super(message, trait: TimestampTrait(timestamp),);
}
