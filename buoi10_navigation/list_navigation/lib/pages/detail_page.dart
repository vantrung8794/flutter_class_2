import 'package:flutter/material.dart';

import '../models/student.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({
    Key? key,
    required this.student,
  }) : super(key: key);

  final Student student;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final ageController = TextEditingController();

  @override
  void initState() {
    super.initState();
    ageController.text = '${widget.student.age}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail page"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.student.name ?? ''),
              TextField(
                controller: ageController,
                decoration: InputDecoration(
                  hintText: "Nhap new age",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  final newAge = ageController.text;
                  Navigator.pop(context, {
                    'id': widget.student.id,
                    'age': newAge,
                  });
                },
                child: Text("Save"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
