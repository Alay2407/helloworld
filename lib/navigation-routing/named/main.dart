import 'package:flutter/material.dart';
import 'package:hello_world/navigation-routing/named/routes/routes.dart';


import '../navigator/model/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      /* home: FirstPage(),*/
      initialRoute: '/',
      /*routes: {
        '/' : (context) => FirstPage(),
        '/second' : (context) => SecondPage()
      },*/


     /* onGenerateRoute: (settings) {
        if (settings.name != null) {
          switch (settings.name) {
            case '/':
              return MaterialPageRoute(
                builder: (context) => FirstPage(),
              );
            case '/second':

              var user = settings.arguments as User;

              return MaterialPageRoute(
                builder: (context) => SecondPage(user),
              );
          }
        }
      },*/


      onGenerateRoute: AppRoute.generateRoute,
    );
  }
}
