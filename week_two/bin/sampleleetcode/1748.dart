void main() {
  List<int> nums = [1, 2, 3, 4, 1, 8, 2, 3, 1];
  print('before sorting $nums');
  //ist <int>b=add(nums);

  List<int> b = add(nums);

  print(b);

  // List<int> b = print(b);
  var v = 'vineesh!johnson';
  var c = v.split('!');
  print(c);
  List<String> vu = ['vineesh', 'jithu', 'jio'];
  var t = vu.toString();
  print(t);
  var f = vu;
  print(v[1].length);
}

List<int> add(List<int> nums) {
  List<int> k = [];
  List<int> odd = [];
  List<int> even = [];
  int i;

  for (int i = 0; i < nums.length; i++) {
    if (nums[i] % 2 == 0) {
      even.add(nums[i]);
    } else {
      odd.add(nums[i]);
    }
  }
  for (i = 0; i < even.length; i++) {
    k.add(even[i]);
  }

  for (i = 0; i < odd.length; i++) {
    k.add(odd[i]);
  }

  return k;
}
