import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/card/emr_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AdvancesCard extends StatefulWidget {
  const AdvancesCard({
    required this.advance,
    required this.toggleController,
    this.onAdvanceSelected,
    this.canSelect,
    super.key,
  });

  final Advance advance;
  final EmrCardController toggleController;
  final bool Function(Advance advance)? canSelect;

  final void Function(Advance advance, EmrCardController? toggleController)?
  onAdvanceSelected;

  @override
  State<StatefulWidget> createState() => _AdvancesCardCommonState();
}

class _AdvancesCardCommonState extends State<AdvancesCard>
    with TicketSearchMixin {
  @override
  Widget build(BuildContext context) {
    final paymentValidationResult =
        widget.advance.paymentValidationResult ??
        PaymentValidationResult(
          status: Status.error,
          validationFlags: ValidationFlags.empty(),
        );
    final status = paymentValidationResult.status;
    return SizedBox(
      width: TicketsUtility.ticketCardWidth,
      child: EmrCard(
        title: widget.advance.account?.code ?? '',
        onBeforeSelect: () => widget.canSelect?.call(widget.advance) ?? true,
        onSelected: widget.onAdvanceSelected == null
            ? null
            : ({bool selected = false}) {
                widget.toggleController.isSelected.value = selected;
                widget.onAdvanceSelected!.call(
                  widget.advance,
                  widget.toggleController,
                );
              },
        controller: widget.toggleController,
        trailing: Row(
          children: [
            if (status != Status.success)
              IconButton(
                onPressed: () => EmrDialog.modal<void>(
                  context,
                  titleText: context.l10n.ticketValidationResultsTitle,
                  acceptLabel: context.l10n.ok,
                  builder: (context) => LogWidget(
                    errors: paymentValidationResult.errors,
                    warnings: paymentValidationResult.warnings,
                  ),
                  onAccept: () => onAccept(context),
                ),
                icon: ValueListenableBuilder(
                  valueListenable: widget.toggleController.isSelected,
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
          ],
        ),
        child: CommonCard(
          body: advanceDetails(
            context,
            widget.advance,
            paymentValidationResult,
          ),
          footer: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  context.l10n.outstandingAmount,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  TicketsUtility.formatCurrency(
                    context,
                    widget.advance.paymentAmount.currencyCode,
                    widget.advance.paymentInfo.outstandingBalance,
                  ),
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Column advanceDetails(
    BuildContext context,
    Advance advance,
    PaymentValidationResult paymentValidationResult,
  ) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      spacing: Insets.gutter / 4,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RowWithTitleValue(
          label: context.l10n.name,
          value: advance.account?.name ?? '',
          valueStyle: textTheme.titleSmall,
        ),
        RowWithTitleValue(
          label: context.l10n.reason,
          value: advance.reason.localizedLabel(context).toTitleCase(),
          valueStyle: textTheme.titleSmall,
        ),
        RowWithTitleValue(
          label: context.l10n.companyCode,
          value: advance.company?.code ?? '',
          valueStyle: textTheme.titleSmall,
        ),
        RowWithTitleValue(
          label: context.l10n.amount,
          value: TicketsUtility.formatCurrency(
            context,
            advance.paymentAmount.currencyCode,
            advance.paymentAmount.amount,
          ),
          valueStyle: textTheme.titleSmall,
        ),
        RowWithTitleValue(
          label: context.l10n.status,
          value: advance.status.name.toTitleCase(),
          valueStyle: textTheme.titleSmall,
        ),
        RowWithTitleValue(
          label: context.l10n.term,
          value: advance.term.termType.localizedLabel(context).toTitleCase(),
          valueStyle: textTheme.titleSmall,
        ),
        RowWithTitleValue(
          label: context.l10n.paidToDate,
          value: TicketsUtility.formatCurrency(
            context,
            advance.paymentAmount.currencyCode,
            advance.paymentAmount.amount -
                advance.paymentInfo.outstandingBalance,
          ),
          valueStyle: textTheme.titleSmall,
        ),
        RowWithTitleValue(
          label: context.l10n.toBePaidInFullBy,
          value: DateFormat.yMd(
            Localizations.localeOf(context).toString(),
          ).format(advance.paidInFullDueDate!),
          valueStyle: textTheme.titleSmall,
        ),
        Row(
          spacing: Insets.gutter / 4,
          children: [
            ChecklistItem(
              label: context.l10n.agreement,
              isSuccess:
                  paymentValidationResult.validationFlags.hasRequiredAgreements,
              onTap: ({selected}) => getAgreementModel(
                paymentValidationResult.validationFlags,
                widget.advance.account!,
              ),
            ),
            ChecklistItem(
              label: context.l10n.identity,
              isSuccess:
                  paymentValidationResult.validationFlags.hasRequiredIdentities,
              onTap: ({selected}) => getIdentiesModel(
                paymentValidationResult.validationFlags,
                widget.advance.account!,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
