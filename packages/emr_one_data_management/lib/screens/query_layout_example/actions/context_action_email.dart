import 'package:emr_one_core/widgets/layouts/query_layout/emr_action.dart';
import 'package:emr_one_data_management/screens/query_layout_example/controllers/fruits_screen_controller.dart';
import 'package:flutter/material.dart';

class ContextualActionEmailIntent extends Intent {
  const ContextualActionEmailIntent({required this.context});

  final BuildContext context;
}

class ContextualActionEmail extends EmrAction<ContextualActionEmailIntent> {
  ContextualActionEmail({
    required this.controller,
    required super.createIntent,
    super.icon = Icons.send,
    super.label = 'Send email',
    super.isContextual = true,
    bool enabled = true,
  }) {
    super.actionEnabled.value = enabled;
  }

  final FruitsScreenController controller;

  @override
  Object? invoke(
    covariant ContextualActionEmailIntent intent, [
    BuildContext? context,
  ]) {
    controller.doAction(intent.context, 'Context Action', label);
    return null; // Return appropriate value if needed
  }
}
