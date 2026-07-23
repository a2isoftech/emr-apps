import 'package:emr_one_core/widgets/layouts/query_layout/emr_action.dart';
import 'package:flutter/widgets.dart';

class WorkflowsAddLevelIntent extends Intent {
  const WorkflowsAddLevelIntent({required this.context});

  final BuildContext context;
}

class WorkflowsAddLevelAction extends EmrAction<WorkflowsAddLevelIntent> {
  WorkflowsAddLevelAction({
    required super.createIntent,
    required super.label,
    required this.onAddLevel,
    super.controlType = EmrActionControlType.button,
    super.isPrimary = true,
  });
  void Function() onAddLevel;

  @override
  Object? invoke(WorkflowsAddLevelIntent intent, [BuildContext? context]) {
    onAddLevel();
    return null;
  }
}
