import 'package:emr_one_cashiersearch/common/utility.dart';
import 'package:emr_one_cashiersearch/widgets/row_with_left_header_right_value.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';

class TicketLinesPriceBreakup extends StatefulWidget {
  const TicketLinesPriceBreakup({
    required this.cashDeduction,
    required this.haulageCharges,
    required this.roundingAdjustment,
    required this.totalAmount,
    required this.totalPayable,
    super.key,
    this.currency,
  });

  final String? currency;
  final double totalAmount;
  final double cashDeduction;
  final double roundingAdjustment;
  final double haulageCharges;
  final double totalPayable;

  @override
  State<TicketLinesPriceBreakup> createState() =>
      _TicketLinesPriceBreakupState();
}

class _TicketLinesPriceBreakupState extends State<TicketLinesPriceBreakup> {
  @override
  Widget build(BuildContext context) {
    final labelDefaultStyle = Theme.of(context).textTheme.titleSmall;
    final valueDefaultStyle = Theme.of(
      context,
    ).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w600);
    return SizedBox(
      width: 400,
      child: Column(
        spacing: Insets.gutter / 4,
        children: [
          RowWithTitleValue(
            label: context.l10n.payableBeforeCostAndDeduction,
            value: TicketsUtility.formatCurrency(
              context,
              widget.currency,
              widget.totalAmount,
            ),
            labelStyle: labelDefaultStyle!.copyWith(
              fontWeight: FontWeight.w600,
            ),
            valueStyle: valueDefaultStyle,
          ),
          RowWithTitleValue(
            label: context.l10n.cashDeductions,
            value: TicketsUtility.formatCurrency(
              context,
              widget.currency,
              widget.cashDeduction,
              showNegativeSign: true,
            ),
            labelStyle: labelDefaultStyle.copyWith(fontWeight: FontWeight.w600),
            valueStyle: valueDefaultStyle,
          ),
          RowWithTitleValue(
            label: context.l10n.roundingAdjustment,
            value: TicketsUtility.formatCurrency(
              context,
              widget.currency,
              widget.roundingAdjustment.abs(),
              showNegativeSign: widget.roundingAdjustment > 0,
            ),
            labelStyle: labelDefaultStyle.copyWith(fontWeight: FontWeight.w600),
            valueStyle: valueDefaultStyle,
          ),
          RowWithTitleValue(
            label: context.l10n.haulageCharge,
            value: TicketsUtility.formatCurrency(
              context,
              widget.currency,
              widget.haulageCharges,
              showNegativeSign: true,
            ),
            labelStyle: labelDefaultStyle.copyWith(fontWeight: FontWeight.w600),
            valueStyle: valueDefaultStyle,
          ),
          const Divider(),
          RowWithTitleValue(
            label: context.l10n.payableAfterCostAndDeduction,
            value: TicketsUtility.formatCurrency(
              context,
              widget.currency,
              widget.totalPayable,
            ),
            labelStyle: labelDefaultStyle.copyWith(fontWeight: FontWeight.w600),
            valueStyle: valueDefaultStyle,
          ),
        ],
      ),
    );
  }
}
