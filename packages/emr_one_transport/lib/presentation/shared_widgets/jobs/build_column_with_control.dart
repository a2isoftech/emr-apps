import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class BuildColumnWithControl extends StatelessWidget {
  const BuildColumnWithControl({
    required this.label,
    required this.control,
    this.isBoldLabel,
    super.key,
  });

  final String label;
  final Widget control;
  final bool? isBoldLabel;

  @override
  Widget build(BuildContext context) {
    final boldLabel = isBoldLabel ?? false;
    return Column(
      spacing: Insets.gutter / 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label.isNotEmpty) ...[
          Text(
            label,
            style: boldLabel == true
                ? Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontWeight: FontWeight.bold)
                : Theme.of(context).textTheme.bodyMedium,
          ),
        ],
        control,
      ],
    );
  }
}
