import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Color.fromARGB(255, 2, 56, 120),
      appBar: AppBar(
        title: Text('Dice'),
      ),
      body: Dice(),
    ),
  ));
}

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void chage(){
    setState(() {
      leftDiceNumber= Random().nextInt(6)+1;
      rightDiceNumber = Random().nextInt(6) + 1;

    });
  }

  @override

  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {
                  chage();
                }, child: Image.asset('images/dice$leftDiceNumber.png')),
          ),
          // Expanded(
          //   child: TextButton(
          //       onPressed: () {
          //         chage();
          //       }, child: Image.asset('images/dice$rightDiceNumber.png')),
          // ),
        ],
      ),
    );
  }
}

