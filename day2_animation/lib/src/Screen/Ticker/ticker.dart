import 'package:day2_animation/src/Clock/clock_page.dart';
import 'package:day2_animation/src/Clock/widget/reset_button.dart';
import 'package:day2_animation/src/Clock/widget/start_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class WithTicker extends StatefulWidget {
  const WithTicker({Key? key}) : super(key: key);

  @override
  _HomeTimerState createState() => _HomeTimerState();
}

class _HomeTimerState extends State<WithTicker>
    with SingleTickerProviderStateMixin {
  Duration _previouslyEscaped = Duration.zero;
  Duration _curentlyEscaped = Duration.zero;
  Duration get _escape => _previouslyEscaped + _curentlyEscaped;
  late final Ticker _ticker;
  bool isRunning = false;

  @override
  void initState() {
    super.initState();

    _ticker = createTicker((elapsed) {
      setState(() {
        _curentlyEscaped = elapsed;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _ticker.dispose();
  }

  void _toggleButton() {
    setState(() {
      isRunning = !isRunning;
      if (isRunning) {
        _ticker.start();
      } else {
        _ticker.stop();
        _previouslyEscaped += _curentlyEscaped;
        _curentlyEscaped = Duration.zero;
      }
    });
  }

  void _restToggle() {
    _ticker.stop();

    setState(() {
      isRunning = false;
      _previouslyEscaped = Duration.zero;
      _curentlyEscaped = Duration.zero;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final radius = constraints.maxWidth / 2;
      return Scaffold(
          body: Stack(
        children: [
          MainClock(radius: radius, escaped: _escape),
          Align(
            alignment: Alignment.bottomLeft,
            child: SizedBox(
                height: 80,
                width: 80,
                child: ResetButton(onpress: _restToggle)),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
                height: 80,
                width: 80,
                child: StartStopButton(
                  onpress: _toggleButton,
                  isRunning: isRunning,
                )),
          )
        ],
      ));
    });
  }
}
