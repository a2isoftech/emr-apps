import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_inform/constants/colors.dart';
import 'package:emr_one_inform/screens/form_lists/add_list/add_form_list_common.dart';
import 'package:flutter/material.dart';

class AddFormListNative extends AddFormListCommon {
  AddFormListNative({required super.listId, super.key});

  @override
  Widget? pageHeader(BuildContext context) => null;

  @override
  Widget? getActionButton(BuildContext context) {
    return FloatingActionButton(
      elevation: 2,
      onPressed: () => (controller.isBusy || !controller.isFormValid())
          ? null
          : onActionButtonPressed(context),
      tooltip: context.l10n.save,
      shape: const CircleBorder(),
      backgroundColor: (controller.isBusy || !controller.isFormValid())
          ? FormAppColors.black
          : EmrColours.primaryGreen,
      child: Icon(Icons.done, color: FormAppColors.white),
    );
  }

  @override
  Widget parentWidget(Widget child) => child;
}
