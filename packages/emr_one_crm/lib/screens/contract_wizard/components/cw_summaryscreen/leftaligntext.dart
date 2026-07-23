import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class LeftAlignText extends StatelessWidget {
  const LeftAlignText({
    required this.textValue,
    this.textStyle = const TextStyle(),
    super.key,
  });
  final String textValue;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter / 2),
      child: Text(
        textValue,
        textAlign: TextAlign.left,
        style: textStyle,
      ),
    );
  }
}
