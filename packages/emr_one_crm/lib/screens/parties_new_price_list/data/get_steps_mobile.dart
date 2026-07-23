import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/stepper/stepper.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/data/steps_mobile.dart';
import 'package:emr_one_wizard/emr_one_wizard.dart';
import 'package:flutter/material.dart';

List<EmrStep> getSteps(EOWizardController controller, Color themeColor) {
  final stepReached = controller.getStepReached();
  return PriceListStepsMobile.values
      .where(
        (element) =>
            element.index != PriceListStepsMobile.kProcessing.index &&
            element.index != PriceListStepsMobile.none.index,
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
                .copyWith(color: themeColor),
          ),
          stepIcon: getStepIcon(e),
        ),
      )
      .toList();
}

Icon getStepIcon(PriceListStepsMobile index) {
  switch (index) {
    case PriceListStepsMobile.kPublicationSelect:
      return const Icon(Icons.description_outlined, color: Colors.white);
    case PriceListStepsMobile.kGradesSelect:
      return const Icon(Icons.category_outlined, color: Colors.white);
    case PriceListStepsMobile.kPartyDelta:
      return const Icon(Icons.currency_pound_outlined, color: Colors.white);
    case PriceListStepsMobile.kSummary:
      return const Icon(Icons.summarize_outlined, color: Colors.white);
    case PriceListStepsMobile.kConfirmation:
      return const Icon(Icons.done, color: Colors.white);
    case PriceListStepsMobile.none:
    case PriceListStepsMobile.kProcessing:
      return const Icon(Icons.info_outlined, color: Colors.white);
  }
}
