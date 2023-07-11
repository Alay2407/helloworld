import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shared Preference',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _salaryController = TextEditingController();

  int? age;
  double? salary;
  String? name;

  Future<void> _readRecord() async {
    try {
      var prefs = await SharedPreferences.getInstance();
      name = prefs.getString("NAME") ?? '';
      age = prefs.getInt('AGE') ?? 0;
      salary = prefs.getDouble('SALARY') ?? 0.0;
      // prefs.remove('NAME');
      // prefs.clear();
      setState(() {
        print('''
          name : $name
          age : $age
          salary : $salary
                      ''');
      });
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> _saveRecord(String name, int age, double salary) async {
    try {
      var prefs = await SharedPreferences.getInstance();
      await prefs.setString('NAME', name);
      await prefs.setInt('AGE', age);
      await prefs.setDouble('SALARY', salary);

      print('data saved successfully...');
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Preference'),
      ),
      body: Center(
          child: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(hintText: 'Enter Employee Name'),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _ageController,
              decoration: InputDecoration(hintText: 'Enter Age'),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _salaryController,
              decoration: InputDecoration(hintText: 'Enter Salary'),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    child: Text('Read Data'),
                    onPressed: () {
                      _readRecord();
                    },
                  ),
                ),
                SizedBox(
                  width: 24,
                ),
                Expanded(
                  child: ElevatedButton(
                    child: Text('Save Data'),
                    onPressed: () {
                      String name = _nameController.text.toString().trim();
                      int age = _ageController.text.isEmpty
                          ? 0
                          : int.parse(_ageController.text.toString().trim());
                      double salary = _salaryController.text.isEmpty
                          ? 0.0
                          : double.parse(
                              _salaryController.text.toString().trim());

                      print('''
                        name : $name
                        age : $age
                        salary : $salary
                      ''');

                      _saveRecord(name, age, salary);
                    },
                  ),
                )
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Text(name == null
                ? ''
                : '''
            name : $name  
            age : $age
            salary : $salary
            '''),
          ],
        ),
      )),
    );
  }
}
