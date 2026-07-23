import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_inform/constants/colors.dart';
import 'package:emr_one_inform/screens/team/add_team/add_team_common.dart';
import 'package:flutter/material.dart';

class AddTeamNative extends AddTeamCommon {
  AddTeamNative({required super.teamId, super.key});

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
