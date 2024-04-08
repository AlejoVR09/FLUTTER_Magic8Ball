import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: const Text('Ask me anything!'),
          backgroundColor: Colors.blueAccent,
        ),
        body: const MagicBall(),
      ),
    );
  }
}

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int answer = 3;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue),
            onPressed: () {
              setState(() {
                answer = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset('images/ball$answer.png')));
  }
}
