// push(List arr, value) {
//   arr.add(value);
//   print(arr);
// }

// pop(List arr) {
//   if (arr.length <= 0) {
//     print('Stack underflow');
//     return;
//   }
//   arr.removeLast();
//   print(arr);
// }

// void main() {
//   List arr = [];
//   pop(arr);
//   push(arr, 1);
//   push(arr, 2);
//   push(arr, 3);
//   push(arr, 4);
//   push(arr, 5);

//   push(arr, 6);
//   push(arr, 7);
//   pop(arr);
//   pop(arr);
//   pop(arr);
//   pop(arr);  pop(arr);  pop(arr);  pop(arr);  pop(arr);  pop(arr);
// }

class Node {
  dynamic data;
  Node? next;

  Node(this.data);
}

class Stack {
  Node? top;

  void push(dynamic data) {
    Node newNode = Node(data);
    newNode.next = top;
    top = newNode;
  }

  dynamic pop() {
    if (top == null) {
      print('Stack underflow');
      return null;
    } else {
      print('++++++++++++${top!.data}');
      top = top?.next;
      // dynamic poppedData = top!.data;
      // top = top!.next;
      // return poppedData;
    }
  }

  void display() {
    Node? current = top;
    int count = 0;
    while (current != null) {
      if (count % 2 == 1) {
        print(current.data);
      }
      current = current.next;
      count++;
    }
  }

  void main() {
    Stack stack = Stack();
    stack.push(1);
    stack.push(2);
    stack.push(3);
    stack.push(4);
    stack.push(5);
    stack.push(6);

    print('Alternative elements from the stack:');
    stack.display();
  }
}
