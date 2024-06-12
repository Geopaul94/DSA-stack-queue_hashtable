List<int> mergeSort(List<int> arr) {
  if (arr.length <= 1) {
    return arr; // Base case: array with 0 or 1 element is already sorted
  }

  // Divide the array into two halves
  int mid = arr.length ~/ 2;

  // Print leftHalf before sorting
  List<int> leftHalf = arr.sublist(0, mid);
  print('Left half before sorting: $leftHalf');

  // Print rightHalf before sorting
  List<int> rightHalf = arr.sublist(mid);
  print('Right half before sorting: $rightHalf');

  // Recursively sort each half
  leftHalf = mergeSort(leftHalf);
  rightHalf = mergeSort(rightHalf);

  // Merge the sorted halves
  return merge(leftHalf, rightHalf);
}

List<int> merge(List<int> left, List<int> right) {
  List<int> mergedList = [];
  int leftIndex = 0, rightIndex = 0;

  // Merge the two sorted sub-arrays
  while (leftIndex < left.length && rightIndex < right.length) {
    if (left[leftIndex] < right[rightIndex]) {
      mergedList.add(left[leftIndex++]);
    } else {
      mergedList.add(right[rightIndex++]);
    }
  }

  // Add remaining elements from the left sub-array, if any
  while (leftIndex < left.length) {
    mergedList.add(left[leftIndex++]);
  }

  // Add remaining elements from the right sub-array, if any
  while (rightIndex < right.length) {
    mergedList.add(right[rightIndex++]);
  }

  return mergedList;
}

void main() {
  List<int> arr = [38, 27, 43, 3, 9, 82, 10];
  print("Original array: $arr");

  // Call mergeSort to sort the array
  arr = mergeSort(arr);

  print("Sorted array: $arr");
  print('++++++++++++++++++++++++');
  print(mergeSort(arr));
}
