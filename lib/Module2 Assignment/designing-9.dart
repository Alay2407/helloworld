import 'package:flutter/material.dart';

void main() => runApp(ColorScreenApp());

class ColorScreenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ColorScreen(),
    );
  }
}

class ColorScreen extends StatefulWidget {
  @override
  _ColorScreenState createState() => _ColorScreenState();
}

class _ColorScreenState extends State<ColorScreen> {
  Color _selectedColor = Colors.red;

  dynamic _handleColorSelection(Color) {
    setState(() {
      _selectedColor = Color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _selectedColor,
      appBar: AppBar(
        title: Text('Color Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RadioListTile<Color>(
              title: const Text('Red'),
              value: Colors.red,
              groupValue: _selectedColor,

              onChanged: _handleColorSelection,
            ),
            RadioListTile<Color>(
              title: const Text('Green'),
              value: Colors.green,
              groupValue: _selectedColor,
              onChanged: _handleColorSelection,
            ),
            RadioListTile<Color>(
              title: const Text('Blue'),
              value: Colors.blue,
              groupValue: _selectedColor,
              onChanged: _handleColorSelection,
            ),
          ],
        ),
      ),
    );
  }
}
