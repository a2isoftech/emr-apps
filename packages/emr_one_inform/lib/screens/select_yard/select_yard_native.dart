import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/screens/select_yard/select_yard_common.dart';
import 'package:flutter/material.dart';

class SelectYardNative extends SelectYardCommon {
  SelectYardNative({super.canNavigateBack, super.onSave, super.key});

  @override
  PreferredSizeWidget? getAppBar(BuildContext context) {
    return AppBar(
      leading: canNavigateBack
          ? BackButton(color: FormAppColors.white)
          : IconButton(
              icon: Icon(Icons.home_outlined, color: FormAppColors.white),
              iconSize: 24,
              onPressed: () {
                context.goNamed(NamedRoutes.home);
              },
            ),
      title: Text(
        context.l10n.selectYard,
        style: TextStyle(fontSize: 20, color: FormAppColors.white),
      ),
      titleSpacing: 0,
      backgroundColor: FormAppColors.black,
    );
  }

  @override
  Widget? pageHeader(BuildContext context) => null;

  @override
  Widget actionButton(BuildContext context) {
    return FloatingActionButton(
      elevation: 2,
      onPressed: !controller.isSaveEnabled
          ? null
          : () {
              if (canNavigateBack) {
                context.goNamed(FormsRoutingName.inForms);
                return;
              }

              onSave?.call();
            },
      tooltip: context.l10n.saveButtonText,
      shape: const CircleBorder(),
      backgroundColor: controller.isSaveEnabled
          ? FormAppColors.success
          : FormAppColors.black,
      child: Icon(
        Icons.done,
        color: FormAppColors.white,
      ),
    );
  }

  @override
  bool isWeb() => false;
}
