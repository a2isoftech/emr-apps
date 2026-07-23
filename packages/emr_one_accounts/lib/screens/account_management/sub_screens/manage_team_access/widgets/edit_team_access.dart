import 'package:emr_one_accounts/screens/account_management/sub_screens/manage_team_access/controllers/manage_team_acces_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class EditTeamAccess extends EmrTabBarVerticalViewResponsiveColumnsCard {
  EditTeamAccess(
    BuildContext context, {
    required ManageTeamAccessController controller,
    required super.title,
    super.key,
  }) : super(
         children: [
           EmrPickerFormField<Team>(
             labelText: context.l10n.team,
             binding: controller.data.teamNotifier,
             items: (String query) async {
               return controller.getTeams(query);
             },
             itemTitleText: (item) => item.name,
             validator: Validators.required,
           ),
         ],
       );
}
