import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class BuildRowWithControl extends StatelessWidget {
  const BuildRowWithControl({
    required this.label,
    required this.control,
    this.headerwidth,
    this.alignment,
    super.key,
  });

  final String label;
  final Widget control;
  final double? headerwidth;
  final CrossAxisAlignment? alignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: alignment ?? CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: headerwidth ?? 200,
          child: SelectableText(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: Insets.gutter,
            ),
          ),
        ),
        Expanded(
          child: control,
        ),
      ],
    );
  }
}
