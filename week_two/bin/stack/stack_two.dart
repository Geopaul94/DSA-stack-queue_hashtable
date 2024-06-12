class Stack<T> {
  final List<T> _list = [];

  bool get isEmpty => _list.isEmpty;
  int get length => _list.length;

  void push(T item) {
    _list.add(item);
  }

  T pop() {
    if (isEmpty) {
      throw Exception('Stack is empty');
    }
    return _list.removeLast();
  }

  T peek() {
    if (isEmpty) {
      throw Exception('Stack is empty');
    }
    return _list.last;
  }
}
void main() {
  Stack<int> stack = Stack();

  stack.push(1);
  stack.push(2);
  stack.push(3);

  print(stack.length); // Output: 3
  print(stack.peek()); // Output: 3

  print(stack.pop()); // Output: 3
  print(stack.pop()); // Output: 2
  print(stack.pop()); // Output: 1

  print(stack.isEmpty); // Output: true
}