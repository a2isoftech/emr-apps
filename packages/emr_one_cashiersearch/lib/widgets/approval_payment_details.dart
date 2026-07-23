import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:flutter/material.dart';

class ApprovalPaymentDetails extends StatefulWidget {
  const ApprovalPaymentDetails({
    required this.paymentController,
    required this.defaultPaymentMode,
    required this.paymentRecord,
    super.key,
  });

  final PaymentMethod defaultPaymentMode;
  final ITicketPaymentController paymentController;
  final PaymentRecord paymentRecord;

  @override
  State<ApprovalPaymentDetails> createState() => _ApprovalPaymentDetailsState();
}

class _ApprovalPaymentDetailsState extends State<ApprovalPaymentDetails> {
  PaymentMethod? paymentMode;
  TextStyle? labelDefaultStyle;
  TextStyle? valueDefaultStyle;

  @override
  void initState() {
    paymentMode = widget.defaultPaymentMode;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final currency = widget.paymentRecord.tickets.first.currency ?? '';
    labelDefaultStyle = Theme.of(context).textTheme.titleSmall;
    valueDefaultStyle = Theme.of(
      context,
    ).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w600);
    return Column(
      spacing: Insets.gutter / 4,
      children: [
        RowDividerWithTitle(
          label: context.l10n.paymentDetails,
          labelStyle: labelDefaultStyle!.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: Insets.gutter / 4),
        InfoSection(
          rows: [
            TitleValue(
              label: context.l10n.payBy,
              value: TicketsUtility.getPaymentName(paymentMode, context),
              labelStyle: labelDefaultStyle,
              valueStyle: valueDefaultStyle,
            ),
            TitleValue(
              label: context.l10n.amount,
              value: TicketsUtility.formatCurrency(
                context,
                currency,
                widget.paymentRecord.totalAmount,
              ),
              labelStyle: labelDefaultStyle,
              valueStyle: valueDefaultStyle,
            ),
            TitleValue(
              label: '',
              value: TicketsUtility.formatCurrency(
                context,
                currency,
                widget.paymentRecord.totalAmount -
                    widget.paymentRecord.payableAmount,
              ),
              labelStyle: labelDefaultStyle,
              valueStyle: valueDefaultStyle,
              showLabel: false,
              leading: LinkText(
                label: context.l10n.totalDeductions,
                onTap: () async =>
                    showPaymentDetails(widget.paymentRecord, currency),
              ),
            ),
          ],
        ),
        RowWithTitleValue(
          label: context.l10n.grandTotal,
          value: TicketsUtility.formatCurrency(
            context,
            currency,
            widget.paymentRecord.payableAmount,
          ),
          valueStyle: Theme.of(
            context,
          ).textTheme.headlineSmall!.copyWith(fontSize: 20),
          labelStyle: Theme.of(
            context,
          ).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }

  Future<void> showPaymentDetails(
    PaymentRecord? paymentRecord,
    String currency,
  ) async {
    if (paymentRecord == null) {
      await TicketsUtility.errorDialogWidget(
        context,
        context.l10n.paymentDetailsNotFound,
      );
    } else {
      await EmrDialog.modal<void>(
        context,
        titleText: context.l10n.paymentDetails,
        builder: (context1) =>
            PaymentInfo(paymentRecord: paymentRecord, currency: currency),
        acceptLabel: context.l10n.ok,
        onAccept: () async => Navigator.of(context).pop(),
      );
    }
  }
}
