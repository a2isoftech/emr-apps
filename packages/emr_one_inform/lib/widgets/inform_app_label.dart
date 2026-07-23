import 'package:flutter/material.dart';

class InformAppLabel extends StatelessWidget {
  const InformAppLabel({
    required this.labelText,
    super.key,
  });
  final String labelText;

  @override
  Widget build(BuildContext context) => Text(
        labelText,
      );
}
