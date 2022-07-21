import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  List<int> arr = [12, 0, 3, 2, 8, 7, 6, 11, 10, 15];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("GridView"),
        ),
        body: GridView.builder(
            padding: EdgeInsets.all(16),
            itemCount: arr.length,
            // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //   crossAxisCount: 2,
            //   mainAxisSpacing: 10,
            //   crossAxisSpacing: 10,
            // ),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 140,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 0.8,
            ),
            itemBuilder: (context, index) {
              int item = arr[index];
              return Container(
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                    child: Text(
                  '$item',
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              );
            }),
      ),
    );
  }
}
