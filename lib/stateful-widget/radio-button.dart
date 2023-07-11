import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Radio Widget',
      home: RadioExample(),
    );
  }
}

class RadioExample extends StatefulWidget {
  const RadioExample({Key? key}) : super(key: key);

  @override
  State<RadioExample> createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {

  var gender = 'female';

  void updateSelection(String? value) {
      setState(() {
        gender = value!;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Radio Button'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /*Row(
              children: [
                Radio(value: null, groupValue: null, onChanged: (value) {
                  // when radio get updated
                },),
                Text('Male')
              ],
            )*/

              RadioListTile(
                title: Text('Male'),
                value: 'male',
                groupValue: gender,
                onChanged: (value) {
                  updateSelection(value);
                },
              ),
              RadioListTile(
                title: Text('Female'),
                value: 'female',
                groupValue: gender,
                onChanged: (value) {
                  updateSelection(value);
                },
              ),
              RadioListTile(
                title: Text('Others'),
                value: 'other',
                groupValue: gender,
                onChanged: (value) {
                  updateSelection(value);
                },
              ),
            ],
          ),
        ));
  }


}
