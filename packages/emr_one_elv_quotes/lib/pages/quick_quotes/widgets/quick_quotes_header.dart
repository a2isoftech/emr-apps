import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class QuickQuotesHeader extends StatefulWidget {
  const QuickQuotesHeader({super.key});

  @override
  State<QuickQuotesHeader> createState() => _QuickQuotesHeaderState();
}

class _QuickQuotesHeaderState extends State<QuickQuotesHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: Theme.of(context).primaryColor,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: Insets.gutter),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            context.l10n.quickQuote,
            style: EmrOneConstants.kLargeHeadingTextStyle.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ),
      ),
    );
  }
}
