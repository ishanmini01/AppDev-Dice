import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicey')),
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
  int leftDno = 1;
  int rightDno = 1;

  void changeDface() {
    setState(() {
      leftDno = Random().nextInt(6) + 1;
      rightDno = Random().nextInt(6) + 1;
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
                changeDface();
              },
              child: Image.asset('images/dice$leftDno.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDface();
              },
              child: Image.asset('images/dice$rightDno.png'),
            ),
          ),
        ],
      ),
    );
  }
}
