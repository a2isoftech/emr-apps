import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_quotes/elv_quotes.dart';
import 'package:flutter/material.dart';

class QuickQuoteNewScreen extends StatelessWidget {
  const QuickQuoteNewScreen({required this.batchQuoteId, super.key});

  final String batchQuoteId;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Insets.gutter),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Insets.gutter),
            child: Text(
              context.l10n.quickQuote,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Expanded(
            child: EmrTabBarVerticalView(
              columns: const [1, 1, 1],
              children: [
                ElvQuoteDetail(title: context.l10n.quoteDetails, height: null),
                ElvAddVehicle(title: context.l10n.addVehicles, height: null),
                ElvDeliveryMethod(
                  title: context.l10n.deliveryMethod,
                  height: null,
                ),
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Insets.gutter),
            child: Row(
              spacing: Insets.gutter,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(context.l10n.reset),
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: FilledButton(
                    onPressed: () {},
                    style: EmrButtonStyles.cta(),
                    child: Text(context.l10n.completeQuote),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
