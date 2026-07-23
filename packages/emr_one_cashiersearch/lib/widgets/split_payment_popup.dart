import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class SplitPaymentPopup extends StatelessWidget {
  const SplitPaymentPopup({
    required this.splitPaymentController,
    required this.paymentController,
    this.currencyCode,
    this.accountDetails,
    super.key,
  });

  final SplitPaymentController splitPaymentController;
  final ITicketPaymentController paymentController;
  final Account? accountDetails;
  final String? currencyCode;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: screenHeight * 0.7,
        minWidth: TicketConstants.kSplitPaymentPopupWidth,
        maxWidth: TicketConstants.kSplitPaymentPopupWidth,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            child: Form(
              key: splitPaymentController.allAmountFormKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: splitPaymentController.allItems
                      .map(
                        (item) => SplitPaymentListItem(
                          model: item,
                          paymentController: paymentController,
                          payeeName: accountDetails?.name ?? '',
                          currencyCode: currencyCode,
                          account: accountDetails,
                          maxLength: splitPaymentController.total
                              .toStringAsFixed(2)
                              .length,
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${context.l10n.totalAmount}: '
                  '''${TicketsUtility.formatCurrency(context, currencyCode, splitPaymentController.total)}''',
                ),
                ValueListenableBuilder<double>(
                  valueListenable: splitPaymentController.remaining,
                  builder: (currentContext, remaining, _) => Text(
                    '${currentContext.l10n.remaining}: '
                    '''${TicketsUtility.formatCurrency(currentContext, currencyCode, remaining)}''',
                  ),
                ),
                ValueListenableBuilder<double>(
                  valueListenable: splitPaymentController.totalUsed,
                  builder: (currentContext, used, _) => Text(
                    '${currentContext.l10n.totalUsed}: '
                    '''${TicketsUtility.formatCurrency(currentContext, currencyCode, used)}''',
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
