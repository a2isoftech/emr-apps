import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_inform/constants/colors.dart';
import 'package:emr_one_inform/screens/base/base_page.dart';
import 'package:emr_one_inform/screens/team/add_team/add_team_controller.dart';
import 'package:emr_one_inform/screens/team/team_model.dart';
import 'package:emr_one_inform/widgets/inform_assign_multiple.dart';
import 'package:emr_one_inform/widgets/inform_textbox.dart';
import 'package:flutter/material.dart';

abstract class AddTeamCommon extends BasePage<AddTeamController> {
  AddTeamCommon({required this.teamId, super.key});

  final _formKey = GlobalKey<FormState>();
  final _teamNameController = TextEditingController();
  final String? teamId;

  @override
  String getTitle(BuildContext context) {
    return teamId != null ? context.l10n.editTeam : context.l10n.addTeam;
  }

  @override
  void initState(BuildContext context) {
    if (teamId != null) {
      controller.getTeamById(teamId: teamId!);
    }
  }

  @override
  Widget widgetBuilder(BuildContext context) {
    if (controller.teamName != '') {
      _teamNameController.text = controller.teamName;
      _teamNameController.selection = TextSelection.fromPosition(
        TextPosition(offset: _teamNameController.text.length),
      );
    }

    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: parentWidget(
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InformTextBox(
                controller: _teamNameController,
                hintText: context.l10n.teamNameHint,
                labelText: context.l10n.teamNameLabel,
                onChanged: (value) => controller.setTeamName(value ?? ''),
                validationMessage: context.l10n.teamNameValidation,
              ),
              const SizedBox(height: 10),
              AssignMultipleEntity<TeamMember>(
                key: UniqueKey(),
                suggestionsCallback: (searchText) async {
                  return (searchText.length > 2)
                      ? (await controller.getUsers(searchText))
                          .map(
                            (e) => TeamMember(
                              userName: e.displayName,
                              userUuid: e.id,
                            ),
                          )
                          .toList()
                      : const Iterable<TeamMember>.empty();
                },
                valueSelector: (e) => e.userName!,
                defaultSelectedItems: controller.teamMembers,
                onItemDeleted: (x) =>
                    setState(() => controller.teamMembers.remove(x)),
                onSuggestionSelected: (x) =>
                    setState(() => controller.teamMembers.add(x)),
                hint: context.l10n.selectUserLabel,
                label: context.l10n.selectUserLabel,
              ),
              const SizedBox(height: 10),
              ChoiceChip(
                label: Text(context.l10n.isActive),
                selected: controller.isActive,
                selectedColor: FormAppColors.success,
                onSelected: (value) =>
                    controller.setTeamNameDeleted(teamIsActive: value),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> onActionButtonPressed(BuildContext context) async {
    await controller.saveTeam();

    if (context.mounted) {
      context.pop();
    }
  }

  Widget parentWidget(Widget child);
}
