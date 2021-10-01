import 'package:day2_animation/src/Screen/Home/Widget/escape_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

class WithTicker extends StatefulWidget {
  const WithTicker({Key? key}) : super(key: key);

  @override
  _HomeTimerState createState() => _HomeTimerState();
}

class _HomeTimerState extends State<WithTicker>
    with SingleTickerProviderStateMixin {
  Duration _escape = Duration.zero;
  late final Ticker _ticker;

  @override
  void initState() {
    super.initState();

    _ticker = createTicker((elapsed) {
      setState(() {
        _escape = elapsed;
      });
    });
    _ticker.start();
  }

  @override
  void dispose() {
    super.dispose();
    _ticker.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Scaffold(body: EscapeTimer(escaped: _escape)));
  }
}
