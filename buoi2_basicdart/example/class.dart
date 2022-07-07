class Person {
  String name;
  int age;
  bool isMale;

  Person(this.name, this.age, this.isMale);

  void showInfomation() {
    print('name: $name');
    print('age: $age');
    print('isMale: $isMale');
  }

  bool isAgeMoreThan18() {
    return age > 18;
  }
}

void main() {
  var person = Person('trung', 10, true);
  person.showInfomation();
  var moreThan = person.isAgeMoreThan18();
  print(moreThan);
}
