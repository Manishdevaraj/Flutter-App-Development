import 'package:flutter/material.dart';
import 'package:kdgaugeview/kdgaugeview.dart';

class TEM extends StatelessWidget {
  const TEM({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<KdGaugeViewState> gaugeKey = GlobalKey<KdGaugeViewState>();

    // Call updateSpeed later in response to an event or as needed
    Future.delayed(const Duration(seconds: 3), () {
      gaugeKey.currentState
          ?.updateSpeed(0, animate: true, duration: const Duration(seconds: 2));
    });

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: KdGaugeView(
            key: gaugeKey,
            minSpeed: 0,
            maxSpeed: 100,
            speed: 100,
            animate: true,
            duration: const Duration(seconds: 2),
            alertSpeedArray: const [30, 50, 80],
            alertColorArray: const [
              Color.fromARGB(255, 0, 255, 85),
              Colors.indigo,
              Color.fromARGB(255, 244, 54, 70),
            ],
            unitOfMeasurement: "TEMP",
          ),
        ),
      ),
    );
  }
}
