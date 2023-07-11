/***
 * Create an application with radio buttons
 * (Add, Substraction, Multiply, Division) EditText
 * (number1, number2) and print result as per
 * user choice from radio button in TextView
 * ***/

import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final TextEditingController _number1Controller = TextEditingController();
  final TextEditingController _number2Controller = TextEditingController();

  //by default selected radio button in Add
  String _selectedButton = 'Add';
  //result is empty
  String _result = '';

  void _calculateResult() {
    double number1 = double.parse(_number1Controller.text);
    double number2 = double.parse(_number2Controller.text);
    double result = 0;

    setState(() {
      if (_selectedButton == 'Add') {
        result = number1 + number2;
        _result = '$number1 + $number2 = $result';
      } else if (_selectedButton == 'Subtract') {
        result = number1 - number2;
        _result = '$number1 - $number2 = $result';
      } else if (_selectedButton == 'Multiply') {
        result = number1 * number2;
        _result = '$number1 * $number2 = $result';
      } else if (_selectedButton == 'Divide') {
        if (number2 != 0) {
          result = number1 / number2;
          _result = '$number1 / $number2 = $result';
        } else {
          _result = 'Cannot divide by zero';
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Select Operation:',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Radio<String>(
                  value: 'Add',
                  groupValue: _selectedButton,
                  onChanged: (value) {
                    setState(() {
                      _selectedButton = value!;
                    });
                  },
                ),
                Text('Add'),
              ],
            ),
            Row(
              children: [
                Radio<String>(
                  value: 'Subtract',
                  groupValue: _selectedButton,
                  onChanged: (value) {
                    setState(() {
                      _selectedButton = value!;
                    });
                  },
                ),
                Text('Subtract'),
              ],
            ),
            Row(
              children: [
                Radio<String>(
                  value: 'Multiply',
                  groupValue: _selectedButton,
                  onChanged: (value) {
                    setState(() {
                      _selectedButton = value!;
                    });
                  },
                ),
                Text('Multiply'),
              ],
            ),
            Row(
              children: [
                Radio<String>(
                  value: 'Divide',
                  groupValue: _selectedButton,
                  onChanged: (value) {
                    setState(() {
                      _selectedButton = value!;
                    });
                  },
                ),
                Text('Divide'),
              ],
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _number1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Number 1',
              ),
            ),
            SizedBox(height: 8.0),
            TextFormField(
              controller: _number2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Number 2',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _calculateResult,
              child: Text('Calculate'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Result:',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              _result,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
