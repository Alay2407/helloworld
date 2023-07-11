import 'package:flutter/material.dart';

import '../model/user.dart';

class ThirdRoute extends StatelessWidget {

 /* String name;
  String email;
  int age;
  String address;


  ThirdRoute(this.name, this.email, this.age, this.address);*/

  User user;


  ThirdRoute(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Route'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Third Route', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
              SizedBox(
                height: 10,
              ),
              Text(
                '''
                name : ${user.name}
                email : ${user.email}
                age : ${user.age}
                address : ${user.address}
                ''',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10,),

              ElevatedButton(
                onPressed: () {

                  Navigator.pop(context);

                },
                child: Text('Go Back'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
