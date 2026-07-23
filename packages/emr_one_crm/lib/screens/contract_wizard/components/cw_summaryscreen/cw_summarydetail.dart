import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_summary_row.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_summaryscreen/cw_summary_screenlarge.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_summaryscreen/cw_summary_screensmall.dart';
import 'package:emr_one_crm/screens/contract_wizard/party_new_spot_view_model.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:flutter/material.dart';

class CWSummaryDetail extends StatelessWidget {
  const CWSummaryDetail({
    required this.model,
    required this.controller,
    super.key,
  });
  final PartyNewContractViewModel model;
  final ContractController controller;

  @override
  Widget build(BuildContext context) {
    return controller.appConfig.isWeb
        ? SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SummaryRow(
                  '${context.l10n.summary}:',
                  context.l10n.pleaseCheckTheDetailsYouHaveEntered,
                ),
                CWSummaryScreenLarge(
                  controller: controller,
                  model: model,
                ),
              ],
            ),
          )
        : SizedBox(
            child: CWSummaryScreenSmall(
              controller: controller,
              model: model,
            ),
          );
  }
}
