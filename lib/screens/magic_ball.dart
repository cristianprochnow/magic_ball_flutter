import 'dart:math';

import 'package:flutter/material.dart';

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int imageIndex = 1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double padding = 32;

    return Center(
      child: SizedBox(
        height: size.height,
        width: size.width,
        child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.all(padding),
          ),
          onPressed: onPressedMagicBall,
          child: Image.asset("assets/images/ball$imageIndex.png"),
        ),
      ),
    );
  }

  void onPressedMagicBall() {
    setState(() {
      imageIndex = generateRandomNumber();
    });
  }

  int generateRandomNumber() {
    return Random().nextInt(5) + 1;
  }
}
