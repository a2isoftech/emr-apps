import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/stepper/emr_stepper.dart';
import 'package:emr_one_core/widgets/stepper/emr_steps.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:flutter/material.dart';

class OverviewStep extends StatelessWidget {
  const OverviewStep({required this.controller, super.key});

  final ContractController controller;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final themeColor = isDark
        ? Theme.of(context).colorScheme.onSurface
        : Theme.of(context).colorScheme.onPrimaryFixed;
    return SafeArea(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                top: Insets.gutter,
                left: Insets.gutter,
              ),
              child: Text(
                controller.currentStep.title,
                style: EmrOneConstants.kSmallestTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: EmrStepper(
              controlsBuilder: (context, details) => const SizedBox(),
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              steps: getSteps(controller, themeColor),
              showStepSuffixWidget: false,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: Insets.gutter),
            child: FilledButton(
              onPressed: controller.nextStep,
              child: Text(
                context.l10n.getStarted.toUpperCase(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<EmrStep> getSteps(ContractController controller, Color themeColor) {
  const kContractHeaderSelect = 1;
  const kDeliverySelect = 2;
  const kGradesSelect = 3;
  const kSummary = 4;

  final stepReached = controller.getStepReached();
  return [
    EmrStep(
      onPressed: () => controller.gotoStep(kContractHeaderSelect),
      state: stepReached >= kContractHeaderSelect + 1
          ? StepState.complete
          : StepState.indexed,
      content: const SizedBox(),
      title: Text(
        controller.steps[kContractHeaderSelect].title,
        style: EmrOneConstants.kSmallestHeadingTextStyle
            .copyWith(color: themeColor),
      ),
      stepIcon: const Icon(
        Icons.description_outlined,
        color: Colors.white,
      ),
    ),
    EmrStep(
      onPressed: () => controller.gotoStep(kDeliverySelect),
      state: stepReached >= kDeliverySelect + 1
          ? StepState.complete
          : StepState.indexed,
      content: const SizedBox(),
      title: Text(
        controller.steps[kDeliverySelect].title,
        style: EmrOneConstants.kSmallestHeadingTextStyle
            .copyWith(color: themeColor),
      ),
      stepIcon: const Icon(
        Icons.local_shipping_outlined,
        color: Colors.white,
      ),
    ),
    EmrStep(
      onPressed: () => controller.gotoStep(kGradesSelect),
      state: stepReached >= kGradesSelect + 1
          ? StepState.complete
          : StepState.indexed,
      content: const SizedBox(),
      title: Text(
        controller.steps[kGradesSelect].title,
        style: EmrOneConstants.kSmallestHeadingTextStyle
            .copyWith(color: themeColor),
      ),
      stepIcon: const Icon(
        Icons.category_outlined,
        color: Colors.white,
      ),
    ),
    EmrStep(
      onPressed: () => controller.gotoStep(kSummary),
      state:
          stepReached >= kSummary + 1 ? StepState.complete : StepState.indexed,
      content: const SizedBox(),
      title: Text(
        controller.steps[kSummary].title,
        style: EmrOneConstants.kSmallestHeadingTextStyle
            .copyWith(color: themeColor),
      ),
      stepIcon: const Icon(
        Icons.summarize_outlined,
        color: Colors.white,
      ),
    ),
  ];
}
