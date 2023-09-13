import 'package:flutter/material.dart';

import 'package:magic_ball_flutter/screens/magic_ball.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  final Color colorTheme = Colors.blueGrey;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: colorTheme,
          title: const Text('Vida, Verdade e o Universo!'),
        ),
        backgroundColor: colorTheme,
        body: const MagicBall(),
      ),
    );
  }
}
