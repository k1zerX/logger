part of 'level.dart';

class LevelTrait extends Trait {
  static const kId = TypeId<LevelTrait>();

  final LevelEnum level;

  const LevelTrait(this.level);

  @override
  Object? get id => kId;
}