import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Default',
      home: ListViewExample()
    );
  }
}

class ListViewExample extends StatelessWidget {
  const ListViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Default'),
      ),
      body: ListView(
        children: [
          Container(
            height: 80,
            color: Colors.amber[900],
            child: const Center(child: Text('Entry A')),
          ),
          Container(
            height: 80,
            color: Colors.amber[800],
            child: const Center(child: Text('Entry B')),
          ),
          Container(
            height: 80,
            color: Colors.amber[700],
            child: const Center(child: Text('Entry C')),
          ),
          Container(
            height: 80,
            color: Colors.amber[600],
            child: const Center(child: Text('Entry D')),
          ),
          Container(
            height: 80,
            color: Colors.amber[500],
            child: const Center(child: Text('Entry E')),
          ),
          Container(
            height: 80,
            color: Colors.amber[400],
            child: const Center(child: Text('Entry F')),
          ),
          Container(
            height: 80,
            color: Colors.amber[300],
            child: const Center(child: Text('Entry G')),
          ),
          Container(
            height: 80,
            color: Colors.amber[200],
            child: const Center(child: Text('Entry H')),
          ),
          Container(
            height: 80,
            color: Colors.amber[100],
            child: const Center(child: Text('Entry I')),
          ),
          Container(
            height: 80,
            color: Colors.amber[50],
            child: const Center(child: Text('Entry J')),
          ),
        ],
      )
    );
  }
}

