import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/create_task/views/create_task_common.dart';
import 'package:flutter/material.dart';

class CreateTaskWeb extends CreateTaskCommon {
  CreateTaskWeb({
    super.cloneTaskParameter,
    super.selectedDate,
    super.isEdit,
    super.key,
  });

  @override
  PreferredSizeWidget? getAppBar(BuildContext context) => null;

  @override
  Widget? getActionButton(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: controller.isBusy
          ? null
          : !controller.isValid
              ? null
              : () => onActionButtonPressed(context),
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll<Color>(
          controller.isBusy
              ? FormAppColors.black
              : !controller.isValid
                  ? FormAppColors.black
                  : EmrColours.primaryGreen,
        ),
      ),
      icon: Icon(Icons.done, color: FormAppColors.white),
      label: const Text('Done'),
    );
  }
}
