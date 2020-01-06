import 'package:dice_roller/dice_playground.dart';
import 'package:flutter/material.dart';

void main() => runApp(DiceApp());

class DiceApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice Roller App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.green,
      ),
      home: DicePlayground(),
    );
  }
}
