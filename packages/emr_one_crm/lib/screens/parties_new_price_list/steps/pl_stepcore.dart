import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_wizard/emr_one_wizard.dart';
import 'package:flutter/material.dart';

class PLStepCore extends StatelessWidget {
  const PLStepCore({
    required this.child,
    required this.controller,
    super.key,
    this.allowNext = true,
    this.onNext,
    this.onPrev,
    this.isLast = false,
    this.navEnabled = true,
    this.onNextText = '',
  });

  final Widget child;
  final EOWizardController controller;
  final bool allowNext;
  final bool isLast;
  final bool navEnabled;
  final void Function()? onNext;
  final void Function()? onPrev;
  final String onNextText;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(Insets.gutter),
              child: child,
            ),
          ),
          if (navEnabled)
            SizedBox(
              height: 64,
              child: Padding(
                padding: const EdgeInsets.all(Insets.gutter),
                child: EOWizardNav(
                  onNext: onNext,
                  onPrev: onPrev,
                  controller: controller,
                  allowNext: allowNext,
                  isLast: isLast,
                  onNextText: onNextText,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
