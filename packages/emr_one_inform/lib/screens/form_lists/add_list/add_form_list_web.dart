import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_inform/constants/colors.dart';
import 'package:emr_one_inform/screens/form_lists/add_list/add_form_list_common.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class AddFormListWeb extends AddFormListCommon {
  AddFormListWeb({required super.listId, super.key});

  @override
  PreferredSizeWidget? getAppBar(BuildContext context) => null;

  @override
  Widget? getActionButton(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => (controller.isBusy || !controller.isFormValid())
          ? null
          : onActionButtonPressed(context),
      label: Text(context.l10n.done),
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll<Color>(
          (controller.isBusy || !controller.isFormValid())
              ? FormAppColors.black
              : FormAppColors.success,
        ),
      ),
      icon: Icon(
        Icons.done,
        color: FormAppColors.white,
      ),
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
