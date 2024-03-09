import 'package:flutter/material.dart';
import 'package:kdgaugeview/kdgaugeview.dart';

class ALLGAUGE extends StatelessWidget {
  const ALLGAUGE({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 90),
      padding: const EdgeInsets.all(20),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.,
        children: [
          Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 150,
                height: 150,
                child: PRE(),
              ),
              SizedBox(
                width: 150,
                height: 150,
                child: TEM(),
              ),
            ],
          ),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 150,
                height: 150,
                child: HUM(),
              ),
              SizedBox(
                width: 150,
                height: 150,
                child: SOIL(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PRE extends StatelessWidget {
  const PRE({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<KdGaugeViewState> gaugeKey = GlobalKey<KdGaugeViewState>();
    const double a = 30;
    const double b = 50;
    const double c = 80;
    // Call updateSpeed later in response to an event or as needed
    Future.delayed(const Duration(seconds: 3), () {
      gaugeKey.currentState
          ?.updateSpeed(0, animate: true, duration: const Duration(seconds: 2));
    });

    return Center(
      child: KdGaugeView(
        key: gaugeKey,
        minMaxTextStyle: const TextStyle(fontSize: 10, color: Colors.black),
        speedTextStyle: const TextStyle(fontSize: 30, color: Colors.amber),
        minSpeed: 0,
        maxSpeed: 100,
        speed: 100,
        animate: true,
        duration: const Duration(seconds: 2),
        alertSpeedArray: const [a, b, c],
        alertColorArray: const [
          Color.fromARGB(255, 0, 255, 85),
          Colors.indigo,
          Color.fromARGB(255, 244, 54, 70),
        ],
        gaugeWidth: 6,
        unitOfMeasurement: "PRE",
        unitOfMeasurementTextStyle:
            const TextStyle(fontSize: 20, color: Colors.green),
      ),
    );
  }
}

class SOIL extends StatelessWidget {
  const SOIL({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<KdGaugeViewState> gaugeKey = GlobalKey<KdGaugeViewState>();

    // Call updateSpeed later in response to an event or as needed
    Future.delayed(const Duration(seconds: 3), () {
      gaugeKey.currentState
          ?.updateSpeed(0, animate: true, duration: const Duration(seconds: 2));
    });

    return Center(
      child: KdGaugeView(
        key: gaugeKey,
        minMaxTextStyle: const TextStyle(fontSize: 10, color: Colors.black),
        speedTextStyle: const TextStyle(fontSize: 30, color: Colors.amber),
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
        gaugeWidth: 6,
        unitOfMeasurement: "SOIL",
        unitOfMeasurementTextStyle:
            const TextStyle(fontSize: 20, color: Colors.green),
      ),
    );
  }
}

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

    return Center(
      child: KdGaugeView(
        key: gaugeKey,
        minMaxTextStyle: const TextStyle(fontSize: 10, color: Colors.black),
        speedTextStyle: const TextStyle(fontSize: 30, color: Colors.amber),
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
        gaugeWidth: 6,
        unitOfMeasurement: "TEMP",
        unitOfMeasurementTextStyle:
            const TextStyle(fontSize: 20, color: Colors.green),
      ),
    );
  }
}

class HUM extends StatelessWidget {
  const HUM({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<KdGaugeViewState> gaugeKey = GlobalKey<KdGaugeViewState>();

    // Call updateSpeed later in response to an event or as needed
    Future.delayed(const Duration(seconds: 3), () {
      gaugeKey.currentState
          ?.updateSpeed(0, animate: true, duration: const Duration(seconds: 2));
    });

    return Center(
      child: KdGaugeView(
        key: gaugeKey,
        minMaxTextStyle: const TextStyle(fontSize: 10, color: Colors.black),
        speedTextStyle: const TextStyle(fontSize: 30, color: Colors.amber),
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
        gaugeWidth: 6,
        unitOfMeasurement: "HUM",
        unitOfMeasurementTextStyle: const TextStyle(
          fontSize: 20,
          color: Colors.green,
        ),
      ),
    );
  }
}
