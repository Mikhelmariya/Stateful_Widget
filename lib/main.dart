import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const Stateful());
}

int number = 1;
int changeImage() {
  number = Random().nextInt(4);
  // to check whether onTap is working print random number in debugconsole
  print(number);
  if (number != 0) {
    return number;
  } else {
    return 4;
  }
}

class Stateful extends StatefulWidget {
  const Stateful({super.key});

  @override
  State<Stateful> createState() => _StatefulState();
}

class _StatefulState extends State<Stateful> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GestureDetector(
          onTap: () {
            setState(() {
              print("tapped");
              number = changeImage();
            });
          },
          child: Center(
            child: Container(
              height: 100,
              width: 100,
              child: Image.asset("images/image$number.png"),
            ),
          ),
        ),
      ),
    );
  }
}
