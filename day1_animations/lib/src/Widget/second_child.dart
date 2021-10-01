import 'package:flutter/material.dart';

class SecondChild extends StatelessWidget {
  const SecondChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 200,
        color: Colors.blue,
        child: const Center(child: Text('Second Child')),
      ),
    );
  }
}
