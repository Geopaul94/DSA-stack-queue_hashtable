

void main() {
  List<int> array = [8, 2, 5, 3, 9, 55, 14, 7, 6, 1];

  quickSort(array, 0, array.length - 1);
  print(array.length);

  print(array.join(' '));
}

void quickSort(List<int> array, int start, int end) {
  if (end <= start) return; // Base case

  int pivotIndex = partition(array, start, end);
  quickSort(array, start, pivotIndex - 1);
  quickSort(array, pivotIndex + 1, end);
}

int partition(List<int> array, int start, int end) {
  int pivot = array[end];

  print('+++++++${array[end]}');
  int i = start - 1;

  for (int j = start; j < end; j++) {
    if (array[j] < pivot) {
      i++;
      // Swap array[i] and array[j]
      int temp = array[i];
      array[i] = array[j];
      array[j] = temp;
    }
  }

  // Swap array[i+1] and array[end] (or pivot)
  int temp = array[i + 1];
  array[i + 1] = array[end];
  array[end] = temp;

  return i + 1;
}
