import 'dart:async';

import 'package:collection/collection.dart';
import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_cashiersearch/common/enums.dart';
import 'package:emr_one_cashiersearch/common/utility.dart';
import 'package:emr_one_cashiersearch/constants/constants.dart';
import 'package:emr_one_cashiersearch/controllers/controllers.dart';
import 'package:emr_one_cashiersearch/controllers/ticket_payment_controller.dart';
import 'package:emr_one_cashiersearch/models/payment_validation_result.dart';
import 'package:emr_one_cashiersearch/models/ticket.dart';
import 'package:emr_one_cashiersearch/widgets/common_card.dart';
import 'package:emr_one_cashiersearch/widgets/log_widget.dart';
import 'package:emr_one_cashiersearch/widgets/row_with_left_header_right_value.dart';
import 'package:emr_one_cashiersearch/widgets/ticket_details.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/card/emr_card_controller.dart';
import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:flutter/material.dart';

class TicketCard extends StatelessWidget {
  const TicketCard({
    required this.paymentController,
    required this.ticket,
    required this.canSelect,
    required this.toggleController,
    required this.isCloudTicket,
    this.onRefresh,
    this.onTicketCardSelected,
    this.isBasketView = false,
    this.isDuplicatePartyAvailable = false,
    this.onButtonClick,
    this.onDelete,
    super.key,
  });

  final Ticket ticket;
  final void Function(Ticket ticket)? onTicketCardSelected;
  final bool Function(Ticket ticket) canSelect;
  final ITicketPaymentController paymentController;
  final EmrCardController toggleController;
  final bool isBasketView;
  final bool isDuplicatePartyAvailable;
  final void Function(Ticket ticket)? onButtonClick;
  final VoidCallback? onRefresh;
  final bool isCloudTicket;
  final void Function(Ticket ticket)? onDelete;

  @override
  Widget build(BuildContext context) {
    final status = ticket.paymentValidationResult!.status;
    final availablePaymentMethods = paymentController.getPaymentModes();
    final isDefaultPaymentAvailable =
        ticket.defaultPaymentMethod != null &&
        availablePaymentMethods.contains(ticket.defaultPaymentMethod);
    final isPayable =
        isDefaultPaymentAvailable &&
        context.userHasPermission(PermissionConstants.cashierPayment) &&
        ticket.ticketStatus == TicketStatus.active &&
        status != Status.error;
    final isUnpayPaymentMethodAvailable =
        ticket.paymentRecord != null &&
        availablePaymentMethods.contains(ticket.paymentRecord!.paymentMethod);
    final isUnpayable =
        context.userHasPermission(PermissionConstants.unpayPayment) &&
        ticket.ticketStatus == TicketStatus.paid &&
        status != Status.error &&
        isUnpayPaymentMethodAvailable;
    final paymentMode = ticket.defaultPaymentMethod;
    final currency = ticket.currency ?? '';
    final totalPayable = ticket.paymentDeduction?.netPaid ?? 0;

    final enablePayNowButton =
        (isPayable &&
            (!isDuplicatePartyAvailable ||
                (ticket
                        .paymentDeduction
                        ?.advanceDetails
                        ?.advanceAmountBreakup
                        .isEmpty ??
                    true))) ||
        isUnpayable;

    return SizedBox(
      width: TicketsUtility.ticketCardWidth,
      child: EmrCard(
        key: UniqueKey(),
        isSelected: toggleController.isSelected.value,
        onBeforeSelect: () => canSelect.call(ticket),
        onSelected: onTicketCardSelected == null
            ? null
            : ({bool selected = false}) {
                toggleController.isSelected.value = selected;
                onTicketCardSelected?.call(ticket);
              },
        title: '${ticket.yardCode} - ${ticket.ticketNumber}',
        trailing: Row(
          children: [
            if (isBasketView)
              Padding(
                padding: const EdgeInsets.only(right: Insets.gutter / 2),
                child: IconButton(
                  onPressed: () => onDelete?.call(ticket),
                  icon: const Icon(
                    Icons.delete_outline,
                    color: EmrColours.secondaryRed,
                  ),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
              ),

            if (status != Status.success)
              Padding(
                padding: const EdgeInsets.only(right: Insets.gutter / 2),
                child: IconButton(
                  onPressed: () => EmrDialog.modal<void>(
                    context,
                    titleText: context.l10n.ticketValidationResultsTitle,
                    acceptLabel: context.l10n.ok,
                    builder: (context) => LogWidget(
                      errors: ticket.paymentValidationResult!.errors,
                      warnings: ticket.paymentValidationResult!.warnings,
                    ),
                    onAccept: () => onAccept(context),
                  ),
                  icon: ValueListenableBuilder(
                    valueListenable: toggleController.isSelected,
                    builder: (context, value, child) {
                      return Icon(
                        Icons.error_outline,
                        size: 20,
                        color: value
                            ? Theme.of(context).colorScheme.onTertiary
                            : status == Status.error
                            ? EmrColours.secondaryRed
                            : EmrColours.secondaryYellow,
                      );
                    },
                  ),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
              ),
          ],
        ),
        child: CommonCard(
          body: TicketDetails(
            defaultPaymentMode: paymentMode ?? PaymentMethod.none,
            isBasketView: isBasketView,
            onRefresh: onRefresh,
            ticket: ticket,
            isCloudTicket: isCloudTicket,
          ),
          footer: [
            RowWithTitleValue(
              label: isBasketView
                  ? context.l10n.amount
                  : ticket.ticketStatus == TicketStatus.paid
                  ? context.l10n.paid
                  : context.l10n.totalPayable,
              value: TicketsUtility.formatCurrency(
                context,
                currency,
                ticket.paymentRecord != null
                    ? (ticket.paymentRecord!.tickets
                              .firstWhereOrNull((x) => x.id == ticket.id)
                              ?.price ??
                          0)
                    : (isBasketView
                          ? ticket.paymentDeduction?.grossAmount ?? 0
                          : (totalPayable < 0 ? 0 : totalPayable)),
              ),
              valueStyle: Theme.of(context).textTheme.headlineSmall!.copyWith(
                overflow: TextOverflow.ellipsis,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            if (!isBasketView) ...[
              const SizedBox(height: Insets.gutter),
              Row(
                children: [
                  Expanded(
                    child: FilledButton(
                      onPressed: enablePayNowButton
                          ? () => onButtonClick?.call(ticket)
                          : null,
                      style: enablePayNowButton ? EmrButtonStyles.cta() : null,
                      child: Text(
                        ticket.ticketStatus == TicketStatus.paid
                            ? context.l10n.unpay
                            : context.l10n.payNow,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }

  Future<void> onAccept(BuildContext context) async {
    await Navigator.maybePop(context);
  }
}
