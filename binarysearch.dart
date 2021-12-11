binarySearch(List<int> arr, int val, int beg, int end) {
  if (end >= beg) {
    int mid = ((beg + end) / 2).floor();
    if (val == arr[mid]) {
      print('your item is at index: ${mid}');
    } else if (val > arr[mid]) {
      binarySearch(arr, val, mid + 1, end);
    } else {
      binarySearch(arr, val, beg, mid - 1);
    }
  }
  return null;
}

void main() {
  dynamic arr = [0, 1, 3, 4, 5, 8, 9, 22];
  print("Enter value to search:");
  int val = 27, beg = 0, end = arr.length - 1;
  binarySearch(arr, val, beg, end);
}
