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
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Container(
          margin: EdgeInsets.all(40),
          width: double.infinity,
          height: 161,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFFF2994A),
              border: Border.all(
                color: Color(0xFF11BD2C),
                width: 3,
              )),
          child: Center(
            child: Text(
              'Xin chao',
              style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
