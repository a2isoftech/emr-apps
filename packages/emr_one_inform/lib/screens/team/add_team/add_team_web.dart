import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_inform/constants/colors.dart';
import 'package:emr_one_inform/screens/team/add_team/add_team_common.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class AddTeamWeb extends AddTeamCommon {
  AddTeamWeb({required super.teamId, super.key});

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
