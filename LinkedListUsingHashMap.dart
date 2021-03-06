import 'dart:collection';

void main(List<String> args) {
  LinkedList<MyEntry> list = LinkedList<MyEntry>();
  list.add(MyEntry(1));
  list.add(MyEntry(2));
  list.add(MyEntry(3));
  print(list);
  print(list.last.previous);
  list.last.previous!.unlink();
  print(list);
  list.first.unlink();
  print(list);
}

class MyEntry extends LinkedListEntry<MyEntry> {
  final int id;
  MyEntry(this.id) {}
  @override
  String toString() {
    return '$id';
  }
}
