import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/models/quote_models/quote_models.dart';
import 'package:emr_one_elv_quotes/common/common.dart';
import 'package:emr_one_elv_quotes/pages/summary/summary_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QuoteExpired extends StatelessWidget {
  const QuoteExpired({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<SummaryController>(context);

    if (controller.batchQuote!.hasExpired &&
        controller.batchQuote!.quoteStatus == QuoteStatusEnum.confirmed) {
      final textStyle =
          EmrOneConstants.kLargeHeadingTextStyle.copyWith(color: Colors.white);

      return TitleBox(
        color: Theme.of(context).colorScheme.primary,
        borderColor: Theme.of(context).colorScheme.primary,
        child: Column(
          children: [
            Text(
              context.l10n.quoteExpired,
              textAlign: TextAlign.center,
              style: textStyle,
            ),
          ],
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}
