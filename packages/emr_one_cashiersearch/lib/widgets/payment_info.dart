import 'package:collection/collection.dart';
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:flutter/material.dart';

class PaymentInfo extends StatelessWidget {
  const PaymentInfo({
    required this.paymentRecord,
    required this.currency,
    this.isUnpay = false,
    super.key,
  });

  final PaymentRecord paymentRecord;
  final String currency;
  final bool isUnpay;

  @override
  Widget build(BuildContext context) {
    final labelDefaultStyle = Theme.of(context).textTheme.titleSmall;
    final valueDefaultStyle = Theme.of(
      context,
    ).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w600);
    final suffix = _chequeSuffix(paymentRecord.paymentMethodDetails);
    final paymentMethodName = TicketsUtility.getPaymentName(
      paymentRecord.paymentMethod,
      context,
    );
    return SizedBox(
      width: 500,
      child: Column(
        spacing: Insets.gutter / 4,
        children: [
          RowWithTitleValue(
            label: context.l10n.paymentMethod,
            valueWidget:
                paymentRecord.paymentMethod == PaymentMethod.splitPayment
                ? LinkText(
                    label: paymentMethodName,
                    labelDefaultStyle: labelDefaultStyle,
                    onTap: () => showSplitPaymentDetails(
                      context,
                      paymentRecord,
                      currency,
                    ),
                  )
                : null,
            value: '''$paymentMethodName$suffix''',
            labelStyle: labelDefaultStyle,
            valueStyle: valueDefaultStyle,
          ),
          ...paymentRecord.tickets.mapIndexed(
            (i, ticket) => RowWithTitleValue(
              label: '${ticket.yardCode} - ${ticket.ticketNumber}',
              value: TicketsUtility.formatCurrency(
                context,
                currency,
                ticket.provPrice ?? 0,
              ),
              labelStyle: labelDefaultStyle,
              valueStyle: valueDefaultStyle,
            ),
          ),
          RowWithTitleValue(
            label: context.l10n.totalAmount,
            value: TicketsUtility.formatCurrency(
              context,
              currency,
              paymentRecord.totalAmount,
            ),
            labelStyle: labelDefaultStyle!.copyWith(
              fontWeight: FontWeight.w600,
            ),
            valueStyle: valueDefaultStyle.copyWith(fontWeight: FontWeight.bold),
          ),
          RowWithTitleValue(
            label: context.l10n.cashDeductions,
            value: TicketsUtility.formatCurrency(
              context,
              currency,
              paymentRecord.cashDeductions,
              showNegativeSign: true,
            ),
            labelStyle: labelDefaultStyle,
            valueStyle: valueDefaultStyle,
          ),
          RowWithTitleValue(
            label: context.l10n.roundingAdjustment,
            value: TicketsUtility.formatCurrency(
              context,
              currency,
              paymentRecord.roundingAdjustment,
              showNegativeSign: true,
            ),
            labelStyle: labelDefaultStyle,
            valueStyle: valueDefaultStyle,
          ),
          RowWithTitleValue(
            label: context.l10n.haulageCharge,
            value: TicketsUtility.formatCurrency(
              context,
              currency,
              paymentRecord.haulageCharge,
              showNegativeSign: true,
            ),
            labelStyle: labelDefaultStyle,
            valueStyle: valueDefaultStyle,
          ),
          RowWithTitleValue(
            label: context.l10n.advanceOffset,
            value: TicketsUtility.formatCurrency(
              context,
              currency,
              paymentRecord.advanceOffset,
              showNegativeSign: true,
            ),
            labelStyle: labelDefaultStyle,
            valueStyle: valueDefaultStyle,
          ),
          RowWithTitleValue(
            label: context.l10n.subTotal,
            value: TicketsUtility.formatCurrency(
              context,
              currency,
              paymentRecord.payableAfterCostAndDeduction,
            ),
            labelStyle: labelDefaultStyle.copyWith(fontWeight: FontWeight.w600),
            valueStyle: valueDefaultStyle.copyWith(fontWeight: FontWeight.bold),
          ),
          RowWithTitleValue(
            label: context.l10n.handlingFee,
            value: TicketsUtility.formatCurrency(
              context,
              currency,
              paymentRecord.totalFee,
              showNegativeSign: true,
            ),
            labelStyle: labelDefaultStyle,
            valueStyle: valueDefaultStyle,
          ),
          RowWithTitleValue(
            label: context.l10n.roundingOnHandlingFee,
            value: TicketsUtility.formatCurrency(
              context,
              currency,
              paymentRecord.roundingAdjustmentOnFee,
              showNegativeSign: true,
            ),
            labelStyle: labelDefaultStyle,
            valueStyle: valueDefaultStyle,
          ),
          RowWithTitleValue(
            label: isUnpay ? context.l10n.toBeUnpaid : context.l10n.totalPaid,
            value: TicketsUtility.formatCurrency(
              context,
              currency,
              isUnpay
                  ? paymentRecord.payableAfterCostAndDeduction
                  : paymentRecord.payableAmount,
            ),
            valueStyle: Theme.of(
              context,
            ).textTheme.headlineSmall!.copyWith(fontSize: 20),
            labelStyle: Theme.of(
              context,
            ).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }

  Future<void> showSplitPaymentDetails(
    BuildContext context,
    PaymentRecord paymentRecord,
    String currency,
  ) async {
    await EmrDialog.modal<void>(
      context,
      titleText: context.l10n.paymentDetails,
      builder: (context1) => SizedBox(
        width: 475,
        child: InfoSection(
          rows: paymentRecord.paymentRecordItems
              .map(
                (item) => TitleValue(
                  label:
                      '''${TicketsUtility.getPaymentName(item.paymentMethod, context)}'''
                      '''${_chequeSuffix(item.paymentMethodDetails)}''',
                  value:
                      '''${TicketsUtility.formatCurrency(context, currency, item.totalAmount)} (${TicketsUtility.formatCurrency(context, currency, item.payableAmount)})''',
                ),
              )
              .toList(),
        ),
      ),
      acceptLabel: context.l10n.ok,
      onAccept: () async => Navigator.of(context).pop(),
    );
  }

  String _chequeSuffix(Map<String, dynamic> details) {
    final cheque = details['ChequeNumber'];
    return cheque is String ? ' ($cheque)' : '';
  }
}
