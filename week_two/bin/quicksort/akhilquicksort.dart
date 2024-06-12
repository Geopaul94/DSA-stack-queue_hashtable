List<int> quickSort(List<int> arr) {
  int a = arr.length;
  if (a <= 1) {
    return arr;
  }
  int pivot = arr[a ~/ 2];

  List<int> smaller = [];

  List equal = [];

  List<int> larger = [];

  int i = 0;
  while (i <a) {
    int num = arr[i];
    if (num < pivot) {
      smaller.add(arr[i]);
    } else if (num > pivot) {
      larger.add(arr[i]);
    } else {
      equal.add(arr[i]);
    }
    i++;
  }
  return [...quickSort(larger), ...equal, ...quickSort(smaller)];
}

void main() {
  List <int>arr = [9, 2, 8, 6, 4, 5, 7, 6, 10, 1, 2, 11, 19];

  List<int> sorted = quickSort(arr);
  print(sorted);
}
