import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class AdvanceFlexiPayPopup extends StatelessWidget {
  const AdvanceFlexiPayPopup({
    required this.advanceFlexiPayController,
    super.key,
  });

  final AdvanceFlexiPayController advanceFlexiPayController;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: screenHeight * 0.7,
        maxWidth: 700,
        minWidth: 700,
      ),
      child: Form(
        key: advanceFlexiPayController.formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(flex: 2, child: Text(context.l10n.advanceNumber)),
                Expanded(flex: 2, child: Text(context.l10n.remaining)),
                Expanded(flex: 2, child: Text(context.l10n.amount)),
              ],
            ),
            const Divider(),
            Flexible(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (final model in advanceFlexiPayController.advances ??
                        <AdvanceFlexiPay>[])
                      AdvanceFlexiPayRow(model: model),
                  ],
                ),
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${context.l10n.transactionTotal}: '
                    '''${advanceFlexiPayController.transactionTotal.toStringAsFixed(2)}''',
                  ),
                  ValueListenableBuilder<double>(
                    valueListenable: advanceFlexiPayController.remaining,
                    builder: (context, rem, _) => Text(
                      '${context.l10n.remaining}: ${rem.toStringAsFixed(2)}',
                    ),
                  ),
                  ValueListenableBuilder<double>(
                    valueListenable: advanceFlexiPayController.totalUsed,
                    builder: (context, used, _) => Text(
                      '${context.l10n.totalOffsetUsed}: '
                      '${used.toStringAsFixed(2)}',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                OutlinedButton(
                  onPressed: advanceFlexiPayController.reset,
                  child: Text(context.l10n.resetForm),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
