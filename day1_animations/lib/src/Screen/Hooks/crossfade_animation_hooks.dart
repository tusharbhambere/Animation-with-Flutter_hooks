import 'package:day1_animations/src/Widget/first_child.dart';
import 'package:day1_animations/src/Widget/second_child.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CrosfadeAniHook extends HookWidget {
  const CrosfadeAniHook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _isSelected = useState<bool>(false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Croosfade With Hooks'),
      ),
      body: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
                firstChild: GestureDetector(
                  child: const FirstChild(),
                  onTap: () {
                    _isSelected.value = true;
                  },
                ),
                secondChild: GestureDetector(
                  child: const SecondChild(),
                  onTap: () {
                    _isSelected.value = false;
                  },
                ),
                crossFadeState: _isSelected.value
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
                duration: const Duration(seconds: 1))
          ],
        ),
      ),
    );
  }
}
