import 'package:flutter/material.dart';

class FormLabel extends StatelessWidget {
  const FormLabel(
    this.label, {
    super.key,
    this.mandatory = false,
    this.textStyle,
  });

  final String? label;
  final bool mandatory;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    if (label == null) {
      return const SizedBox();
    }

    return Row(
      children: [
        Text(
          label ?? '',
          style: textStyle,
        ),
        if (mandatory)
          const Text(
            '*',
          ),
      ],
    );
  }
}
