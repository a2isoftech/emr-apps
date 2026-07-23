import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_summaryscreen/cw_summary_detail_info.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_summaryscreen/cw_summary_grades.dart';
import 'package:emr_one_crm/screens/contract_wizard/party_new_spot_view_model.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:flutter/material.dart';

class CWSummaryScreenSmall extends StatelessWidget {
  const CWSummaryScreenSmall({
    required this.model,
    required this.controller,
    super.key,
  });

  final ContractController controller;
  final PartyNewContractViewModel model;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CWSummaryDetailInfo(
            controller: controller,
            model: model,
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(bottom: Insets.gutter),
            child: Text(
              '${context.l10n.grade.toUpperCase()}:',
              style: EmrOneConstants.kSmallestHeadingTextStyle,
            ),
          ),
          CWSummaryGrades(
            controller: controller,
            model: model,
            isDark: isDark,
          ),
        ],
      ),
    );
  }
}
