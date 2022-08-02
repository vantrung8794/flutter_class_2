import 'package:flutter/material.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: CounterBody(),
    );
  }
}

class CounterBody extends StatefulWidget {
  const CounterBody({
    Key? key,
  }) : super(key: key);

  @override
  State<CounterBody> createState() => _CounterBodyState();
}

class _CounterBodyState extends State<CounterBody> {
  int count = 0;

  @override
  void initState() {
    count = 10;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    count = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$count',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                count = count + 1;
              });
            },
            child: Text('Increase'),
          )
        ],
      ),
    );
  }
}
