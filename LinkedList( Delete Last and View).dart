class Node {
  String? data;
  Node? next;
  Node(String data) {
    this.data = data;
    this.next = null;
  }
}

Node? head; //declared global

class LinkedList {
  void insertAtFirst(String data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      return;
    }
    newNode.next = head;
    head = newNode;
  }

  int lengthOfLinkedList() {
    int count = 1;
    Node node = head!;
    while (node.next != null) {
      count = count + 1;
      node = node.next!;
    }
    return count;
  }

  void insertAtLast(String data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      return;
    }
    Node currNode = head!;
    while (currNode.next != null) {
      currNode = currNode.next!;
    }
    currNode.next = newNode;
  }

  void show() {
    Node node = head!;
    while (node.next != null) {
      print(node.data);
      node = node.next!;
    }
    print(node.data);
  }

  void deleteFirst() {
    if (head == null) {
      return;
    }
    head = head!.next;
  }

  void deleteLast() {
    //if head is null then return nothing.
    if (head == null) {
      return;
    }
    //if the linked list have one element then:
    //head's next address assigned to null and such condition is met then:
    //head will be assigned to null. i.e. last element will get lost.
    if (head!.next == null) {
      head == null;
      return;
    }
    Node secondLastNode = head!;
    Node LastNode = head!.next!; //head and next have null check ? operator
    //Traverse the LastNode.next till it doesnot reach null
    while (LastNode.next != null) {
      LastNode = LastNode.next!;
      secondLastNode = secondLastNode.next!;
    }
    //second Last node gets assigned to null and data gets lost forever.
    secondLastNode.next = null;
  }
}

void main(List<String> args) {
  LinkedList l = LinkedList();
  l.insertAtFirst('Avi');
  l.insertAtFirst('Bose');
  l.insertAtFirst('Sourav');
  l.insertAtLast('Debjyoti');
  l.insertAtLast('Swayam');
  print(l.lengthOfLinkedList());
  l.show();
  l.deleteFirst();
  print("\n");
  print(l.lengthOfLinkedList());
  l.show();
  l.deleteLast();
  print("\n");
  print(l.lengthOfLinkedList());
  l.show();
}
