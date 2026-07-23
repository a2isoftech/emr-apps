import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_wizard/controller/wizard_controller.dart';
import 'package:flutter/material.dart';

class EOWizardNav extends StatelessWidget {
  const EOWizardNav({
    super.key,
    required this.controller,
    this.allowNext = true,
    this.onNext,
    this.onPrev,
    this.isLast = false,
    this.allowPrev = true,
    this.onNextText,
  });

  final EOWizardController controller;
  final bool allowNext;
  final bool allowPrev;
  final bool isLast;
  final Function()? onNext;
  final Function()? onPrev;
  final String? onNextText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (allowPrev)
            OutlinedButton(
              onPressed: () =>
                  onPrev == null ? controller.previousStep() : onPrev!(),
              child: Text(context.l10n.previous),
            ),
          if (isLast)
            ElevatedButton(
              onPressed:
                  onNext ?? (allowNext ? () => controller.nextStep() : null),
              child: Text(context.l10n.create),
            ),
          onNextText != null
              ? FilledButton(
                  onPressed: onNext ??
                      (allowNext ? () => controller.nextStep() : null),
                  child: Text(onNextText ?? context.l10n.next.toUpperCase()))
              : OutlinedButton(
                  onPressed: onNext ??
                      (allowNext ? () => controller.nextStep() : null),
                  child: Text(context.l10n.next.toUpperCase()),
                ),
        ],
      ),
    );
  }
}
