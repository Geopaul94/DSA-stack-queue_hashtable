List<int> mergesort(List<int> list) {
  if (list.length <= 1) {
    return list;
  }
  int mid = list.length ~/ 2;
  List<int> leftside = list.sublist(0, mid);
  List<int> rightside = list.sublist(mid);

  leftside = mergesort(leftside);
  rightside = mergesort(rightside);
  return merge(leftside, rightside);
}

List<int> merge(List<int> left, List<int> right) {
  int i = 0;
  int j = 0;
  List<int> mergedlist = [];

  while (i < left.length && j < right.length) {
    if (left[i] < right[j]) {
      mergedlist.add(left[i]);
      i++;
    } else {
      mergedlist.add(right[j]);
      j++;
    }
  }
  while (i < left.length) {
    mergedlist.add(i);
    i++;
  }
  while (j < right.length) {
    mergedlist.add(j);
    j++;
  }
  return merge(left, right);
}
