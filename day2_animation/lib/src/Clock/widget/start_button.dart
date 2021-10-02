import 'package:flutter/material.dart';

class StartStopButton extends StatelessWidget {
  const StartStopButton(
      {Key? key, required this.onpress, required this.isRunning})
      : super(key: key);
  final VoidCallback onpress;
  final bool isRunning;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: isRunning ? Colors.grey[900] : Colors.orange[900],
        child: InkWell(
          onTap: onpress,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              isRunning ? 'Stop' : 'Start',
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
