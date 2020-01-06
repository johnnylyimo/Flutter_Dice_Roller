import 'package:dice_roller/dice_playground.dart';
import 'package:flutter/material.dart';

void main() => runApp(DiceApp());

class DiceApp extends StatelessWidget {
  // This widget is the root of your application.

  final TextTheme textTheme = TextTheme(
    title: TextStyle(
      fontSize: 20.0,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice Roller App',
      theme: ThemeData(
        textTheme: textTheme,
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.green,
      ),
      home: DicePlayground(),
    );
  }
}
