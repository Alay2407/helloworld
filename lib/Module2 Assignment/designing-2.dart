import 'package:flutter/material.dart';

void main() {
  runApp(NumberSequenceApp());
}

class NumberSequenceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sequence Number',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InputScreen(),
    );
  }
}

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {


  final _startNumberController = TextEditingController();
  final _endNumberController = TextEditingController();

  @override
  void dispose() {
    _startNumberController.dispose();
    _endNumberController.dispose();
    super.dispose();
  }

  void _sequenceNumberScreen() {
      final int startNumber = int.parse(_startNumberController.text);
      final int endNumber = int.parse(_endNumberController.text);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => NumberSequenceScreen(
            startNumber: startNumber,
            endNumber: endNumber,
          ),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sequence Number'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(

          child: Column(
            children: [
              TextFormField(
                controller: _startNumberController,
                keyboardType: TextInputType.number,

                decoration: InputDecoration(
                  labelText: 'Start Number',
                ),
              ),
              TextFormField(
                controller: _endNumberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'End Number',
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _sequenceNumberScreen,
                child: Text('Show Number Sequence'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NumberSequenceScreen extends StatelessWidget {
  final int startNumber;
  final int endNumber;

  NumberSequenceScreen({
    required this.startNumber,
    required this.endNumber,
  });

  List<int> numberSequence() {
    List<int> sequence = [];
    for (int i = startNumber + 1; i < endNumber; i++) {
      sequence.add(i);
    }
    return sequence;
  }

  @override
  Widget build(BuildContext context) {
    List<int> sequence = numberSequence();
    return Scaffold(
      appBar: AppBar(
        title: Text('Between two numbers'),
      ),
      body: ListView.builder(
        itemCount: sequence.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(sequence[index].toString()),
          );
        },
      ),
    );
  }
}
