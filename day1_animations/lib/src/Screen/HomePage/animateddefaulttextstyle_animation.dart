import 'dart:math';

import 'package:flutter/material.dart';

class DefaultAnimatedTextStyle extends StatefulWidget {
  const DefaultAnimatedTextStyle({Key? key}) : super(key: key);

  @override
  _DefaultAnimatedTextStyleState createState() =>
      _DefaultAnimatedTextStyleState();
}

class _DefaultAnimatedTextStyleState extends State<DefaultAnimatedTextStyle> {
  double _size = 100;
  bool _first = false;
  Color _color = Colors.redAccent;
  final random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Default TextStyke'),
      ),
      body: SizedBox.expand(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedDefaultTextStyle(
              child: const Text('Hellow'),
              style: TextStyle(fontSize: _size, color: _color),
              duration: const Duration(seconds: 1)),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _first = true;
                  _size = random.nextInt(100).toDouble();
                  _color = Color.fromRGBO(random.nextInt(257),
                      random.nextInt(257), random.nextInt(257), 1);
                });
              },
              child: const Text('Click me'))
        ],
      )),
    );
  }
}
