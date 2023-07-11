import 'package:flutter/material.dart';

import '../../navigator/model/user.dart';

class FirstPage extends StatelessWidget {

  FirstPage({Key? key}) : super(key: key);

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                decoration: InputDecoration(hintText: 'Enter you age'),
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
                    // Navigate to second page
                  Navigator.pushNamed(context, '/second', arguments: user);
                },
                child: Text('Navigate to Second Page'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
