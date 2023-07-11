import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(SharedPre());

class SharedPre extends StatefulWidget {
  const SharedPre({Key? key}) : super(key: key);

  @override
  State<SharedPre> createState() => _SharedPreState();
}

class _SharedPreState extends State<SharedPre> {

  var _text = TextEditingController();

  var textData = 'No data found';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'shared preference',
      home: Scaffold(
        appBar: AppBar(
          title: Text('shared preference'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextFormField(
              controller: _text,
            ),
            ElevatedButton(
              onPressed: () async {
                var name = _text.text.toString();

                var preff = await SharedPreferences.getInstance();

                preff.setString('name', name);
                getData();
              },
              child: Text('Save Data'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(textData)
          ]),
        ),
      ),
    );
  }


  Future<void> getData() async {

    var preff = await SharedPreferences.getInstance();

    var getText = preff.getString('name');

    textData = getText ?? "No data available";
    setState(() {

    });
  }
}
