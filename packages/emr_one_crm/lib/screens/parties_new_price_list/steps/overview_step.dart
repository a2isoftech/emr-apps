import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_core/widgets/stepper/stepper.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/data/get_steps_mobile.dart';
import 'package:emr_one_wizard/emr_one_wizard.dart';
import 'package:flutter/material.dart';

class OverviewStep extends StatelessWidget {
  const OverviewStep({required this.controller, super.key});

  final EOWizardController controller;

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
                  color: themeColor,
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
