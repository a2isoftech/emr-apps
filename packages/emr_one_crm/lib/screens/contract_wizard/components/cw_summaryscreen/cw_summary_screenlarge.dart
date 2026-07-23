import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_summaryscreen/cw_summary_detail_info.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_summaryscreen/cw_summary_grouped_grades.dart';
import 'package:emr_one_crm/screens/contract_wizard/party_new_spot_view_model.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:flutter/material.dart';

class CWSummaryScreenLarge extends StatelessWidget {
  const CWSummaryScreenLarge({
    required this.model,
    required this.controller,
    super.key,
  });

  final ContractController controller;
  final PartyNewContractViewModel model;

  @override
  Widget build(BuildContext context) {
    Localizations.localeOf(context);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: CWSummaryDetailInfo(
            controller: controller,
            model: model,
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${context.l10n.grade}:',
                style: EmrOneConstants.kSmallestHeadingTextStyle,
              ),
              CWSummaryGroupedGrades(
                controller: controller,
                model: model,
                isDark: isDark,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
