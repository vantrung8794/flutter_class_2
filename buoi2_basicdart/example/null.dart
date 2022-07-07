void main() {
  String myName = 'Trung';
  int age = 30;
  display(name: myName, age: age);

  int yearBorn = 1994;
  int newAge = getAge(yearBorn);
  print(newAge);
}

void display({String? name, int? age}) {
  print('Hello $name');
  print('age $age');
}

int getAge(int yearBorn) {
  return 2022 - yearBorn + 1;
}
