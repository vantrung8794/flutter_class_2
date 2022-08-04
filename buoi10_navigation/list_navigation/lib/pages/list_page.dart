import 'package:flutter/material.dart';
import 'package:list_navigation/models/student.dart';
import 'package:list_navigation/pages/detail_page.dart';

class ListPage extends StatefulWidget {
  ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<Student> students = [
    Student(id: 1, name: "Nguyen Van Trung", age: 14),
    Student(id: 2, name: "Nguyen Van A", age: 30),
    Student(id: 3, name: "Nguyen Van B", age: 24),
    Student(id: 4, name: "Nguyen Van C", age: 18),
    Student(id: 5, name: "Nguyen Van D", age: 12),
    Student(id: 6, name: "Nguyen Van E", age: 10),
    Student(id: 7, name: "Nguyen Van F", age: 19),
    Student(id: 8, name: "Nguyen Van G", age: 14),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Student'),
      ),
      body: ListView.builder(
        itemBuilder: (_, index) {
          final item = students[index];
          return InkWell(
            onTap: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailPage(student: item)),
              );
              if (result != null) {
                final mapResult = result as Map;
                for (var i = 0; i < students.length; i++) {
                  if (students[i].id == mapResult['id']) {
                    students[i].age = int.tryParse(mapResult['age']);
                  }
                }
                setState(() {});
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${item.id}',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(width: 18),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.name ?? '',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 12),
                      Text(
                        '${item.age} tuoi',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
        itemCount: students.length,
      ),
    );
  }
}
