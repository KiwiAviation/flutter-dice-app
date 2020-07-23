import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var rng = new Random();
    return MaterialApp(
      title: 'Dice Roll',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dice Roll'),
        ),
        body: Center(
          child: Text((rng.nextInt(6) + 1).toString()),
        ),
      ),
    );
  }
}
