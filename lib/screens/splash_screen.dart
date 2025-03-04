import 'package:dice_roller/screens/dice_playground.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => DicePlayground(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            'Dice Roller Game',
            style: Theme.of(context).textTheme.subtitle,
          ),
          FlutterLogo(
            colors: Theme.of(context).colorScheme.primary,
            size: 300,
          ),
          Text(
            'Enjoy the Game!',
            style: Theme.of(context).textTheme.subtitle,
          )
        ],
      ),
    );
  }
}
