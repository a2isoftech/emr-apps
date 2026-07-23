import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AdvanceUsageRow extends StatelessWidget {
  const AdvanceUsageRow({
    required this.advanceUsage,
    required this.currency,
    required this.valueDefaultStyle,
    super.key,
  });
  final AdvanceUsage advanceUsage;
  final String currency;
  final TextStyle valueDefaultStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Insets.gutter / 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: Insets.gutter / 4,
            children: [
              LinkText(
                label: context.l10n.advanceWithNumber(
                  advanceUsage.advanceId.split('/').last,
                ),
                onTap: () async {
                  await context.pushNamed(
                    TicketConstants.kAdvanceFormPath,
                    params: {'id': advanceUsage.advanceId},
                  );
                },
              ),
              IconButton(
                onPressed: () => EmrDialog.modal<void>(
                  context,
                  titleText: context.l10n.advanceWithNumber(
                    advanceUsage.advanceId.split('/').last,
                  ),
                  acceptLabel: context.l10n.ok,
                  builder: (context) => SizedBox(
                    width: 300,
                    child: InfoSection(
                      rows: [
                        TitleValue(
                          label: context.l10n.advanceNumber,
                          value: advanceUsage.advanceId.split('/').last,
                        ),
                        TitleValue(
                          label: context.l10n.repaymentDueDate,
                          value: advanceUsage.details?.paidInFullDueDate == null
                              ? ''
                              : DateFormat.yMd(
                                  Localizations.localeOf(context).toString(),
                                ).format(
                                  advanceUsage.details!.paidInFullDueDate!,
                                ),
                        ),
                        TitleValue(
                          label: context.l10n.paymentTerms,
                          value:
                              advanceUsage.details?.term.termType
                                  .localizedLabel(context) ??
                              '',
                        ),
                        TitleValue(
                          label: context.l10n.amountRemaining,
                          value: TicketsUtility.formatCurrency(
                            context,
                            currency,
                            advanceUsage.advanceAmountBeforeOffset,
                          ),
                        ),
                        TitleValue(
                          label: context.l10n.agreedOffsetAmount,
                          value: TicketsUtility.formatCurrency(
                            context,
                            currency,
                            advanceUsage.applicableOffset,
                          ),
                        ),
                        TitleValue(
                          label: context.l10n.totalOffsetUsed,
                          value: TicketsUtility.formatCurrency(
                            context,
                            currency,
                            advanceUsage.applicableOffset,
                          ),
                        ),
                        TitleValue(
                          label: context.l10n.newAdvanceBalance,
                          value: TicketsUtility.formatCurrency(
                            context,
                            currency,
                            advanceUsage.advanceAmountAfterOffset,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onAccept: () async => context.pop(),
                ),
                tooltip: context.l10n.details,
                icon: const Icon(Icons.info_outline, size: 16),
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
            ],
          ),
          Text(
            TicketsUtility.formatCurrency(
              context,
              currency,
              advanceUsage.applicableOffset,
            ),
            style: valueDefaultStyle,
          ),
        ],
      ),
    );
  }
}
