void bubbleSort(List<int> arr) {
  int n = arr.length;
  bool swapped;
  do {
    swapped = false;
    for (int i = 0; i < n - 1; i++) {
      if (arr[i] > arr[i + 1]) {
        // Swap arr[i] and arr[i+1]
        int temp = arr[i];
        arr[i] = arr[i + 1];
        arr[i + 1] = temp;
        swapped = true;
      }
    }
  } while (swapped);
}

void main() {
  List<int> arr = [5, 3, 8, 4, 2];
  print("Original array: $arr");
  bubbleSort(arr);
  print("Sorted array: $arr");
}
