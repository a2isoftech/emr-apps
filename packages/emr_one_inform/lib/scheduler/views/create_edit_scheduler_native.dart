import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/scheduler/views/create_edit_scheduler_common.dart';
import 'package:flutter/material.dart';

class CreateEditSchedulerNative extends CreateEditSchedulerCommon {
  CreateEditSchedulerNative({
    super.scheduleToEdit,
    super.selectedTemplate,
    super.key,
  });

  @override
  Widget? pageHeader(BuildContext context) => null;

  @override
  Widget? getActionButton(BuildContext context) {
    return FloatingActionButton(
      elevation: 2,
      backgroundColor: !canSave() ? FormAppColors.black : null,
      onPressed: canSave() ? () => onActionButtonPressed(context) : null,
      tooltip: context.l10n.done,
      shape: const CircleBorder(),
      child: Icon(
        Icons.done,
        color: FormAppColors.white,
      ),
    );
  }
}
