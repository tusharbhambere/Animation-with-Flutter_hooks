import 'dart:async';

import 'package:day2_animation/src/Screen/Home/Widget/escape_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomeHooks extends HookWidget {
  const HomeHooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late DateTime _intialTime;
    final _escape = useState<Duration>(Duration.zero);

    useEffect(
      () {
        _intialTime = DateTime.now();
        Timer.periodic(const Duration(milliseconds: 200), (_) {
          final now = DateTime.now();
          _escape.value = now.difference(_intialTime);
        });
      },
      [],
    );

    return Scaffold(
      body: EscapeTimer(escaped: _escape.value),
    );
  }
}
