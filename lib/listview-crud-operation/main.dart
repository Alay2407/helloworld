import 'dart:math';

import 'package:flutter/material.dart';

import '../listview-crud-operation/model/user.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView CRUD',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<User> userList = [];

  void insertUser(User user, BuildContext context) {
    setState(() {
      userList.add(user);
      Navigator.pop(context);
    });
  }

  void deleteUser(User user) {
    setState(() {
      userList.removeWhere((element) => element.id == user.id);
    });
  }

  void updateUser(User user, BuildContext context) {
    var index = userList.indexWhere((element) => element.id == user.id);

    setState(() {
      userList[index] = user;
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
      ),
      body: ListView.builder(
        itemCount: userList.length,
        itemBuilder: (context, index) {
          User user = userList[index];
          //print('id : ${user.id}');
          return ListTile(
            onTap: () {
              showBottomSheetDialog(context, user);
            },
            leading: Icon(
              Icons.account_circle,
              size: 30,
            ),
            title: Text(user.name),
            subtitle: Text(user.email),
            trailing: IconButton(
              onPressed: () {
                deleteUser(user);
              },
              icon: Icon(Icons.delete),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showBottomSheetDialog(context, null);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void showBottomSheetDialog(BuildContext context, User? mUser) {
    final _nameController = TextEditingController();
    final _emailController = TextEditingController();

    if (mUser != null) {
      // update
      _nameController.text = mUser.name;
      _emailController.text = mUser.email;
    }

    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.fromLTRB(
                16, 16, 16, MediaQuery.of(context).viewInsets.bottom + 16),
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: _nameController,
                    decoration: InputDecoration(labelText: 'Enter name'),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(labelText: 'Enter email'),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String _name = _nameController.text.toString().trim();
                      String _email = _emailController.text.toString().trim();

                      int _id =
                          mUser != null ? mUser.id : Random().nextInt(9999);

                      //  print('name : $_name  email : $_email');
                      var user = User(id: _id, name: _name, email: _email);

                      if (mUser == null) {
                        insertUser(user, context);
                      } else {
                        updateUser(user, context);
                      }
                    },
                    child: Text(mUser == null ? 'Insert' : 'Update'),
                  )
                ],
              ),
            ),
          );
        },
        isScrollControlled: true);
  }
}
