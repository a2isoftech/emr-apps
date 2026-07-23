import 'package:emr_one_core/widgets/layouts/query_layout/emr_action.dart';
import 'package:emr_one_data_management/screens/query_layout_example/controllers/fruits_screen_controller.dart';
import 'package:flutter/material.dart';

class ContextualActionSetPriorityIntent extends Intent {
  const ContextualActionSetPriorityIntent({required this.context});

  final BuildContext context;
}

class ContextualActionSetPriority
    extends EmrAction<ContextualActionSetPriorityIntent> {
  ContextualActionSetPriority({
    required this.controller,
    required super.createIntent,
    super.icon = Icons.priority_high,
    super.label = 'Set Priority',
    super.isContextual = true,
    bool enabled = true,
  }) {
    super.actionEnabled.value = enabled;
  }

  final FruitsScreenController controller;

  @override
  Object? invoke(
    covariant ContextualActionSetPriorityIntent intent, [
    BuildContext? context,
  ]) {
    controller.doAction(intent.context, 'Context action', label);
    return null; // Return appropriate value if needed
  }
}
