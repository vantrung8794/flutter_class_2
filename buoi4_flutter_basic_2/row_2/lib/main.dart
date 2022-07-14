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
        child: Row(
          children: [
            Image.asset(
              'assets/images/ic_download.png',
              width: 32,
              height: 32,
            ),
            SizedBox(width: 12),
            Expanded(
              child: Container(
                color: Color(0xFFD9D9D9),
                height: 40,
                child: Center(
                  child: Text(
                    'Xin chao',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
