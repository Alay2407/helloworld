import 'package:flutter/material.dart';
import 'package:hello_world/navigation-routing/navigation-method/screens/first_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Method',
      home: FirstScreen(),
    );
  }
}
