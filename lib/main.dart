import 'package:dice_roller/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(DiceApp());

class DiceApp extends StatelessWidget {
  // This widget is the root of your application.

  final TextTheme textTheme = TextTheme(
    title: TextStyle(
      fontSize: 28.0,
      color: Colors.white,
    ),
    subtitle: TextStyle(
      fontSize: 30.0,
      color: Colors.green,
    ),
  );

  final ColorScheme colorScheme = ColorScheme.light(
      primary: Colors.green,
      secondary: Colors.white,
      onSecondary: Colors.white70);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice Roller App',
      theme: ThemeData(
        colorScheme: colorScheme,
        textTheme: textTheme,
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.green,
      ),
      home: SplashScreen(),
    );
  }
}
