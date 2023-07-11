import 'package:flutter/material.dart';

void main() => runApp(BMICalc());

class BMICalc extends StatefulWidget {
  const BMICalc({Key? key}) : super(key: key);

  @override
  State<BMICalc> createState() => _MyAppState();
}

class _MyAppState extends State<BMICalc> {
  var weightController = TextEditingController();
  var ftController = TextEditingController();
  var inchController = TextEditingController();

  var result = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calc',
      home: Scaffold(
        appBar: AppBar(
          title: Text('BMI Calc'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'BMI',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                child: TextField(
                  controller: weightController,
                  decoration: InputDecoration(
                    label: Text('Enter Your Weight (Kg)'),
                    prefix: Icon(
                      Icons.line_weight,
                      color: Colors.blue,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                child: TextField(
                  controller: ftController,
                  decoration: InputDecoration(
                    label: Text('Enter Your Height (feet)'),
                    prefix: Icon(
                      Icons.line_weight,
                      color: Colors.blue,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                child: TextField(
                  controller: inchController,
                  decoration: InputDecoration(
                    label: Text('Enter Your Height (inch)'),
                    prefix: Icon(
                      Icons.line_weight,
                      color: Colors.blue,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  var wt = weightController.text.toString();
                  var ft = ftController.text.toString();
                  var inch = inchController.text.toString();

                  if (wt != '' && ft != '' && inch != '') {
                    var iwt = int.parse(wt);
                    var ift = int.parse(ft);
                    var iInch = int.parse(inch);

                    var tInch = (ift * 12) + iInch;
                    var tCm = tInch * 2.54;
                    var tM = tCm / 100;
                    var bmi = iwt / (tM * tM);

                    setState(() {
                      result = 'Your BMI result is = ${bmi.toStringAsFixed(3)}';
                    });
                  } else {
                    setState(() {
                      result = 'Please fill all the mandetory fields';
                    });
                  }
                },
                child: Text('Calculate BMI'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                result,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
    );
  }
}
