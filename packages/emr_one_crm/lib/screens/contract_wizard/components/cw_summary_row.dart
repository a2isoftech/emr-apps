import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class SummaryRow extends StatelessWidget {
  const SummaryRow(
    this.columnOneText,
    this.columnTwoText, {
    super.key,
  });
  final String? columnOneText;
  final String? columnTwoText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Insets.gutter),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: Insets.gutter / 2),
            child: columnOneText != null
                ? Text(
                    columnOneText!,
                    style: EmrOneConstants.kSmallestHeadingTextStyle,
                  )
                : null,
          ),
          Padding(
            padding: const EdgeInsets.only(right: Insets.gutter / 2),
            child: columnTwoText != null ? Text(columnTwoText!) : null,
          ),
        ],
      ),
    );
  }
}
