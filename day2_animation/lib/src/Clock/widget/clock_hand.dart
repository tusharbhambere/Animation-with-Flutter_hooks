import 'package:flutter/material.dart';

class ClockHand extends StatelessWidget {
  const ClockHand(
      {Key? key,
      required this.rotationAnglez,
      required this.handThickness,
      required this.handLenghth,
      required this.color})
      : super(key: key);
  final double rotationAnglez;
  final double handThickness;
  final double handLenghth;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.topCenter,
      transform: Matrix4.identity()
        ..translate(-handThickness / 2, 0, 0)
        ..rotateZ(rotationAnglez),
      child: Container(
        height: handLenghth,
        width: handThickness,
        color: color,
      ),
    );
  }
}
