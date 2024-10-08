// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple), home: HomePage()));
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var count = 0;

  void decrease() {
    if (count > 0) {
      count--;
    }
    setState(() {});
  }

  void increment() {
    count++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu Primeiro App"),
      ),
      body: Stack(
        children: [
          Center(
            child: Text(
              'Contador\n $count',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
            ),
          ),
          Positioned(
            left: 30,
            bottom: 30,
            child: FloatingActionButton(
              heroTag: "decrement",
              child: Icon(Icons.remove),
              onPressed: () {
                decrease();
              },
            ),
          ),
          Positioned(
            right: 30,
            bottom: 30,
            child: FloatingActionButton(
              heroTag: "increment",
              child: Icon(Icons.add),
              onPressed: () {
                increment();
              },
            ),
          ),
        ],
      ),
    );
  }
}
