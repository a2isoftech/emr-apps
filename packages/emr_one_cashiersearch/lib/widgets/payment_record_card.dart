import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PaymentRecordCard extends StatefulWidget {
  const PaymentRecordCard({
    required this.record,
    required this.controller,
    required this.onTicketDetailsPressed,
    required this.onPayBtnPressed,
    required this.onCancelBtnPressed,
    super.key,
  });

  final PaymentRecord record;
  final void Function(List<PaymentRecordTicket> tickets) onTicketDetailsPressed;
  final void Function() onPayBtnPressed;
  final void Function() onCancelBtnPressed;
  final ITicketPaymentController controller;
  @override
  State<PaymentRecordCard> createState() => _PaymentRecordCardState();
}

class _PaymentRecordCardState extends State<PaymentRecordCard> {
  @override
  Widget build(BuildContext context) {
    final record = widget.record;
    final config = record.status.getAuthorizationCardConfig(context);

    final labelDefaultStyle = Theme.of(context).textTheme.titleSmall;

    final valueDefaultStyle = Theme.of(
      context,
    ).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w600);

    final selectedTickets = record.tickets;

    final ticketLabel = record.ticketIds.length == 1
        ? selectedTickets.first.ticketNumber
        : context.l10n.multi;
    return SizedBox(
      width: TicketsUtility.ticketCardWidth,
      child: EmrCard(
        trailing: EmrStatusChip(
          text: config.text,
          statusType: config.statusType,
        ),
        key: UniqueKey(),
        child: Column(
          spacing: Insets.gutter / 2,
          children: [
            Column(
              spacing: Insets.gutter / 4,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${record.yardCode.toUpperCase()}-'
                      '$ticketLabel',
                      style: labelDefaultStyle,
                    ),
                    Row(
                      children: [
                        Text(
                          '${record.ticketIds.length}',
                          style: valueDefaultStyle,
                        ),
                        Tooltip(
                          message: context.l10n.paymentTickets,
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                            onPressed: () {
                              widget.onTicketDetailsPressed(selectedTickets);
                            },
                            icon: const Icon(Icons.info, size: 20),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(context.l10n.requestedOn, style: labelDefaultStyle),
                    Text(
                      _formatDate(record.created.at),
                      style: valueDefaultStyle,
                    ),
                  ],
                ),
              ],
            ),
            ViewAccountDetails(
              accountName: record.tickets.first.account!.name,
              accountNo: record.tickets.first.account!.accountNumber,
            ),
            ApprovalPaymentDetails(
              paymentController: widget.controller,
              defaultPaymentMode: record.paymentMethod,
              paymentRecord: record,
            ),
            const SizedBox(height: Insets.gutter / 4),
            Row(
              spacing: Insets.gutter,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton(
                  onPressed: config.enableCancelButton
                      ? widget.onCancelBtnPressed
                      : null,
                  child: Text(context.l10n.cancel),
                ),
                if (config.showPayButton)
                  FilledButton(
                    onPressed: widget.onPayBtnPressed,
                    style: EmrButtonStyles.cta(),
                    child: Text(context.l10n.payNow),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _formatDate(DateTime date) {
    final locale = Localizations.localeOf(context);
    final formatter = DateFormat.yMMMMd(locale.toString());
    return formatter.format(date);
  }
}
