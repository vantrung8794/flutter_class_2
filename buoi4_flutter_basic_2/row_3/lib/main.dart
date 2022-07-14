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
        body: Container(
          color: Colors.black38,
          padding: const EdgeInsets.symmetric(vertical: 40),
          margin: EdgeInsets.only(top: 60, left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 60,
                height: 60,
                color: Color(0xFFBE1558),
              ),
              Container(
                width: 60,
                height: 60,
                color: Color(0xFFF2994A),
              ),
              Container(
                width: 60,
                height: 60,
                color: Color(0xFFBE1558),
              )
            ],
          ),
        ),
      ),
    );
  }
}
