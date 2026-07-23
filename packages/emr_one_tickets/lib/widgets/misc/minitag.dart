import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class MiniTag extends StatelessWidget {
  const MiniTag({
    required this.label,
    super.key,
    this.colour = Colors.lightBlue,
  });

  final String label;
  final MaterialColor colour;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: ColoredBox(
          color: colour.shade100,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Text(
              label,
              style: EmrOneConstants.kSmallestTextStyle.copyWith(
                color: colour.shade900,
                fontWeight: FontWeight.w900,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
