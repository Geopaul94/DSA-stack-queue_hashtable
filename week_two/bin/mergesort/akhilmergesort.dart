List<int> mergeSort(List<int> list) {
  if (list.length <= 1) {
    return list;
  }

  int mid = list.length ~/ 2;
  List<int> leftHalf = mergeSort(list.sublist(0, mid));
  List<int> rightHalf = mergeSort(list.sublist(mid));

  return merge(leftHalf, rightHalf);
}

List<int> merge(List<int> left, List<int> right) {
  List<int> result = [];
  int i = 0, j = 0;

  while (i < left.length && j < right.length) {
    if (left[i] < right[j]) {
      result.add(left[i]);
      i++;
    } else {
      result.add(right[j]);
      j++;
    }
  }
  while (i < left.length) {
    result.add(left[i]);
    i++;
  }

  // Add remaining elements from the right sub-array, if any
  while (j < right.length) {
    result.add(right[j]);
    j++;
  }

  // result.addAll(left.sublist(i));
  // result.addAll(right.sublist(j));

  return result;
}

void main() {
  List<int> unsortedList = [5, 2, 8, 1, 7];
  List<int> sortedList = mergeSort(unsortedList);
  print(sortedList);
}
