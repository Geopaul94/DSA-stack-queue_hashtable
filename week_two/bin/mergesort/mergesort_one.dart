List<int> mergeSort(List<int> arr) {
  if (arr.length <= 1) {
    return arr; // Base case: array with 0 or 1 element is already sorted
  }
  
  // Split the array into two halves
  int mid = arr.length ~/ 2;
  List<int> leftHalf = arr.sublist(0, mid);
  List<int> rightHalf = arr.sublist(mid);
  
  // Recursively sort each half
  leftHalf = mergeSort(leftHalf);
  rightHalf = mergeSort(rightHalf);
  
  // Merge the sorted halves
  return merge(leftHalf, rightHalf);
}

List<int> merge(List<int> left, List<int> right) {
  List<int> mergedList = [];
  int leftIndex = 0, rightIndex = 0;
  
  // Compare elements from the left and right sub-arrays and merge them
  while (leftIndex < left.length && rightIndex < right.length) {
    if (left[leftIndex] < right[rightIndex]) {
      mergedList.add(left[leftIndex]);
      leftIndex++;
    } else {
      mergedList.add(right[rightIndex]);
      rightIndex++;
    }
  }
  
  // Add remaining elements from the left sub-array, if any
  while (leftIndex < left.length) {
    mergedList.add(left[leftIndex]);
    leftIndex++;
  }
  
  // Add remaining elements from the right sub-array, if any
  while (rightIndex < right.length) {
    mergedList.add(right[rightIndex]);
    rightIndex++;
  }
  
  return mergedList;
}

void main() {
  List<int> arr = [40,12,18,1,5,78,500];
  print("Original array: $arr");
  
  arr = mergeSort(arr);
  
  print("Sorted array: $arr");
}
