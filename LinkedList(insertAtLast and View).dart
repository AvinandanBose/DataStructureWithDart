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
  //function to insert data at last node.
  void insertAtLast(String data) {
    Node newNode = Node(data); //newnode is object to the class Node
    if (head == null) {
      // if head is null then head will assign to newNode i.e. Newnode = head = null
      head = newNode;
      return;
    }
    //Create a object 'currNode'and assign to head
    Node currNode = head!;
    //Traverse the list
    while (currNode.next != null) //while next node doesnot equals null
    {
      currNode = currNode
          .next!; //currNode's addess will be assigned to next address of nextNode.
    }
    currNode.next =
        newNode; //currNode.next address to will be assigned to new node,
    //where the data will be placed
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
  l.insertAtLast('Avi');
  l.insertAtLast('Bose');
  l.insertAtLast('Sourav');
  l.show();
}
