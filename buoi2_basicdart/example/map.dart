void main() {
  Map<String, int> map1 = {
    '1': 11,
    '2': 12,
    '3': 13,
  };

  map1['6'] = 16;
  map1['2'] = 22;

  print(map1);

  var map2 = {'10': 10, '11': 111};
  map1.addAll(map2);
  print(map1);

  String hello = 'hello ';

  map1.forEach((key, value) {
    hello = hello + key + ' ';
  });

  print(hello);
}
