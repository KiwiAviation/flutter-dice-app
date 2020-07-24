import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice Roll',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dice Roll'),
        ),
        body: Center(
          child: DiceRoll(), //Text((rng.nextInt(6) + 1).toString()),
        ),
      ),
    );
  }
}

class DiceRoll extends StatefulWidget {
  @override
  _DiceRollState createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {
  var rng = new Random();
  int _roll = 1;

  List diceList = [
    AssetImage('assets/dice1.png'),
    AssetImage('assets/dice2.png'),
    AssetImage('assets/dice3.png'),
    AssetImage('assets/dice4.png'),
    AssetImage('assets/dice5.png'),
    AssetImage('assets/dice6.png'),
  ];

  void _newRoll() {
    setState(() {
      _roll = (rng.nextInt(6) + 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'Hit the \'+\' to generate a new roll!\n',
            ),
            new Image(
              image: diceList[_roll - 1],
            ),
            new Text('Your rolled ' + '$_roll'),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _newRoll,
        tooltip: 'New roll',
        child: new Icon(Icons.add),
      ),
    );
  }
}
