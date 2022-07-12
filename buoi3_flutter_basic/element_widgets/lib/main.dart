import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Home'),
      // ),
      body: Container1Widget(),
    );
  }
}

class Container1Widget extends StatelessWidget {
  const Container1Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

class MyTextWidget extends StatelessWidget {
  const MyTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(42.0),
      child: Text(
        'Hello cac ban, minh la nguyen van trung, bla ble bla ble,',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 28,
          color: Color(0xFFBE1558),
        ),
      ),
    );
  }
}
