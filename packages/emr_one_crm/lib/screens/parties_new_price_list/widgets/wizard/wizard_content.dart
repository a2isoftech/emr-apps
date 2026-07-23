import 'package:emr_one_crm/screens/parties_new_price_list/parties_price_wiz_controller.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/steps/overview_step.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/steps/pl_processing.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/steps/pl_summary_screen.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/steps/pricelist_confirmation.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/steps/pricelist_gpl.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/steps/pricelist_grades.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/steps/pricelist_rates.dart';
import 'package:flutter/material.dart';

Widget myWizardContentBuilder(
  BuildContext context,
  PartiesPriceListWizardController controller,
) {
  switch (controller.getStepNumber) {
    case 0:
      return OverviewStep(controller: controller);
    case 1:
      return PLStepGPL(controller: controller);
    case 2:
      return PLGrades(controller: controller);
    case 3:
      return PLRates(controller: controller);
    case 4:
      return PLSummary(controller: controller);
    case 5:
      return PlProcessing(controller: controller);
    case 6:
      return PLConfirmation(controller: controller);
  }
  throw Exception('Unexpected');
}
