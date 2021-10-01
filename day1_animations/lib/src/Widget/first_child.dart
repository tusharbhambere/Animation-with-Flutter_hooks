import 'package:flutter/material.dart';

class FirstChild extends StatelessWidget {
  const FirstChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 200,
        color: Colors.redAccent,
        child: const Center(child: Text('FirstChild')),
      ),
    );
  }
}
