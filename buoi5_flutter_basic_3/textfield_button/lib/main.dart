import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Nhap ho ten",
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text("Tiep theo"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.redAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
