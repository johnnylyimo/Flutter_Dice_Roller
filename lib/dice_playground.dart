import 'package:flutter/material.dart';

class DicePlayground extends StatefulWidget {
  @override
  _DicePlaygroundState createState() => _DicePlaygroundState();
}

class _DicePlaygroundState extends State<DicePlayground> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Dice Roller',
            style: Theme.of(context).textTheme.title,
          ),
        ),
      ),
    );
  }
}
