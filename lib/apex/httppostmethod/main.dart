import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'DataModel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

Future<DataModel?> submitData(String name, String job) async {
  var response = await http.post(Uri.https('reqres.in', 'api/users'),
      body: {'name': name, 'job': job});
  var data = response.body;
  print(data);
  if (response.statusCode == 201) {
    String responseData = response.body;
    DataModel.fromJson(responseData);
  } else {
    return null;
  }
}

class _HomePageState extends State<HomePage> {
  DataModel? _dataModel;
  TextEditingController nameController = TextEditingController();
  TextEditingController jobController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Http Post method'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          child: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Enter Name'),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: jobController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Enter Job Title'),
              ),
              SizedBox(
                height: 20,
              ),
              _dataModel == null
                  ? CircularProgressIndicator()
                  : Text(
                      'User is ${_dataModel!.name} and created at ${_dataModel!.createdAt}'),
              ElevatedButton(
                onPressed: () async {
                  String name = nameController.text;
                  String job = jobController.text;

                  DataModel? data = await submitData(name, job);
                  setState(() {
                    _dataModel = data;
                  });
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
