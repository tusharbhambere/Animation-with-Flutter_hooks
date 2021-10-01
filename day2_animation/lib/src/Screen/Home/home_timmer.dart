import 'dart:async';

import 'package:day2_animation/src/Screen/Home/Widget/escape_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeTimer extends StatefulWidget {
  const HomeTimer({Key? key}) : super(key: key);

  @override
  _HomeTimerState createState() => _HomeTimerState();
}

class _HomeTimerState extends State<HomeTimer> {
  late DateTime _intialTime;
  Duration _escape = Duration.zero;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _intialTime = DateTime.now();
    _timer = Timer.periodic(const Duration(milliseconds: 500), (_) {
      final now = DateTime.now();
      setState(() {
        _escape = now.difference(_intialTime);
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Scaffold(body: EscapeTimer(escaped: _escape)));
  }
}
