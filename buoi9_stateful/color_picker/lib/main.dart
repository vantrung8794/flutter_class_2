import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ColorPickerPage(),
    );
  }
}

class ColorPickerPage extends StatelessWidget {
  ColorPickerPage({
    Key? key,
  }) : super(key: key);

  final List<Color> colors = [
    Color(0xFFF2994A),
    Color(0xFF000000),
    Color(0xFF11BD2C),
    Color(0xFFBE1558),
    Color(0xFF4AA1F2),
    Color(0xFF8A23DC),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColorPickerBody(
        colors: colors,
      ),
    );
  }
}

class ColorPickerBody extends StatefulWidget {
  ColorPickerBody({
    Key? key,
    this.colors,
  }) : super(key: key);

  final List<Color>? colors;

  @override
  State<ColorPickerBody> createState() => _ColorPickerBodyState();
}

class _ColorPickerBodyState extends State<ColorPickerBody> {
  Color? selectedColor;

  @override
  void initState() {
    super.initState();
    selectedColor = widget.colors?.first;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: selectedColor,
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (_, index) {
              final item = widget.colors?[index];
              return InkWell(
                onTap: () {
                  setState(() {
                    selectedColor = item;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                    color: item,
                  ),
                ),
              );
            },
            itemCount: widget.colors?.length,
          ),
        )
      ],
    );
  }
}
