import 'package:flutter/material.dart';
import 'package:kdgaugeview/kdgaugeview.dart';

void main() {
  runApp(const PRE());
}

class PRE extends StatefulWidget {
  const PRE({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PREState createState() => _PREState();
}

class _PREState extends State<PRE> {
  GlobalKey<KdGaugeViewState> gaugeKey = GlobalKey<KdGaugeViewState>();

  @override
  Widget build(BuildContext context) {
    // Create the gauge initially
    return Center(
      child: KdGaugeView(
        key: gaugeKey,
        // inactiveGaugeColor: Colors.green,
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

        unitOfMeasurement: "PRE",
        unitOfMeasurementTextStyle:
            const TextStyle(fontSize: 20, color: Colors.green),
      ),
    );
  }

  // Call this method to update the gauge speed dynamically
  void updateGaugeSpeed(double speed) {
    if (mounted) {
      setState(() {
        gaugeKey.currentState?.updateSpeed(speed,
            animate: true, duration: const Duration(seconds: 2));
      });
    }
  }
}
