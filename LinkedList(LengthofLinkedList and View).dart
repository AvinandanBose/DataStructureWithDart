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
    // ignore: unnecessary_null_comparison
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
}
