import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget {
  const ResetButton({Key? key, required this.onpress}) : super(key: key);
  final VoidCallback onpress;
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: Colors.grey[800],
        child: InkWell(
          onTap: onpress,
          child: const Align(
            alignment: Alignment.center,
            child: Text(
              'Reset',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
