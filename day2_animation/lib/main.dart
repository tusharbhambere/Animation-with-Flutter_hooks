import 'package:day2_animation/src/Screen/Ticker/ticker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        home: const AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: Scaffold(
              body: Center(
            child: Padding(
              padding: EdgeInsets.all(32.0),
              child: AspectRatio(aspectRatio: 0.8, child: WithTicker()),
            ),
          )),
        ));
  }
}
