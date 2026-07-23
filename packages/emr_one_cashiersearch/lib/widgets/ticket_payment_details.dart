import 'package:collection/collection.dart';
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class TicketPaymentDetails extends StatefulWidget {
  const TicketPaymentDetails({
    required this.selectedTicket,
    required this.paymentController,
    this.showOnlyPayable = false,
    this.lableStyle,
    this.valueStyle,
    super.key,
  });

  final bool showOnlyPayable;
  final ITicketPaymentController paymentController;
  final Ticket selectedTicket;
  final TextStyle? lableStyle;
  final TextStyle? valueStyle;

  @override
  State<TicketPaymentDetails> createState() => _TicketPaymentDetailsState();
}

class _TicketPaymentDetailsState extends State<TicketPaymentDetails>
    with TicketSearchMixin {
  @override
  Widget build(BuildContext context) {
    final currency = widget.selectedTicket.currency ?? '';

    final isPaid = widget.selectedTicket.paymentRecord != null;

    final paymentName = TicketsUtility.getPaymentName(
      widget.selectedTicket.paymentRecord?.paymentMethod ??
          widget.selectedTicket.defaultPaymentMethod,
      context,
    );

    final amount = isPaid
        ? (widget.selectedTicket.paymentRecord!.tickets
                  .firstWhereOrNull((x) => x.id == widget.selectedTicket.id)
                  ?.price ??
              0)
        : widget.selectedTicket.totalAmount;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(height: Insets.gutter),
        RowDividerWithTitle(
          label: context.l10n.paymentDetails,
          labelStyle: Theme.of(
            context,
          ).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: Insets.gutter / 4),
        InfoSection(
          rows: [
            TitleValue(
              label: context.l10n.amount,
              value: TicketsUtility.formatCurrency(context, currency, amount),
              labelStyle: widget.lableStyle,
              valueStyle: widget.valueStyle,
            ),
            TitleValue(
              label: context.l10n.advanceOffset,
              value: TicketsUtility.formatCurrency(
                context,
                currency,
                widget.selectedTicket.advanceOffset,
                showNegativeSign: true,
              ),
              labelStyle: widget.lableStyle,
              valueStyle: widget.valueStyle,
              showValue: !isPaid,
              tailing: isPaid
                  ? LinkText(
                      label: context.l10n.viewDetails,
                      onTap: () async => showPaymentDetails(
                        widget.selectedTicket.paymentRecord,
                        currency,
                      ),
                    )
                  : null,
            ),
            TitleValue(
              label: context.l10n.handlingFee,
              value: TicketsUtility.formatCurrency(
                context,
                currency,
                widget.selectedTicket.totalFee,
                showNegativeSign: true,
              ),
              labelStyle: widget.lableStyle,
              valueStyle: widget.valueStyle,
              showValue: !isPaid,
              tailing: isPaid
                  ? LinkText(
                      label: context.l10n.viewDetails,
                      onTap: () async => showPaymentDetails(
                        widget.selectedTicket.paymentRecord,
                        currency,
                      ),
                    )
                  : null,
            ),
          ],
        ),
        RowWithTitleValue(
          label: widget.selectedTicket.ticketStatus == TicketStatus.paid
              ? context.l10n.paidBy
              : context.l10n.payBy,
          value: paymentName,
          labelStyle: widget.lableStyle,
          valueStyle: widget.valueStyle,
          showTooltipOnValue: true,
        ),
      ],
    );
  }
}
