import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class SplitPaymentBreakdownSection extends StatelessWidget {
  const SplitPaymentBreakdownSection({
    required this.splitPaymentController,
    required this.currency,
    super.key,
  });

  final SplitPaymentController splitPaymentController;
  final String currency;

  @override
  Widget build(BuildContext context) {
    return CollapsibleWidget(
      title: context.l10n.paymentSplit,
      initiallyExpanded: true,
      children: [
        InfoSection(
          rows: splitPaymentController.selectedItems
              .map(
                (item) => TitleValue(
                  label: TicketsUtility.getPaymentName(
                    item.paymentMethod,
                    context,
                  ),
                  value: TicketsUtility.formatCurrency(
                    context,
                    currency,
                    item.amount.value!.toDouble(),
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
