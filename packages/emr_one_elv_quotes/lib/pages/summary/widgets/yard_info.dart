import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/extensions/small_screen_check.dart';
import 'package:emr_one_elv_core/models/quote_models/batch_quote_model.dart';
import 'package:emr_one_elv_quotes/pages/summary/summary_controller.dart';
import 'package:emr_one_elv_quotes/pages/summary/widgets/summary_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class YardInfo extends StatelessWidget {
  const YardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<SummaryController>(context);

    final batchQuote = controller.batchQuote!;
    final isSmallScreen = SmallScreenCheck().isSmallScreen(context);

    return SummarySectionWrapper(
      title: '${context.l10n.yard} ${context.l10n.information}',
      body: SizedBox(
        height: isSmallScreen ? null : 180,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Insets.gutter / 2,
            vertical: Insets.gutter / 2,
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              right: Insets.gutter,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SummaryTextDisplay(
                      label: context.l10n.yard,
                      text: batchQuote.yard!.name,
                    ),
                    SummaryTextDisplay(
                      label: context.l10n.yardCode,
                      text: batchQuote.yard!.yardCode,
                    ),
                    if (isSmallScreen) address(context, batchQuote),
                  ],
                ),
                if (!isSmallScreen)
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: Insets.gutter,
                    ),
                    child: address(context, batchQuote),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget address(BuildContext context, BatchQuoteModel batchQuote) {
    final shortAddress = [
      batchQuote.yardAddress?.line1 ?? '',
      batchQuote.yardAddress?.line2 ?? '',
      batchQuote.yardAddress?.line3 ?? '',
      batchQuote.yardAddress?.postCode ?? '',
    ];

    shortAddress.removeWhere((e) => e.isEmpty);

    final formattedAddress = shortAddress.join('\n');

    return SummaryTextColumnDisplay(
      label: context.l10n.address,
      text: formattedAddress,
    );
  }
}
