import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AnimatedOpacityHooks extends HookWidget {
  const AnimatedOpacityHooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _opacity = useState<double>(1);
    void _toggleOpacity() {
      _opacity.value = _opacity.value == 0 ? 1 : 0;
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Opacity with Hooks')),
      body: SizedBox.expand(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: _opacity.value,
              duration: const Duration(seconds: 1),
              child: const FlutterLogo(
                size: 200,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: _toggleOpacity,
                child: _opacity.value == 0
                    ? const Text('Show Logo')
                    : const Text('Hide LOgo'))
          ],
        ),
      ),
    );
  }
}
