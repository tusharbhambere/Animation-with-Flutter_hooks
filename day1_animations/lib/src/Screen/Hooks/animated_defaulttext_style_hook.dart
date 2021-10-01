import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DefaultTextStylehook extends HookWidget {
  const DefaultTextStylehook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = useState<double>(100);
    final _first = useState<bool>(false);
    final _color = useState<Color>(Colors.redAccent);
    final random = Random();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Default TextStyke Hooks'),
      ),
      body: SizedBox.expand(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedDefaultTextStyle(
              child: const Text('Hellow'),
              style: TextStyle(fontSize: _size.value, color: _color.value),
              duration: const Duration(seconds: 1)),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                _first.value = true;
                _size.value = random.nextInt(100).toDouble();
                _color.value = Color.fromRGBO(random.nextInt(257),
                    random.nextInt(257), random.nextInt(257), 1);
              },
              child: const Text('Click me'))
        ],
      )),
    );
  }
}
