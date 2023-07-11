import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: ChangeBackground(),
    ));

class ChangeBackground extends StatefulWidget {
  const ChangeBackground({Key? key}) : super(key: key);

  @override
  State<ChangeBackground> createState() => _ChangeBackgroundState();
}

class _ChangeBackgroundState extends State<ChangeBackground> {
  var colorList = <Color>[
    Colors.white,
    Colors.lightGreenAccent,
    Colors.indigo,
    Colors.orange,
    Colors.cyanAccent
  ];
  var selectedColor = Colors.white;
  void getRandomColor() {
    var index = Random().nextInt(colorList.length - 1);
    setState(() {
      selectedColor = colorList[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: selectedColor,
      appBar: AppBar(
        title: Text('Changing Background'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  getRandomColor();
                },
                child: Text('Change Color Randomly'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
