import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class PvTitle extends StatelessWidget {
  const PvTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: Insets.gutter),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.l10n.adminPricing,
            style: EmrOneConstants.kMediumHeadingTextStyle,
          ),
          Text(
            context.l10n.applyTagsToInfluencePricing,
            style: EmrOneConstants.kSmallSubtleTextStyle,
          ),
        ],
      ),
    );
  }
}
