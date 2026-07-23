import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_wizard/emr_one_wizard.dart';
import 'package:flutter/material.dart';

class CWStepCore extends StatelessWidget {
  const CWStepCore({
    required this.child,
    required this.controller,
    super.key,
  });

  final Widget child;
  final EOWizardController controller;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(Insets.gutter),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
