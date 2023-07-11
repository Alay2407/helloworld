import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dialog',
      home: DialogPage(),
    );
  }
}

class DialogPage extends StatelessWidget {
  const DialogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () async {
              // Alert Dialog
              var result = await showAlertDialog(context);
              print(result);
            },
            child: Text('Alert Dialog'),
          ),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () async {
              // Simple Dialog
              var result = await showSimpleDialog(context);
              print(result);
            },
            child: Text('Simple Dialog'),
          ),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () async {
              // Custom Dialog
              showCustomDialog(context);
            },
            child: Text('Custom Dialog'),
          )
        ],
      )),
    );
  }

  Future<dynamic> showAlertDialog(BuildContext context) {
    return showDialog(
      context: context,
      /*barrierDismissible: false,*/
      builder: (context) {
        return AlertDialog(
          /*icon: Icon(Icons.account_circle),*/
          title: Text('Logout'),
          content:
              Text('are you sure you want to logout from this application?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context, 'logout');
              },
              child: Text('Logout'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  Future<dynamic> showSimpleDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text('Select language'),
          children: [
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, 'Java');
              },
              child: Text('Java'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, 'Dart');
              },
              child: Text('Dart'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, 'Kotlin');
              },
              child: Text('Kotlin'),
            )
          ],
        );
      },
    );
  }

  void showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('DHIREN'),
            Text('SIR'),
            Text('PATEL'),
          ],
        ));
      },
    );
  }
}
