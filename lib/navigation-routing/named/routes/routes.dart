import 'package:flutter/material.dart';
import '../../navigator/model/user.dart';
import '../pages/error_page.dart';
import '../pages/first_page.dart';
import '../pages/second_page.dart';

class  AppRoute {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
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
        default:
          return MaterialPageRoute(
            builder: (context) => ErrorPage(),
          );
      }
    }
  }
}


