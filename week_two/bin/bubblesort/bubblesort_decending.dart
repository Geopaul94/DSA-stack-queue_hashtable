void printArray(List<int> arr, int size) {
  for (int i = 0; i < size; i++) {
    print('${arr[i]} ');
  }
}

void printArraysingle(List<int> arr, int size) {
  String result = '';
  for (int i = 0; i < size; i++) {
    result += '${arr[i]} '; // Concatenate each element with a space
  }
  print(result
      .trim()); // Print the concatenated string, removing trailing whitespace
}

void bubbleSortDescending(List<int> arr, int size) {
  int i, j, temp;
  bool swapped;

  for (i = 0; i < size - 1; i++) {
    swapped =
        false; // Initialize swapped flag to false at the beginning of each pass
    for (j = 0; j < size - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        // Change comparison to sort in descending order
        // Swap arr[j] and arr[j+1]
        temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
        swapped = true; // Set swapped flag to true if a swap occurs
      }
    }

    // Check if no swaps occurred during the pass
    if (swapped == false) {
      break; // Break out of the outer loop if no swaps occurred
    }
  }
}

// Usage example:
void main() {
  
  List<int> arr = [64, 34, 25, 12, 22, 11, 90];
  int size = arr.length;
  bubbleSortDescending(arr, size);
  print("Sorted array in descending order:");
  print(arr);

  print("+++++++++++++++++++++++++++");
  printArray(arr, size);

  print('======================');
  printArraysingle(arr, size);
}
