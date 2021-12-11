import 'dart:io';

void main() {
  List<int> arr = [0, 1, 3, 4, 5, 8, 9, 22];
  print("Search a number:\n");
  int val = int.parse(stdin.readLineSync()!);
  int beg = 0;
  int end = arr.length - 1;
  binarySearch(arr, val, beg, end);
}

binarySearch(List<int> arr, int input, int beg, int end) {
  if (beg <= end) {
    int mid = ((beg + end) / 2).floor();
    if (input == arr[mid]) {
      print('your item is at index: ${mid}');
    } else if (input > arr[mid]) {
      binarySearch(arr, input, mid + 1, end); //recursive call of funtion
    } else if (input < arr[mid]) {
      binarySearch(arr, input, beg, mid - 1); //recursive call of funtion
    } else {
      print("Not found");
    }
  }
  return null;
}
