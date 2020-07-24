import 'package:flutter/material.dart';
import 'dart:math';

// Made with love by Sisan Sahu
//instagram : sisansahu
//github    : sisansahu1

void main() {
  runApp(DiceApp());
}

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void rollDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text(
          'Dice Roller',
          style: TextStyle(color: Colors.black38),
        ),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    child: Image.asset('images/dice$leftDiceNumber.png'),
                    onPressed: () {
                      rollDice();
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child: Image.asset('images/dice$rightDiceNumber.png'),
                    onPressed: () {
                      rollDice();
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Click the dice to roll',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 40,
                  color: Colors.black12),
            )
          ],
        ),
      ),
    ));
  }
}
