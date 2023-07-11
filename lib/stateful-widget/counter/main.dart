import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  int counter = 0;

  void increaseValue(){
    setState(() {
      counter++;
      print('$counter');
    });

  }

  void decreaseValue(){
    // redraw widget tree
    setState(() {
      counter--;
      print('$counter');
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build method called');
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                // decrease value
                decreaseValue();
              },
              child: Text(
                '-',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Text(
              '$counter',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            ElevatedButton(
              onPressed: () {
                // increase value
                increaseValue();
              },
              child: Text(
                '+',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
