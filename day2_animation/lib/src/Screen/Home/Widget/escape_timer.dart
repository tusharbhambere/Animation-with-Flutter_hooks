import 'package:flutter/material.dart';

class EscapeTimer extends StatelessWidget {
  final Duration escaped;
  const EscapeTimer({
    Key? key,
    required this.escaped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double _width = 24;
    //?minite
    final minute = escaped.inMinutes % 60;
    final minuteString = minute.toString().padLeft(2, '0');
    //!second
    final second = escaped.inSeconds % 60;
    final secondString = second.toString().padLeft(2, '0');
    //?Milisecond
    final miliSeconds = (escaped.inMilliseconds / 10) % 100;
    final miliSecondToString = miliSeconds.toStringAsFixed(0).padLeft(2, '0');
    return SizedBox.expand(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TimeDigit(
            time: minuteString.substring(0, 1),
            width: _width,
          ),
          TimeDigit(
            time: minuteString.substring(1, 2),
            width: _width,
          ),
          const TimeDigit(
            time: ':',
            width: 6,
          ),
          TimeDigit(
            time: secondString.substring(0, 1),
            width: _width,
          ),
          TimeDigit(
            time: secondString.substring(1, 2),
            width: _width,
          ),
          const TimeDigit(
            time: ':',
            width: 6,
          ),
          TimeDigit(
            time: miliSecondToString.substring(0, 1),
            width: _width,
          ),
          TimeDigit(
            time: miliSecondToString.substring(1, 2),
            width: _width,
          ),
        ],
      ),
    );
  }
}

class TimeDigit extends StatelessWidget {
  final String time;
  final double width;
  const TimeDigit({Key? key, required this.time, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Text(
        time,
        style: const TextStyle(color: Colors.white, fontSize: 30),
      ),
    );
  }
}
