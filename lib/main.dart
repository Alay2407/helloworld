import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyApp'),
        ),
        body: Container(
          color: Colors.indigoAccent,
            child: Row(
          children: [
            Container(
              color: Colors.yellow,
              height: 100,
              width: 100,
            ),
            SizedBox(width: 10,),
            Expanded(
              child: Container(
                color: Colors.black,
                height: 100,
                width: 100,
              ),
            ),
            SizedBox(width: 10,),
            Container(
              color: Colors.yellow,
              height: 100,
              width: 100,
            ),
          ],
        )),
      ),
    );
  }
}
