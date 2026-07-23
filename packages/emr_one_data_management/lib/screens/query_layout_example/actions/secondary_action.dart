import 'package:emr_one_core/widgets/layouts/query_layout/emr_action.dart';
import 'package:emr_one_data_management/screens/query_layout_example/controllers/fruits_screen_controller.dart';
import 'package:flutter/material.dart';

class SimpleSecondaryActionIntent extends Intent {
  const SimpleSecondaryActionIntent({required this.context});

  final BuildContext context;
}

class SimpleSecondaryAction extends EmrAction<SimpleSecondaryActionIntent> {
  SimpleSecondaryAction({
    required this.controller,
    required super.createIntent,
    super.icon = Icons.output,
    super.label = 'Export fruits',
    super.controlType = EmrActionControlType.button,
    bool enabled = true,
  }) {
    super.actionEnabled.value = enabled;
  }

  final FruitsScreenController controller;

  @override
  Object? invoke(
    covariant SimpleSecondaryActionIntent intent, [
    BuildContext? context,
  ]) {
    controller.doAction(intent.context, 'Secondary action', label);
    return null; // Return appropriate value if needed
  }
}
