part of 'level.dart';

// class LevelLogMessage<M> extends LogMessage<M> with LevelMixin {
//   const LevelLogMessage(super.data, this.levelTrait);
//
//   @override
//   final LevelTrait levelTrait;
// }

class LevelLogMessage extends TraitLogMessage {
  LevelLogMessage(Object? message, {required LevelEnum level,}) : super(message, trait: LevelTrait(level),);
}
