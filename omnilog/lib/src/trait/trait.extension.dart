part of 'trait.dart';

// extension LogMessageExtension<O> on O {
//   R? as<R, P>(Object? Function(P) nesting) {
//     final self = this;
//     if (self is R) return self;
//     if (self is P) return nesting(self)?.as<R, P>(nesting);
//     return null;
//   }
//
//   T? findTrait<T extends Trait>() => as<TraitLogMessage<T>, LogMessage>(_getData)?.trait;
//
//   static Object? _getData(LogMessage message) => message.data;
//   static T _getTrait<T extends Trait>(TraitLogMessage<T> message) => message.trait;
//
//   Iterable<R> getNested<R, P>(Object? Function(P) nesting) sync* {
//     final self = this;
//     if (self is P) yield* nesting(self).getNested<R, P>(nesting);
//     if (self is R) yield self;
//   }
//
//   Iterable<R> getNestedMessages<R, M extends LogMessage>() {
//     return getNested<R, M>(_getData);
//   }
//
//   Iterable<T> getTraits<T extends Trait>() {
//     return getNested<TraitLogMessage<T>, LogMessage>(_getData).map((msg) => msg.trait);
//   }
// }

class TraitResult {
  final List<Trait> traits;
  final Object? message;

  TraitResult._(this.message) : traits = [];

  factory TraitResult(ProxyLogMessage proxy) {
    final message = proxy.message;
    final result = message is ProxyLogMessage ? TraitResult(message) : TraitResult._(message);
    if (proxy is TraitLogMessage) result.traits.add(proxy.trait);
    return result;
  }

  R build<R>(R Function(Object?, Map<Object?, Trait>) builder) => builder(message, HashMap.fromEntries(traits));
}