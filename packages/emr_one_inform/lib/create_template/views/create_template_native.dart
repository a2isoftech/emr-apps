import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/create_template/views/create_template_common.dart';
import 'package:flutter/material.dart';

class CreateTemplateNative extends CreateTemplateCommon {
  CreateTemplateNative({super.editTemplateId, super.isClone, super.key});

  @override
  bool needWillPopScope() => true;

  @override
  Widget? pageHeader(BuildContext context) => null;

  @override
  Widget? getActionButton(BuildContext context) {
    return FloatingActionButton(
      elevation: 2,
      onPressed: () => controller.isBusy || !isActionButtonEnabled()
          ? null
          : onActionButtonPressed(context),
      tooltip: context.l10n.done,
      shape: const CircleBorder(),
      backgroundColor: controller.isBusy || !isActionButtonEnabled()
          ? FormAppColors.black
          : FormAppColors.success,
      child: Icon(
        Icons.done,
        color: FormAppColors.white,
      ),
    );
  }

  @override
  Widget parentWidget(Widget child) => child;
}
