import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Designing - 1',
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  var message = '';

  var colorList = <Color>[Colors.white, Colors.red, Colors.amber, Colors.green, Colors.purple, Colors.orange];
  var selectedColor = Colors.white;//this is by-default color

  void getRandomColor() {
    var index = Random().nextInt(colorList.length-1);
    print('index : $index');
    setState(() {
      selectedColor = colorList[index];
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: selectedColor,
      appBar: AppBar(
        title: Text('Designing - 1'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (value) {
                  //print(value);
                  setState(() {
                    message = value;
                  });
                },
                decoration: InputDecoration(hintText: 'Enter message'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                message.characters.toList().reversed.join(''),
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  getRandomColor();
                },
                child: Text('Change BG-Color'),
              ),
            ],
          ),
        ),
      ),
    );
  }


}
