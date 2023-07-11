import 'package:flutter/material.dart';

import 'package:hello_world/navigation-routing/navigator/routes/first_route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation and Routing',
      home: FirstRoute(),
    );
  }
}




