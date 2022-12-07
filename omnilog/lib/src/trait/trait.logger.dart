part of 'trait.dart';

// abstract class TraitLogger<M, L extends Logger<TraitLogMessage>>
//     extends TransformLogger<M, TraitLogMessage, L> {
//   const TraitLogger(super.logger);
//
//   const factory TraitLogger.pass(
//     L logger,
//     List<Trait> Function(M message) buildTraits,
//   ) = _TraitLoggerImpl;
//
//   List<Trait> buildTraits(M message);
//
//   @override
//   TraitLogMessage transform(M message) => TraitLogMessage(message, buildTraits(message));
// }
//
// class _TraitLoggerImpl<M, L extends Logger<TraitLogMessage>> extends TraitLogger<M, L> {
//   final List<Trait> Function(M message) _buildTraits;
//
//   const _TraitLoggerImpl(super.logger, this._buildTraits);
//
//   @override
//   List<Trait> buildTraits(M message) => _buildTraits(message);
// }
