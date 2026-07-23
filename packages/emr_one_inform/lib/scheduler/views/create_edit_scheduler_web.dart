import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/scheduler/views/create_edit_scheduler_common.dart';
import 'package:flutter/material.dart';

class CreateEditSchedulerWeb extends CreateEditSchedulerCommon {
  CreateEditSchedulerWeb({
    super.scheduleToEdit,
    super.selectedTemplate,
    super.key,
  });

  @override
  PreferredSizeWidget? getAppBar(BuildContext context) => null;

  @override
  Widget? getActionButton(BuildContext context) => ElevatedButton.icon(
        onPressed: canSave() ? () => onActionButtonPressed(context) : null,
        icon: const Icon(Icons.done),
        label: Text(context.l10n.done),
      );
}
