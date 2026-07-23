import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_core.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_summaryscreen/cw_summarydetail.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:emr_one_crm/services/services.dart';
import 'package:emr_one_wizard/emr_one_wizard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CWSummary extends StatelessWidget {
  const CWSummary({
    required this.controller,
    super.key,
  });

  final ContractController controller;

  @override
  Widget build(BuildContext context) {
    final buttonText =
        context.l10n.submitContract;

    return CWStepCore(
      controller: controller,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: CWSummaryDetail(
              model: controller.model!,
              controller: controller,
            ),
          ),
          EOWizardNav(
            controller: controller,
            onNext: () => controller.complete(
              Provider.of<ContractService>(context, listen: false),
              context,
            ),
            onNextText: buttonText,
          ),
        ],
      ),
    );
  }
}
