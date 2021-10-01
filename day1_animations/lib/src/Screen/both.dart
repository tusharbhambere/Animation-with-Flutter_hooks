import 'package:day1_animations/src/Screen/HomePage/animated_padding.dart';
import 'package:day1_animations/src/Screen/HomePage/container_animation.dart';
import 'package:day1_animations/src/Screen/HomePage/opacity_animation.dart';
import 'package:day1_animations/src/Screen/Hooks/container_animation_hooks.dart';
import 'package:flutter/material.dart';

import 'HomePage/animateddefaulttextstyle_animation.dart';
import 'HomePage/crossfade_animation.dart';
import 'Hooks/animated_defaulttext_style_hook.dart';
import 'Hooks/crossfade_animation_hooks.dart';
import 'Hooks/opacity_animation_hooks.dart';

class BothPage extends StatelessWidget {
  const BothPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            ListTile(
              trailing: const Icon(Icons.forward),
              tileColor: Colors.grey[200],
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ContainerAnimation(),
                ));
              },
              title: const Text('Old Way AnimatedContainer'),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              trailing: const Icon(Icons.forward),
              tileColor: Colors.grey[200],
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ContainerAniHooks(),
                ));
              },
              title: const Text('AnimatedContainer With Hooks Animation'),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              trailing: const Icon(Icons.forward),
              tileColor: Colors.grey[200],
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const OpacityAnimation(),
                ));
              },
              title: const Text('Old Way Animated Opacity'),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              trailing: const Icon(Icons.forward),
              tileColor: Colors.grey[200],
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AnimatedOpacityHooks(),
                ));
              },
              title: const Text('Animated Opacity With Hooks Animation'),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              trailing: const Icon(Icons.forward),
              tileColor: Colors.yellow[200],
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const CrossFadeAnimation(),
                ));
              },
              title: const Text('old Style Animated Crossfade '),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              trailing: const Icon(Icons.forward),
              tileColor: Colors.yellow[200],
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const CrosfadeAniHook(),
                ));
              },
              title: const Text('Animated Crossfade With Hooks Animation'),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              trailing: const Icon(Icons.forward),
              tileColor: Colors.red[200],
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const DefaultAnimatedTextStyle(),
                ));
              },
              title: const Text('Animated DefaultText'),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              trailing: const Icon(Icons.forward),
              tileColor: Colors.red[200],
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const DefaultTextStylehook(),
                ));
              },
              title: const Text('Animated DefaultText with Hook'),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              trailing: const Icon(Icons.forward),
              tileColor: Colors.blue[200],
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AnimatedPositions(),
                ));
              },
              title: const Text('Animated Position'),
            ),
          ],
        ),
      ),
    );
  }
}
