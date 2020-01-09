import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice Random'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1;
  int rightDicNum = 1;
  void getRandomNuM() {
    setState(() {
      rightDicNum = Random().nextInt(6) + 1;
      leftDiceNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    getRandomNuM();
                  },
                  child: Image.asset("images/dice$leftDiceNum.png"))),
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    getRandomNuM();
                  },
                  child: Image.asset("images/dice$rightDicNum.png"))),
        ],
      ),
    );
  }
}
