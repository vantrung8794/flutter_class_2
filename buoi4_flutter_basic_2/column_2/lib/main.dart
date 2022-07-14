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
          padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 75,
                color: Color(0xFFD9D9D9),
              ),
              SizedBox(height: 18),
              Text(
                'Ho va ten',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 7),
              Text(
                'Nguyen Van Trung',
              ),
              SizedBox(height: 18),
              Text(
                'Dia chi',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 7),
              Text(
                'Làng Vạn Phúc, xã Thịnh Sơn, Huyện Đô Lương, tỉnh Nghệ An, Việt Nam',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
