import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({
    required this.labelText,
    super.key,
  });

  final String labelText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: InputBorder.none,
        label: Text(labelText),
      ),
    );
  }
}
