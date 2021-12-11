class Node {
  String? data;
  Node? next;
  Node(String data) {
    this.data =
        data; // constructor will take the data and take it as input(assign the data).
    this.next = null; //next will assign to null (rule of linked list)
  }
}

Node? head; // head is declared as global

class LinkedList {
  //function to insert data at first node.
  void insertAtFirst(String data) {
    Node newNode = Node(data); //newnode is object to the class Node
    if (head == null) {
      // if head is null then head will assign to newNode i.e. Newnode = head = null
      head = newNode;
      return;
    }
    //if head is node is not null , newNode's next will point to head
    //i.e. newNode.next's address will get assigned to head.
    newNode.next = head;
    //head now get assign to newnode i.e. head will get updated .
    //i.e head's address will get assigned to newNode where data will be updated.
    head = newNode;
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
  l.show();
}
