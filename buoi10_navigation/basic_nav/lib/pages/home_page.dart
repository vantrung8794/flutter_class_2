import 'package:basic_nav/pages/detail_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = "Tuan dep trai";

  int age = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name),
            Text('$age'),
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailPage(
                            name: name,
                            age: age,
                          )),
                );
                if (result != null && result != '') {
                  setState(() {
                    age = int.tryParse(result) ?? 0;
                  });
                }
              },
              child: Text("Go to detail"),
            ),
          ],
        ),
      ),
    );
  }
}
