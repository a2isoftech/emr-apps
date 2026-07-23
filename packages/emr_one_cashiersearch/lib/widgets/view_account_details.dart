import 'package:emr_one_cashiersearch/widgets/row_divider_with_title.dart';
import 'package:emr_one_cashiersearch/widgets/row_with_left_header_right_value.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class ViewAccountDetails extends StatelessWidget {
  const ViewAccountDetails({this.accountName, this.accountNo, super.key});

  final String? accountName;
  final String? accountNo;
  @override
  Widget build(BuildContext context) {
    final labelDefaultStyle = Theme.of(context).textTheme.titleSmall!;

    final valueDefaultStyle = Theme.of(
      context,
    ).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w600);
    return Column(
      spacing: Insets.gutter / 4,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: Insets.gutter / 4),
          child: RowDividerWithTitle(
            labelStyle: labelDefaultStyle.copyWith(fontWeight: FontWeight.w600),
            label: context.l10n.accountDetails,
          ),
        ),
        RowWithTitleValue(
          label: context.l10n.accountName,
          value: accountName ?? '',
          valueStyle: valueDefaultStyle,
          labelStyle: labelDefaultStyle,
        ),
        RowWithTitleValue(
          label: context.l10n.accountCode,
          value: accountNo ?? '',
          valueStyle: valueDefaultStyle,
          labelStyle: labelDefaultStyle,
        ),
      ],
    );
  }
}
