import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Checkbox Widget',
      home: CheckBoxPage(),
    );
  }
}

class CheckBoxPage extends StatefulWidget {
  const CheckBoxPage({Key? key}) : super(key: key);

  @override
  State<CheckBoxPage> createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: CheckboxListTile(
          title: Text('Terms & Conditions', style: TextStyle(
            decoration: TextDecoration.underline
          ),),
          value: isChecked, onChanged: (value) {
            print(value);
          setState(() {
            isChecked = value!;
          });
        },)
      ),
    );
  }
}

