import 'package:flutter/material.dart';

class BeamToleranceInfo extends StatelessWidget {
  const BeamToleranceInfo({
    required this.minus,
    required this.plus,
    super.key,
  });

  final double minus;
  final double plus;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Tolerance minus: $minus',
          style: const TextStyle(color: Colors.grey),
        ),
        Text(
          'Tolerance plus: +$plus',
          style: const TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
