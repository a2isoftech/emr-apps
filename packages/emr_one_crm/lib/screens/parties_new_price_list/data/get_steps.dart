import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/widgets/stepper/stepper.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/data/steps_web.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:emr_one_wizard/emr_one_wizard.dart';
import 'package:flutter/material.dart';

List<EmrStep> getSteps(EOWizardController controller, EOBrandTheme brandTheme) {
  final stepReached = controller.getStepReached();
  return PriceListStepsWeb.values
      .where(
        (element) => element.index != PriceListStepsWeb.none.index,
      )
      .map(
        (e) => EmrStep(
          onPressed: () => controller.gotoStep(e.index),
          state: stepReached >= e.index + 1
              ? StepState.complete
              : StepState.indexed,
          content: const SizedBox(),
          title: Text(
            controller.steps[e.index].title,
            style: EmrOneConstants.kSmallestHeadingTextStyle
                .copyWith(color: brandTheme.onBrandColour),
          ),
        ),
      )
      .toList();
}
