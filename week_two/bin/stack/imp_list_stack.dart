// push(List arr,value){
//   arr.add(value);
//   print(arr);

// }
// pop(List arr){
//   if(arr.length<=0){
//     print('Stack underflow');
//     return;

//   }
//     arr.removeLast();
// print(arr);

// }
// void main(){
//   List arr = [];
//   pop(arr);
//   push(arr,1);
//   push(arr,2);
//   push(arr,3);
//   pop(arr);
// }

class FixedSizeStack {
  List<int> ?arr;
  int maxSize;

  FixedSizeStack(this.maxSize) {
    arr = [];
  }

  void push(int value) {
    if (arr!.length >= maxSize) {
      print('Stack overflow');
      return;
    }
    arr!.add(value);
    print(arr);
  }

  void pop() {
    if (arr!.isEmpty) {
      print('Stack underflow');
      return;
    }
    arr!.removeLast();
    print(arr);
  }
}

void main() {
  FixedSizeStack stack = FixedSizeStack(3); // Creating a stack with a max size of 3
  stack.pop(); // Stack underflow
  stack.push(1); // [1]
  stack.push(2); // [1, 2]
  stack.push(3); // [1, 2, 3]
  stack.push(4); // Stack overflow
}
