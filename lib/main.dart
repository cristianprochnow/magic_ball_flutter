import 'package:flutter/material.dart';
import 'package:magic_ball_flutter/screens/magic_ball.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    const Color colorTheme = Colors.blueGrey;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: colorTheme,
          title: const Text('Responda suas perguntas!'),
        ),
        backgroundColor: colorTheme,
        body: const MagicBall(),
      ),
    );
  }
}
