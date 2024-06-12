void bubbleSort(List<int> arr, int n) {
  int i, j, temp;
  bool swapped;
  for (i = 0; i < n - 1; i++) {
    swapped = false;
    for (j = 0; j < n - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        // Swap arr[j] and arr[j+1]
        temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
        swapped = true;
      }
    }

    // If no two elements were swapped by inner loop, then break
    if (!swapped) break;
  }
}

// Function to print an array
void printArray(List<int> arr, int size) {
  for (int i = 0; i < size; i++) {
    print('${arr[i]} ');
  }
}

// Driver program
void main() {
  List<int> arr = [64, 34, 25, 12, 22, 11, 90];
  int n = arr.length;
  print('++++++++++++++++++++++++++${arr.length}');
  print('Length of the array: ${arr.length}');
  print(arr);
  bubbleSort(arr, n);
  print("Sorted array:");
  printArray(arr, n);
  print(arr);
}
