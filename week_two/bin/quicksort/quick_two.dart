void quickSort(List<int> arr, int low, int high) {
  if (low < high) {
    // Partition the array and get the pivot index
    int pivotIndex = partition(arr, low, high);

    // Recursively sort elements before and after the pivot
    quickSort(arr, low, pivotIndex - 1);
    quickSort(arr, pivotIndex + 1, high);
  }
}

int partition(List<int> arr, int low, int high) {
  // Choose the pivot element (can be any element, here we choose the last element)
  int pivot = arr[high];
  int i = low - 1; // Index of the smaller element

  for (int j = low; j < high; j++) {
    // If current element is smaller than or equal to pivot
    if (arr[j] <= pivot) {
      i++; // Increment index of smaller element
      // Swap arr[i] and arr[j]
      int temp = arr[i];
      arr[i] = arr[j];
      arr[j] = temp;
    }
  }

  // Swap arr[i+1] and arr[high] (or pivot)
  int temp = arr[i + 1];
  arr[i + 1] = arr[high];
  arr[high] = temp;

  return i + 1; // Return the pivot index
}

void main() {
  List<int> arr = [10, 7, 8, 9, 1, 5];
  int n = arr.length;

  print("Original array: $arr");
  quickSort(arr, 0, n - 1);
  print("Sorted array: $arr");
}
