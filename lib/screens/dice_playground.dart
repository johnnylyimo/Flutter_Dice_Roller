import 'package:flutter/material.dart';
import 'dart:math';

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
      body: SafeArea(
        child: Playground(),
      ),
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
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage('images/dice$diceNo.jpg'),
            ),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              child: Text('Roll'),
              color: Theme.of(context).colorScheme.primary,
              textColor: Theme.of(context).colorScheme.secondary,
              splashColor: Theme.of(context).colorScheme.onSecondary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              elevation: 6.0,
              onPressed: () {
                setState(() {
                  diceNo = Random().nextInt(6) + 1;
                });
                _showToast(context, diceNo);
              },
            )
          ],
        ),
      ),
    );
  }
}

void _showToast(BuildContext context, int no) {
  final scaffold = Scaffold.of(context);

  scaffold.showSnackBar(SnackBar(
    content: Text(
      'Top Dice value: $no',
      textAlign: TextAlign.center,
    ),
    duration: Duration(milliseconds: 500),
    behavior: SnackBarBehavior.fixed,
    backgroundColor: Theme.of(context).colorScheme.primary,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
  ));
}
