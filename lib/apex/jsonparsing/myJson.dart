import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'myjsonmodel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Future<MyJson> loadMyJson() async {
    String jsonString = await rootBundle.loadString('assets/my_json.json');
    Map<String, dynamic> jsonData = jsonDecode(jsonString);
    return MyJson.fromJson(jsonData);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: FutureBuilder(
          future: loadMyJson(),
          builder: (BuildContext context, AsyncSnapshot<MyJson> snapshot) {
            if (!snapshot.hasData) {
              CircularProgressIndicator();
            }
            MyJson model = snapshot.data!;
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                      'Name is = ${model.name} \n surname is = ${model.surname}',
                      style: TextStyle(fontSize: 25)),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
