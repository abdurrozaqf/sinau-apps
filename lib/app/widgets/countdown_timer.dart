import 'package:flutter/material.dart';

class CountdownTimer extends StatelessWidget {
  const CountdownTimer({
    Key? key,
    required this.time,
  }) : super(key: key);

  final String time;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.timer),
        const SizedBox(
          width: 5,
        ),
        Text(
          time,
        )
      ],
    );
  }
}
