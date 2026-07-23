import 'package:flutter/material.dart';

class SummaryHeader extends StatelessWidget {
  const SummaryHeader({
    required this.headerText,
    super.key,
  });

  final String headerText;

  @override
  Widget build(BuildContext context) {
    return Text(
      headerText,
      style: const TextStyle(
        fontWeight: FontWeight.w900,
      ),
    );
  }
}
