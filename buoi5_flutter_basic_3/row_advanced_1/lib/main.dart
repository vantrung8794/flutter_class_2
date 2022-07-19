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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.asset(
                    "assets/images/ic_call.png",
                    width: 40,
                    height: 40,
                  ),
                  Text(
                    'Liên hệ',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/images/ic_navigation.png",
                    width: 40,
                    height: 40,
                  ),
                  Text(
                    'Chỉ đường',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/images/ic_share.png",
                    width: 40,
                    height: 40,
                  ),
                  Text(
                    'Chia sẻ',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
