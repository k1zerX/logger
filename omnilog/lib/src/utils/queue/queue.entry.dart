part of 'queue.dart';

class _QueueEntry<T> {
  T data;
  _QueueEntry<T>? next;

  _QueueEntry(this.data, [this.next]);
}