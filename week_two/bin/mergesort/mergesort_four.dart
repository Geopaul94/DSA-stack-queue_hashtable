class MergeSort{
  List? mergeSort(List array){
    if(array.length<=1)
      return array;
    int start=0;
    int end=array.length;
    int mid=(start+end)~/2;
    List firstHalf=array.sublist(start,mid);
    List secondHalf=array.sublist(mid,end);
    firstHalf = mergeSort(firstHalf)!;
    secondHalf = mergeSort(secondHalf)!;
    print(firstHalf);
    print(secondHalf);
    return join(firstHalf,secondHalf);
  }
  List? join(List firstHalf,List secondHalf){
    int i=0,j=0;
    List newArray=[];
    while(i<firstHalf.length && j<secondHalf.length){
      if(firstHalf[i]<=secondHalf[j]){
        newArray.add(firstHalf[i++]);
      }else{
        newArray.add(secondHalf[j++]);
      }
    }
    while(j<secondHalf.length)
        newArray.add(secondHalf[j++]);
    while(i<firstHalf.length)
        newArray.add(firstHalf[i++]);
    print(newArray);
    return newArray;
  }
}
void main() {
  MergeSort m=MergeSort();
  List arr=[99,11,62,54,12,32,5];
List? arr1=m.mergeSort(arr);
  print("-----------------------------");
  print(arr1);
  print("-----------------------------");

}