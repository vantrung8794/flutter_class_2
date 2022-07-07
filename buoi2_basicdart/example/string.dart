void main() {
  String str1 = 'Hello';
  String str2 = 'Trung';

  print(str1 + ' ' + str2);

  String name = 'Trung';
  int yearBorn = 1994;
  String displayStr = 'Hello, my name is $name - I was born in $yearBorn';
  String displayStr2 = 'Hello, my name is $name - I am ${2022 - yearBorn + 1}';

  print(displayStr);
  print(displayStr2);

  String str3 = 'Hello Thanh';
  print('Length is: ${str3.length}');
  print('Is Empty: ${str3.isEmpty}');
  print('Uppercase: ${str3.toUpperCase()}');
}
