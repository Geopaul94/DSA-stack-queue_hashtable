class MergeSort {
  static void mergeSort(List<int> array, bool isAscending) {
    if (array.length <= 1) return;

    int middle = array.length ~/ 2;
    List<int> leftArray = array.sublist(0, middle);
    List<int> rightArray = array.sublist(middle);

    mergeSort(leftArray, isAscending);
    mergeSort(rightArray, isAscending);
    merge(array, leftArray, rightArray, isAscending);
  }

  static void merge(List<int> array, List<int> leftArray, List<int> rightArray, bool isAscending) {
    int leftSize = leftArray.length;
    int rightSize = rightArray.length;
    int i = 0, l = 0, r = 0;

    while (l < leftSize && r < rightSize) {
      if ((isAscending && leftArray[l] < rightArray[r]) || (!isAscending && leftArray[l] > rightArray[r])) {
        array[i] = leftArray[l];
        i++;
        l++;
      } else {
        array[i] = rightArray[r];
        i++;
        r++;
      }
    }

    while (l < leftSize) {
      array[i] = leftArray[l];
      i++;
      l++;
    }

    while (r < rightSize) {
      array[i] = rightArray[r];
      i++;
      r++;
    }
  }
}

void main() {
  List<int> array = [8, 2, 5, 3, 4, 7, 6, 1];

  print('Unsorted List:');
  print(array);

  MergeSort.mergeSort(array, true);
  print('Sorted in Ascending Order:');
  print(array);

  MergeSort.mergeSort(array, false);
  print('Sorted in Descending Order:');
  print(array);
}