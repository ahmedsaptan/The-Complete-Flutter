import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dicee"),
          backgroundColor: Colors.red,
        ),
        backgroundColor: Colors.red,
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftNumberDice = 1;
  int rightNumberDice = 2;

  void changeDice() {
    setState(() {
      leftNumberDice = Random().nextInt(6) + 1;
      rightNumberDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDice();
              },
              child: Image.asset("images/dice$leftNumberDice.png"),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDice();
              },
              child: Image.asset("images/dice$rightNumberDice.png"),
            ),
          )
        ],
      ),
    );
  }
}
