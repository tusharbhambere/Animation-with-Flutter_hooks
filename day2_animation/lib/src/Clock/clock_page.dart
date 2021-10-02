import 'dart:math';

import 'package:day2_animation/src/Clock/widget/clock_hand.dart';
import 'package:day2_animation/src/Clock/widget/clock_ticker_marker.dart';
import 'package:day2_animation/src/Screen/Home/Widget/escape_timer.dart';
import 'package:flutter/material.dart';

class MainClock extends StatelessWidget {
  const MainClock({Key? key, required this.escaped, required this.radius})
      : super(key: key);

  final Duration escaped;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        for (var i = 0; i < 60; i++)
          Positioned(
              left: radius,
              top: radius,
              child: ClockTickerMarker(seconds: i, radius: radius)),
        for (var i = 5; i <= 60; i += 5)
          Positioned(
            left: radius,
            top: radius,
            child: ClockTextMarker(value: i, maxValue: 60, radius: radius),
          ),
        Positioned(
          left: radius,
          top: radius,
          child: ClockHand(
              rotationAnglez: pi + (2 * pi / 60000) * escaped.inMilliseconds,
              handThickness: 2,
              handLenghth: radius,
              color: Colors.orange),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: radius * 1.3,
          child: EscapeTimer(
            escaped: escaped,
          ),
        )
      ],
    );
  }
}
