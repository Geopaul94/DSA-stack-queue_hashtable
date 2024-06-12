import 'dart:collection';

void main() {
  // Creating a stack object
  var stack = ListQueue<String>();

  // Pushing game titles onto the stack
  stack.add('Minecraft');
  stack.add('Skyrim');
  stack.add('DOOM');
  stack.add('Borderlands');
  stack.add('FFVII');

  // Printing the stack
  print(stack);
}
