part 'queue.entry.dart';

class Queue<T> {
  _QueueEntry<T>? _first;
  _QueueEntry<T>? _last;

  bool get isEmpty {
    assert((_first == null) == (_last == null));

    return _first == null;
  }

  bool get isNotEmpty => !isEmpty;

  void push(T data) {
    final entry = _QueueEntry<T>(data);

    if (_last != null) {
      _last!.next = entry;
    } else {
      _first = entry;
    }
    _last = entry;
  }

  T pop() {
    final entry = _first!;
    _first = entry.next;
    return entry.data;
  }
}
