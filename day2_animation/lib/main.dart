import 'package:day2_animation/src/Screen/Ticker/hooks_ticker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ).copyWith(scaffoldBackgroundColor: Colors.black),
      home: const TickerHooked(),
    );
  }
}
