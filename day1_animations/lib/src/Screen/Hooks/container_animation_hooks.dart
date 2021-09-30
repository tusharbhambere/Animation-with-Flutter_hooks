import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ContainerAniHooks extends HookWidget {
  const ContainerAniHooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = useState<double>(100);
    final _height = useState<double>(100);
    final _color = useState<Color>(const Color.fromRGBO(100, 200, 20, 1));
    final borderRadius = useState<BorderRadius>(BorderRadius.circular(20));

    final random = Random();

    void _changingContainer() {
      _width.value = random.nextInt(300).toDouble();
      _height.value = random.nextInt(300).toDouble();
      _color.value = Color.fromRGBO(
          random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);
      borderRadius.value = BorderRadius.circular(random.nextInt(50).toDouble());
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation With Hooks'),
      ),
      body: Center(
        child: AnimatedContainer(
          height: _height.value,
          width: _width.value,
          decoration: BoxDecoration(
              color: _color.value, borderRadius: borderRadius.value),
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
