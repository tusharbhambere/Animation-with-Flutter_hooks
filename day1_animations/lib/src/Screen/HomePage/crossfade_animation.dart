import 'package:day1_animations/src/Widget/first_child.dart';
import 'package:day1_animations/src/Widget/second_child.dart';

import 'package:flutter/material.dart';

class CrossFadeAnimation extends StatefulWidget {
  const CrossFadeAnimation({Key? key}) : super(key: key);

  @override
  _CrossFeedAnimationState createState() => _CrossFeedAnimationState();
}

class _CrossFeedAnimationState extends State<CrossFadeAnimation> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crossfade'),
      ),
      body: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
                firstChild: InkWell(
                  onTap: () {
                    setState(() {
                      _selected = true;
                    });
                  },
                  child: const FirstChild(),
                ),
                secondChild: InkWell(
                  onTap: () {
                    setState(() {
                      _selected = false;
                    });
                  },
                  child: const SecondChild(),
                ),
                crossFadeState: _selected
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
                duration: const Duration(seconds: 1))
          ],
        ),
      ),
    );
  }
}
