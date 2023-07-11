import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'ListView', home: MyPage());
  }
}

class MyPage extends StatelessWidget {
  MyPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: ListView(
          reverse: true,
          /*padding: EdgeInsets.all(16),*/
          /*physics: NeverScrollableScrollPhysics(),*/
          children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16),
              ),
              height: 100,
              child: Text(
                'Green',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16),
              ),
              height: 100,
              child: Text(
                'Orange',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16),
              ),
              height: 100,
              child: Text(
                'Blue',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16),
              ),
              height: 100,
              child: Text(
                'Black',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16),
              ),
              height: 100,
              child: Text(
                'Red',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16),
              ),
              height: 100,
              child: Text(
                'Green',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16),
              ),
              height: 100,
              child: Text(
                'Orange',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16),
              ),
              height: 100,
              child: Text(
                'Blue',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ));
  }
}
