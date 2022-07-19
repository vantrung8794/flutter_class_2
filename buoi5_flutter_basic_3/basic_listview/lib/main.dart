import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  List<int> arr = [12, 10, 9, 0, 1, 32, 8, 100, 1000];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "ListView Basic",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: ListView.builder(
          padding: EdgeInsets.all(32),
          itemBuilder: (context, index) {
            int item = arr[index];
            return Container(
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.black26,
              ),
              child: Center(
                child: Text(
                  "$item",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFBE1558),
                  ),
                ),
              ),
            );
          },
          itemCount: arr.length,
        ),
      ),
    );
  }
}
