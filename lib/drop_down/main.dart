import 'package:flutter/material.dart';

import 'model/Language.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dropdown',
      home: DropdownExample(),
    );
  }
}

class DropdownExample extends StatefulWidget {
  const DropdownExample({Key? key}) : super(key: key);

  @override
  State<DropdownExample> createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  //List<String> langList = ['Java', 'Dart', 'Python', 'Kotlin', 'C#', 'PHP'];
  List<Language> langList = [];
  String? selectedLanguage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    langList.add(Language(1, 'Kotlin'));
    langList.add(Language(2, 'Java'));
    langList.add(Language(3, 'Python'));
    langList.add(Language(4, 'Dart'));
    //selectedLanguage = langList[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Dropdown'),
      ),
      body: Center(
        child: DropdownButton(
          onChanged: (value) {
            setState(() {
              selectedLanguage = value;
              //print(selectedLanguage);
            });
          },
          /*isExpanded: true,*/
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          value: selectedLanguage,
          hint: const Text('Select Language'),
          items: langList
          .map((language) => DropdownMenuItem(
              value: language.title,
              child: Text(language.title)))
          .toList(),
        ),
      ),
    );
  }
}
