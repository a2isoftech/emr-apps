import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/screens/create_work_request/create_work_request_common.dart';
import 'package:flutter/material.dart';

class CreateWorkRequestNative extends CreateWorkRequestCommon {
  CreateWorkRequestNative({super.key});

  @override
  Widget? pageHeader(BuildContext context) => null;

  @override
  Widget? getActionButton(BuildContext context) {
    return FloatingActionButton(
      elevation: 2,
      onPressed:
          controller.isBusy ? null : () => onActionButtonPressed(context),
      tooltip: context.l10n.submitButton,
      shape: const CircleBorder(),
      backgroundColor:
          controller.isBusy ? FormAppColors.black : FormAppColors.success,
      child: Icon(Icons.done, color: FormAppColors.white),
    );
  }
}
