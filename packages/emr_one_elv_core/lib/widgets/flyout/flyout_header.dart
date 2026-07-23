import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class ElvFlyoutHeader extends StatelessWidget {
  const ElvFlyoutHeader({
    required this.header,
    super.key,
  });

  final String header;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: Insets.gutter,
      ),
      child: Text(
        header,
        style: EmrOneConstants.kSmallHeadingTextStyle,
      ),
    );
  }
}
