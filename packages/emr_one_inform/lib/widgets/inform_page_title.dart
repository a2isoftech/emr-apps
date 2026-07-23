import 'package:flutter/material.dart';

class InformPageTitle extends StatelessWidget {
  const InformPageTitle({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
