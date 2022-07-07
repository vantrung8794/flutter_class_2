void main() {
  var arr = [1, 6, 3, 4, 0];
  print(arr[2]);
  arr[2] = 30;
  print(arr);
  arr.add(100);
  print(arr);
  arr.insert(1, 2000);
  print(arr);
  arr.replaceRange(1, 3, [10, 10, 10]);
  print(arr);
  arr.removeAt(2);
  print(arr);

  int total = 0;
  // arr.forEach((element) {
  //   total = total + element;
  // });

  // for (var item in arr) {
  //   total = total + item;
  // }

  for (var index = 0; index < arr.length; index++) {
    total = total + arr[index];
  }
  print(total);
}
