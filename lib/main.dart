import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:thaqib_proj_ardino/all_gauges.dart';

void main() {
  runApp(const ANI());
}

class ANI extends StatelessWidget {
  const ANI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
          splash: Image.asset('assets/speed.ico'),
          backgroundColor: Colors.amberAccent,
          nextScreen: const MYAPP()),
    );
  }
}

class MYAPP extends StatelessWidget {
  const MYAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "WEATHER BOT",
            style: TextStyle(color: Colors.amber),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body:
            PageView(children: const [ALLGAUGE(), TEM(), HUM(), PRE(), SOIL()]),
      ),
    );
  }
}
