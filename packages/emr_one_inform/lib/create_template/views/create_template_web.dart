import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/create_template/views/create_template_common.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class CreateTemplateWeb extends CreateTemplateCommon {
  CreateTemplateWeb({super.editTemplateId, super.isClone, super.key});

  @override
  bool needWillPopScope() => false;

  @override
  PreferredSizeWidget? getAppBar(BuildContext context) => null;

  @override
  Widget? getActionButton(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        const SizedBox(width: 30),
        ElevatedButton.icon(
          onPressed: () => controller.isBusy || !isActionButtonEnabled()
              ? null
              : onActionButtonPressed(context),
          label: Text(context.l10n.done),
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll<Color>(
              controller.isBusy || !isActionButtonEnabled()
                  ? FormAppColors.black
                  : FormAppColors.success,
            ),
          ),
          icon: Icon(
            Icons.done,
            color: FormAppColors.white,
          ),
        ),
      ],
    );
  }

  @override
  Widget parentWidget(Widget child) {
    return ResponsiveGridRow(
      children: [
        ResponsiveGridCol(
          md: 2,
          child: Container(),
        ),
        ResponsiveGridCol(
          md: 8,
          child: child,
        ),
        ResponsiveGridCol(
          md: 2,
          child: Container(),
        ),
      ],
    );
  }
}
