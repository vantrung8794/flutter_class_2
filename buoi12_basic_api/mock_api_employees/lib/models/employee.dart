class Employee {
  final String? id;
  final String? name;
  final String? avatar;
  final int? age;

  Employee({this.id, this.name, this.avatar, this.age});

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
        id: json['id'],
        name: json['name'],
        avatar: json['avatar'],
        age: json['age']);
  }
}
