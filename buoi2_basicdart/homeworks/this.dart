void main() {
  var trung = Person(age: 20);

  var tiep = Person(age: 15);

  bool isTrungMoreThan = trung.isOlder(other: tiep);
  print(isTrungMoreThan);

  bool isTiepMoreThan = tiep.isOlder(other: trung);
  print(isTiepMoreThan);

  trung.changeAge(30);
  print(trung.age);
}

class Person {
  int age;
  Person({
    required this.age,
  });

  void changeAge(int age) {
    this.age = age;
  }

  bool isOlder({required Person other}) {
    return age > other.age;
  }
}
