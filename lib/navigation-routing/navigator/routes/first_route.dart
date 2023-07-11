import 'package:flutter/material.dart';
import 'package:hello_world/navigation-routing/navigator/routes/second_route.dart';

import '../model/user.dart';

class FirstRoute extends StatelessWidget {
  FirstRoute({Key? key}) : super(key: key);

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(hintText: 'Enter name'),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(hintText: 'Enter email'),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _ageController,
                decoration: InputDecoration(hintText: 'Enter age'),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  String name = _nameController.text.trim();
                  String email = _emailController.text.trim();
                  int age = (_ageController.text.isEmpty)
                      ? 0
                      : int.parse(_ageController.text.trim());

                  User user = User(name: name, email: email, age: age);

                  print('''
                  name : ${user.name}
                  email : ${user.email} 
                  age : ${user.age}  
                  ''');

                  // navigate to Second Route
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondRoute(user),
                    ),
                  );
                },
                child: Text('Navigate to Second Route'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
