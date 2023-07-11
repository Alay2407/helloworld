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

    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: size.height/2,
           width: size.height*0.5,
          color: Colors.green,
          child: Text(
            '''
          screen height : ${size.height}
          screen width : ${size.width}
          ''',
            style: TextStyle(fontSize: size.height * 0.04),
          ),
        ),
      ),
    );
  }
}
