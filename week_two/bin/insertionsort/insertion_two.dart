void main() {
  List<int> array = [4, 22, 55, 66, 4, 5];

  List<int> p = ascendingsort(array);

  print(p);

  List<int> k = desecndingsort(array);

  print(k);
}

List<int> ascendingsort(List<int> array) {
  for (int i = 1; i < array.length; i++) {
    int temp = array[i];
    int j = i - 1;

    while (j >= 0 && array[j] > temp) {
      array[j + 1] = array[j];
      j--;
    }
    array[j + 1] = temp;
  }
  return array;
}

List<int> desecndingsort(List<int> array) {
  for (int i = 1; i < array.length; i++) {
    int temp = array[i];
    int j = i - 1;

    while (j >= 0 && array[j] < temp) {
      array[j + 1] = array[j];
      j--;
    }
    array[j + 1] = temp;
  }
  return array; 
}
