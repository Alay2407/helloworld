import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Media Query',
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double boxHeight = size.height * 0.5;
    double boxWidth = size.width * 0.5;

    Orientation orientation = MediaQuery.of(context).orientation;
    print('rotate');
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: orientation == Orientation.portrait
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: buildLayoutWidget(boxWidth),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: buildLayoutWidget(boxHeight),
                ),
        ));
  }

  buildLayoutWidget(double boxSize) {
    return [
      Container(
        width: boxSize,
        height: boxSize,
        color: Colors.red,
      ),
      Container(
        width: boxSize,
        height: boxSize,
        color: Colors.green,
      )
    ];
  }
}
