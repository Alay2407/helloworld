import 'package:flutter/material.dart';

import 'model/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'ListView', home: MyUserList());
  }
}

class MyUserList extends StatefulWidget {
  const MyUserList({Key? key}) : super(key: key);

  @override
  State<MyUserList> createState() => _MyUserListState();
}

class _MyUserListState extends State<MyUserList> {
  List<User> userList = [];
  List<User> checkedList = [];

  @override
  void initState() {
    super.initState();

    userList.add(User(id: 1, name: 'Denish', email: 'denish@gmail.com'));
    userList.add(User(id: 2, name: 'Alay', email: 'alay@gmail.com'));
    userList.add(User(id: 3, name: 'Parth', email: 'parth@gmail.com'));
    userList.add(User(
        id: 4, name: 'Shaily', email: 'shaily@gmail.com', isChecked: true));
    userList.add(User(id: 5, name: 'Meet', email: 'meet@gmail.com'));
    userList.add(User(id: 6, name: 'Parthiv', email: 'parthiv@gmail.com'));
    userList.add(
        User(id: 7, name: 'Kevin', email: 'kevin@gmail.com', isChecked: true));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Userlist'),
      ),
      body: ListView.builder(
        itemCount: userList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(userList[index].name),
            subtitle: Text(userList[index].email),
            leading: Icon(
              Icons.account_circle,
              size: 30,
            ),
            trailing: Checkbox(
              onChanged: (value) {
                setState(() {
                  userList[index].isChecked = value!;

                  if (value) {
                    checkedList.add(userList[index]);
                  } else {
                    checkedList.removeWhere(
                        (element) => element.id == userList[index].id);
                  }

                  print(checkedList);
                });
              },
              value: userList[index].isChecked,
            ),
            /*style: ListTileStyle.list,*/
            /*selected: index.isEven ? true : false,
            selectedTileColor: Colors.amber,*/
            /*splashColor: Colors.purple,*/
            /*enabled: index.isEven ? true : false,*/
            /*visualDensity: VisualDensity.adaptivePlatformDensity,*/
           onTap: () {

           },
          );
        },
      ),
    );
  }
}
