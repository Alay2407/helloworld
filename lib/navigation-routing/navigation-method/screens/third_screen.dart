import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Screen'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text('Third Screen'),
          ),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {

              Navigator.popUntil(context, ModalRoute.withName('/'));

           

             /* Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FirstScreen(),
                  ),
                  (route) => false);*/
            },
            child: Text('Navigate to First'),
          ),
        ],
      )),
    );
  }
}
