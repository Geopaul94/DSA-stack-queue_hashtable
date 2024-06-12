class Node {
  dynamic data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;
  Node? tail;
  void push(data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      newNode.next = head;
      head = newNode;
    }
  }

  void display() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void pop() {
    if (head == null) {
      print('staack underflow');
    } else {
      print('++++++++++++${head!.data}');
      head = head?.next;
    }

  }
}

void main() {
  LinkedList a = LinkedList();
  // a.push(10);
  // a.push(15);
  a
    ..push('g')
    ..push('e')
    ..push('o')
    ..display()
    ..pop()
    ..pop()
    ..pop();

  a.display();
}


// class Node {
//   dynamic data;
//   Node? next;

//   Node(this.data);
// }

// class LinkedList {
//   Node? head;
//   Node? tail;

//   void push(data) {
//     Node newNode = Node(data);
//     if (head == null) {
//       head = newNode;
//     } else {
//       newNode.next = head;
//       head = newNode;
//     }
//   }

//   dynamic pop() {
//     if (head == null) {
//       print('stack underflow');
//       return null;
//     } else {
//       dynamic poppedData = head!.data;
//       head = head!.next;
//       return poppedData;
//     }
//   }

//   dynamic catchPopData() {
//     if (head == null) {
//       print('stack underflow');
//       return null;
//     } else {
//       return head!.data;
//     }
//   }

//   void display() {
//     Node? temp = head;
//     while (temp != null) {
//       print(temp.data);
//       temp = temp.next;
//     }
//   }
// }

// void main() {
//   LinkedList originalStack = LinkedList();
//   LinkedList poppedStack = LinkedList(); // Second stack to store popped data

//   originalStack
//     ..push('g')
//     ..push('e')
//     ..push('o')
//     ..display();

//   // Catch the popped data from the original stack and push it onto the popped stack
//   while (originalStack.head != null) {
//     poppedStack.push(originalStack.catchPopData());
//     originalStack.pop(); // Pop the data from the original stack
//   }

//   print('Popped elements:');
//   poppedStack.display(); // Display popped elements from the second stack
// }
