import 'dart:math';

import 'package:flutter/material.dart';

class ContainerAnimation extends StatefulWidget {
  const ContainerAnimation({Key? key}) : super(key: key);

  @override
  _ContainerAnimationState createState() => _ContainerAnimationState();
}

class _ContainerAnimationState extends State<ContainerAnimation> {
  double _width = 100;
  double _height = 100;
  BorderRadius borderRadius = BorderRadius.circular(20);
  Color _color = const Color.fromRGBO(100, 200, 20, 1);
  final random = Random();

  void _changingContainer() {
    setState(() {
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
          random.nextInt(300), random.nextInt(100), random.nextInt(500), 1);
      borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          height: _height,
          width: _width,
          decoration: BoxDecoration(color: _color, borderRadius: borderRadius),
          duration: const Duration(seconds: 1),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changingContainer,
        child: const Icon(Icons.ac_unit),
      ),
    );
  }
}
