import 'package:flutter/material.dart';
import 'package:hello_world/navigation-routing/navigator/routes/third_route.dart';


import '../model/user.dart';

class SecondRoute extends StatelessWidget {

  /*
  String name;
  String email;
  int age;


  SecondRoute({required this.name, required this.email, required this.age});
*/

  User user;

  SecondRoute(this.user);

  final _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Route'),
      ),
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
                name : ${user.name}
                email : ${user.email}
                age : ${user.age}
                ''',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _addressController,
                decoration: InputDecoration(hintText: 'Enter address'),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {

                  String address = _addressController.text.trim();

                  user.address = address;

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ThirdRoute(user),
                    ),
                  );
                },
                child: Text('Navigate to Third Route'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
