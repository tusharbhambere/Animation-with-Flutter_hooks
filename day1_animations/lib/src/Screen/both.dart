import 'package:day1_animations/src/Screen/HomePage/home_page.dart';
import 'package:day1_animations/src/Screen/Hooks/hooks_page.dart';
import 'package:flutter/material.dart';

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
              tileColor: Colors.grey[400],
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ));
              },
              title: const Text('Old Way Animation'),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              tileColor: Colors.grey[400],
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const HooksPage(),
                ));
              },
              title: const Text('With Hooks Animation'),
            )
          ],
        ),
      ),
    );
  }
}
