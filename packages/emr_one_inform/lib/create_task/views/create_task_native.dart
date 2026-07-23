import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/create_task/views/create_task_common.dart';
import 'package:flutter/material.dart';

class CreateTaskNative extends CreateTaskCommon {
  CreateTaskNative({
    super.cloneTaskParameter,
    super.selectedDate,
    super.isEdit,
    super.key,
  });

  @override
  Widget? pageHeader(BuildContext context) => null;

  @override
  Widget? getActionButton(BuildContext context) {
    return FloatingActionButton(
      elevation: 2,
      onPressed: controller.isBusy
          ? null
          : controller.isValid
              ? () => onActionButtonPressed(context)
              : null,
      tooltip: context.l10n.generateButtonText,
      shape: const CircleBorder(),
      backgroundColor: controller.isBusy
          ? FormAppColors.black
          : controller.isValid
              ? EmrColours.primaryGreen
              : FormAppColors.black,
      child: Icon(Icons.done, color: FormAppColors.white),
    );
  }
}
