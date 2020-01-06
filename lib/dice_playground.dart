import 'package:flutter/material.dart';

class DicePlayground extends StatelessWidget {
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
      body: Playground(),
    );
  }
}

class Playground extends StatefulWidget {
  @override
  _PlaygroundState createState() => _PlaygroundState();
}

class _PlaygroundState extends State<Playground> {
  int diceNo = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image(
          image: AssetImage('images/dice$diceNo.jpg'),
        ),
        SizedBox(
          height: 20.0,
        )
      ],
    );
  }
}
