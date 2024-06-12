void main() {
  List<int> array = [10,11,1,2,3,4,5,8,2,4,3,1110];
  
  insertionSort(array);
  
  print(array.join(' '));
}

void insertionSort(List<int> array) {
  for (int i = 1; i < array.length; i++) {
    int temp = array[i];
    int j = i - 1;

    while (j >= 0 && array[j] >temp) {
      array[j + 1] = array[j];
      j--;
    }
    array[j + 1] = temp;
  
  }
}