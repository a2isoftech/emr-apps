import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class SummaryTextHeader extends StatelessWidget {
  const SummaryTextHeader(this.text, {super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: Insets.gutter / 2,
        bottom: Insets.gutter / 2,
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: EmrOneConstants.kSmallestHeadingTextStyle,
      ),
    );
  }
}
