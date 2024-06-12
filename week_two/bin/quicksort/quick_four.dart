void quick(List array,int start,int end){
    if(start>=end){
    return;
  }
  int pivot=start;
  int left=start+1;
  int right=end;
  while(left<=right){
    if(array[left]>array[pivot] && array[right]<array[pivot])
      swap(array, left++, right--);
    if(array[left]<=array[pivot])
      left++;
    if(array[right]>=array[pivot])
      right--;
  }
  swap(array, right, pivot);
  quick(array, start, right-1);
  quick(array, right+1, end);
  return;
}
void swap(List array,int i,int j){ 
  int temp=array[i];
  array[i]=array[j];
  array[j]=temp;
}
void main(){
  List array=[98,5,2,45,25,1,55];
  quick(array, 0, array.length-1);
  print(array);
}