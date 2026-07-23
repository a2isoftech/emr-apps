import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TicketDetails extends StatefulWidget {
  const TicketDetails({
    required this.ticket,
    required this.defaultPaymentMode,
    required this.isCloudTicket,
    this.onRefresh,
    this.isBasketView = false,
    super.key,
  });
  final Ticket ticket;
  final bool isBasketView;
  final PaymentMethod defaultPaymentMode;
  final VoidCallback? onRefresh;
  final bool isCloudTicket;
  @override
  State<TicketDetails> createState() => _TicketDetailsState();
}

class _TicketDetailsState extends State<TicketDetails> with TicketSearchMixin {
  late UserInfoService userInfoService;

  @override
  Widget build(BuildContext context) {
    final isTicketPriced =
        widget.ticket.paymentValidationResult!.validationFlags.isPriced;
    final textTheme = Theme.of(context).textTheme;
    final activeLines = widget.ticket.lines!
        .where((line) => line.isActive)
        .toList();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RowWithTitleValue(
          label: context.l10n.name,
          value: '${widget.ticket.account.name}',
          valueStyle: textTheme.titleSmall,
        ),
        const SizedBox(height: Insets.gutter / 4),
        RowWithTitleValue(
          label: context.l10n.account,
          value: '${widget.ticket.account.accountNumber}',
          valueStyle: textTheme.titleSmall,
        ),
        const SizedBox(height: Insets.gutter / 4),
        RowWithTitleValue(
          label: context.l10n.date,
          value: DateFormat.yMEd(
            Localizations.localeOf(context).toString(),
          ).add_jms().format(widget.ticket.created?.at ?? widget.ticket.date),
          valueStyle: textTheme.titleSmall,
        ),
        const SizedBox(height: Insets.gutter / 4),
        RowWithTitleValue(
          label: context.l10n.vehicleReg,
          value: '${widget.ticket.transportDetails.vehicleReg}',
          valueStyle: textTheme.titleSmall,
        ),
        const SizedBox(height: Insets.gutter / 4),
        RowWithTitleValue(
          label: context.l10n.lineCount(activeLines.length),
          valueWidget: getLineChips(widget.ticket),
          value: activeLines.length.toString(),
          icon: Icon(
            Icons.info_outline,
            size: 16,
            color: Theme.of(context).colorScheme.tertiary,
          ),
          showIcon: activeLines.isNotEmpty,
          onIconPressed: () async => onTicketLineIconClick(widget.ticket),
          tailingLabelWidget: IconButton(
            tooltip: widget.ticket.grossAndTareImages.isEmpty
                ? null
                : context.l10n.mediaGallery,
            icon: Icon(
              Icons.image_outlined,
              size: 16,
              color: widget.ticket.grossAndTareImages.isEmpty
                  ? Theme.of(context).disabledColor
                  : Theme.of(context).colorScheme.tertiary,
            ),
            iconSize: 20,
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: widget.ticket.grossAndTareImages.isEmpty
                ? null
                : () async => showTicketGallery(widget.ticket),
          ),
        ),
        const SizedBox(height: Insets.gutter / 2),
        Row(
          spacing: Insets.gutter / 4,
          children: [
            ChecklistItem(
              flex: 29,
              label: context.l10n.priced,
              isSuccess: isTicketPriced,
              onTap: ({selected}) {
                if (widget.ticket.ticketStatus != TicketStatus.active) return;
                getRePriceModal(
                  widget.ticket,
                  isReadonly: widget.isCloudTicket,
                );
              },
            ),
            ChecklistItem(
              flex: 41,
              label: context.l10n.agreement,
              isSuccess: widget
                  .ticket
                  .paymentValidationResult!
                  .validationFlags
                  .hasRequiredAgreements,
              onTap: ({selected}) => getAgreementModel(
                widget.ticket.paymentValidationResult!.validationFlags,
                widget.ticket.account.details!,
              ),
            ),
            ChecklistItem(
              flex: 32,
              label: context.l10n.identity,
              isSuccess: widget
                  .ticket
                  .paymentValidationResult!
                  .validationFlags
                  .hasRequiredIdentities,
              onTap: ({selected}) => getIdentiesModel(
                widget.ticket.paymentValidationResult!.validationFlags,
                widget.ticket.account.details!,
              ),
            ),
          ],
        ),
        if (!widget.isBasketView)
          TicketPaymentDetails(
            selectedTicket: widget.ticket,
            paymentController: paymentController,
            lableStyle: Theme.of(context).textTheme.titleMedium,
            valueStyle: textTheme.titleSmall!.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
      ],
    );
  }

  @override
  void refresh() {
    widget.onRefresh?.call();
  }
}
