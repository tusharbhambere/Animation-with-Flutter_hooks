import 'package:day1_animations/src/Widget/first_child.dart';
import 'package:flutter/material.dart';

class AnimatedPositions extends StatefulWidget {
  const AnimatedPositions({Key? key}) : super(key: key);

  @override
  _AnimatedPositionState createState() => _AnimatedPositionState();
}

class _AnimatedPositionState extends State<AnimatedPositions> {
  double _up = -300;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modal Barrier'),
      ),
      body: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _up = 300;
                  });
                },
                child: const Text('Show Widget')),
            AnimatedPositioned(
              child: const FirstChild(),
              duration: const Duration(seconds: 1),
              bottom: _up,
            )
          ],
        ),
      ),
    );
  }
}
