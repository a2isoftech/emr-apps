import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class RowDividerWithTitle extends StatelessWidget {
  const RowDividerWithTitle({
    required this.label,
    this.labelStyle,
    super.key,
  });

  final String label;
  final TextStyle? labelStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: Insets.gutter / 2),
          child: Text(
            label,
            style: labelStyle ?? Theme.of(context).textTheme.bodySmall,
          ),
        ),
        const Expanded(
          child: Divider(),
        ),
      ],
    );
  }
}
