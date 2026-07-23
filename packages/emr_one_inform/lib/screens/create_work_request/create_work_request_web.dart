import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/screens/create_work_request/create_work_request_common.dart';
import 'package:flutter/material.dart';

class CreateWorkRequestWeb extends CreateWorkRequestCommon {
  CreateWorkRequestWeb({super.key});

  @override
  PreferredSizeWidget? getAppBar(BuildContext context) => null;

  @override
  Widget? getActionButton(BuildContext context) {
    return ElevatedButton.icon(
      onPressed:
          controller.isBusy ? null : () => onActionButtonPressed(context),
      label: Text(context.l10n.submitButton),
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll<Color>(
          controller.isBusy ? FormAppColors.black : FormAppColors.success,
        ),
      ),
      icon: Icon(Icons.done, color: FormAppColors.white),
    );
  }
}
