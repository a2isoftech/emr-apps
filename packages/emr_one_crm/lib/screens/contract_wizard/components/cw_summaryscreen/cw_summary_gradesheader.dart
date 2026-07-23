import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/extensions.dart';
import 'package:flutter/material.dart';

class CWSummaryGradesHeader extends StatelessWidget {
  const CWSummaryGradesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(Insets.gutter),
        child: Row(
          children: [
            Expanded(
              child: Text(
                context.l10n.grade.toUpperCase(),
                style: EmrOneConstants.kSmallestHeadingTextStyle
                    .copyWith(color: Colors.white),
              ),
            ),
            Expanded(
              child: Text(
                context.l10n.delPrice.toUpperCase(),
                style: EmrOneConstants.kSmallestHeadingTextStyle
                    .copyWith(color: Colors.white),
              ),
            ),
            Expanded(
              child: Text(
                context.l10n.colPrice.toUpperCase(),
                style: EmrOneConstants.kSmallestHeadingTextStyle
                    .copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
