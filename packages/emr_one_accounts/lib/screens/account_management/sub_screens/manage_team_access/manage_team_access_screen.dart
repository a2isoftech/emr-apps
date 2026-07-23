import 'package:emr_one_accounts/screens/account_management/sub_screens/manage_team_access/controllers/manage_team_acces_controller.dart';
import 'package:emr_one_accounts/screens/account_management/sub_screens/manage_team_access/widgets/edit_team_access.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class ManageTeamAccessScreen extends StatefulWidget {
  const ManageTeamAccessScreen({
    required this.controller,
    required this.account,
    required this.teamsFormKey,
    required this.teamId,
    super.key,
  });

  final Account account;
  final ManageTeamAccessController controller;
  final GlobalKey<FormState> teamsFormKey;
  final String? teamId;

  @override
  State<ManageTeamAccessScreen> createState() => _ManageTeamAccessScreenState();
}

class _ManageTeamAccessScreenState extends State<ManageTeamAccessScreen> {
  @override
  Widget build(BuildContext context) {
    widget.controller.setAccount(widget.account);
    if (widget.teamId != null && widget.teamId!.isNotEmpty) {
      final accountTeam = widget.account.accountTeams
          ?.where((x) => x.teamId == widget.teamId)
          .first;
      final teamMem = Team(
        id: accountTeam!.teamId,
        name: accountTeam.teamName,
        members: [],
      );
      widget.controller.setTeam(teamMem);
    } else {
      widget.controller.setTeam(null);
    }
    return Form(
      key: widget.teamsFormKey,
      child: EmrTabBarVerticalView(
        children: [
          EditTeamAccess(
            context,
            controller: widget.controller,
            title: context.l10n.accountAccess,
          ),
        ],
      ),
    );
  }
}
