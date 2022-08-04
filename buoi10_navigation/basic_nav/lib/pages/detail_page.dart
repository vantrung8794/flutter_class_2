import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({
    Key? key,
    this.name,
    this.age,
  }) : super(key: key);

  final String? name;
  final int? age;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail page"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hello ${widget.name} - Age ${widget.age}"),
              SizedBox(height: 8),
              TextField(
                controller: myController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Nhap new Age"),
              ),
              SizedBox(height: 8),
              ElevatedButton(
                  onPressed: () {
                    final newAge = myController.text;
                    if (newAge.isEmpty) {
                      const snackBar = SnackBar(
                        content: Text('Tuoi moi khong the de rong'),
                      );

                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    } else {
                      Navigator.pop(context, myController.text);
                    }
                  },
                  child: Text("Back"))
            ],
          ),
        ),
      ),
    );
  }
}
