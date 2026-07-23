import 'package:emr_one_core/widgets/layouts/query_layout/emr_action.dart';
import 'package:emr_one_data_management/screens/query_layout_example/controllers/fruits_screen_controller.dart';
import 'package:flutter/material.dart';

class SimplePrimaryActionIntent extends Intent {
  const SimplePrimaryActionIntent({required this.context});

  final BuildContext context;
}

class SimplePrimaryAction extends EmrAction<SimplePrimaryActionIntent> {
  SimplePrimaryAction({
    required this.controller,
    required super.createIntent,
    super.icon = Icons.add,
    super.label = 'New Fruit',
    super.controlType = EmrActionControlType.button,
    super.isPrimary = true,
    bool enabled = true,
  }) {
    super.actionEnabled.value = enabled;
  }

  final FruitsScreenController controller;

  @override
  Object? invoke(
    covariant SimplePrimaryActionIntent intent, [
    BuildContext? context,
  ]) {
    controller.doAction(intent.context, 'Primary action', label);
    return null; // Return appropriate value if needed
  }
}
