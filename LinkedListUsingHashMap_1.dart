import 'dart:collection';

class Entry<T> extends LinkedListEntry<Entry<T>> {
  T value;
  Entry(this.value);
  @override
  String toString() {
    return '$value';
  }
}

void main(List<String> args) {
  LinkedList<Entry<int>> ll = LinkedList<Entry<int>>();
  ll.add(Entry(1));
  ll.add(Entry(2));
  ll.add(Entry(3));
  print(ll.toString());
  print(ll.first.value);
  print(ll.length);
  print(ll.last.value);
  print(ll.first.next!.value);
  ll.first.unlink();
  print(ll.first.value);
  print(ll.toString());
  ll.last.unlink();
  print(ll.last.value);
  print(ll.toString());
  ll.addAll([Entry(1), Entry(2)]);
  print(ll.first.value);
  print(ll.first.next!.value);
  print(ll.toString());
}
