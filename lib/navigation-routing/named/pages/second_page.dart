import 'package:flutter/material.dart';

import '../../navigator/model/user.dart';


class SecondPage extends StatelessWidget {

  User user;


  SecondPage(this.user);

  @override
  Widget build(BuildContext context) {

    // var name = ModalRoute.of(context)?.settings.name as String;
    // var user = ModalRoute.of(context)?.settings.arguments as User;

   // print('Route Name : $name');

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Second Route',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '''
                Name : ${user.name}
                Email : ${user.email}
                Age : ${user.age}
                ''',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go back'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
