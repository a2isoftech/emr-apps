import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class StepTitle extends StatelessWidget {
  const StepTitle({
    required this.title,
    this.isWeb = true,
    super.key,
  });

  final String title;
  final bool isWeb;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final textColor = isDark ? Colors.white : Colors.black;
    return Padding(
      padding: const EdgeInsets.only(left: Insets.gutter / 2),
      child: Text(
        title,
        style: isWeb
            ? TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
              )
            : EmrOneConstants.kSmallestHeadingTextStyle,
      ),
    );
  }
}
