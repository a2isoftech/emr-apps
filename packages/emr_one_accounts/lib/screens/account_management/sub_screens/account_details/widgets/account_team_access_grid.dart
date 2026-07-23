import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/constants.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_accounts/screens/account_management/sub_screens/manage_team_access/manage_team_access.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:emr_sharedtypes/models/teams/account_team.dart';
import 'package:flutter/material.dart';

class AccountTeamAccessGrid extends StatefulWidget {
  const AccountTeamAccessGrid({
    required this.account,
    required this.controller,
    super.key,
  });

  final Account? account;
  final ManageTeamAccessController controller;

  @override
  State<AccountTeamAccessGrid> createState() => _AccountTeamAccessGridState();
}

class _AccountTeamAccessGridState extends State<AccountTeamAccessGrid> {
  late final EmrGridController<AccountTeam> gridController;
  late final teamFormKey = GlobalKey<FormState>();
  final Map<String, ManageTeamAccessController> _deleteControllers = {};

  ManageTeamAccessController _getDeleteController(AccountTeam item) {
    return _deleteControllers.putIfAbsent(
      item.teamId,
      () => ManageTeamAccessController(
        coreApiService: widget.controller.coreApiService,
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    gridController = EmrGridController<AccountTeam>(
      data: ValueNotifier(widget.account?.accountTeams ?? []),
    );
    widget.controller.gridRefreshSignal.addListener(_refreshGridData);
  }

  @override
  void didUpdateWidget(covariant AccountTeamAccessGrid oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.controller != widget.controller) {
      oldWidget.controller.gridRefreshSignal.removeListener(_refreshGridData);
      widget.controller.gridRefreshSignal.addListener(_refreshGridData);
    }
    gridController.data.value = widget.account?.accountTeams ?? [];
  }

  @override
  void dispose() {
    for (final c in _deleteControllers.values) {
      c.dispose();
    }
    widget.controller.gridRefreshSignal.removeListener(_refreshGridData);
    super.dispose();
  }

  Future<void> _refreshGridData() async {
    gridController.showLoader.value = true;
    final result = await context.coreApi.accountService.getAccountInfo(
      widget.account?.id ?? '',
      forceLoad: true,
    );
    final newAccount = result.$1;
    if (newAccount != null && mounted) {
      gridController.data.value = newAccount.accountTeams ?? [];
    }
    if (mounted) {
      gridController.showLoader.value = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<AccountTeam>>(
      valueListenable: gridController.data,
      builder: (context, teams, _) {
        final height = teams.isEmpty
            ? Insets.gutter * 6
            : (teams.length + 1) * accountGridRowHeight;

        return SizedBox(
          height: height,
          child: EmrGrid<AccountTeam>(
            controller: gridController,
            alternateBackgroundRowColour: true,
            pinnedRowCount: 1,
            rowHeight: (rowIndex) => accountGridRowHeight,
            noRecordsMessage: Text(context.l10n.noRecordsMessage),
            columns: [
              EmrGridColumn(
                headerBuilder: () => EmrGridHeader(text: context.l10n.name),
                cellBuilder: (item) => Text(item.teamName),
              ),
              EmrGridColumn(
                headerBuilder: () => EmrGridHeader(text: context.l10n.actions),
                cellBuilder: (item) => Row(
                  children: [
                    Builder(
                      builder: (context) {
                        final deleteController = _getDeleteController(item);
                        return RecordDeleter(
                          controller: deleteController,
                          entityName: context.l10n.team,
                          showIcon: true,
                          onPreDelete: () {
                            deleteController.account = widget.account;
                            deleteController.setTeam(
                              Team(id: item.teamId, name: item.teamName),
                            );
                          },
                          onDelete:
                              ({
                                required bool success,
                                required String error,
                              }) async {
                                if (!success) {
                                  await EmrModal.showMessageBar(
                                    context,
                                    error.isNotEmpty
                                        ? error
                                        : context.l10n.failedToDeleteTeam,
                                    messageType: MessageBarTypes.error,
                                  );
                                  return;
                                }

                                _deleteControllers
                                    .remove(item.teamId)
                                    ?.dispose();
                                widget.account!.accountTeams!.removeWhere(
                                  (c) => c.teamId == item.teamId,
                                );
                                if (context.mounted) {
                                  await EmrModal.showMessageBar(
                                    context,
                                    context.l10n.teamDeletedSuccessfully,
                                  );
                                }
                                widget.controller.reset();
                              },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
            onRowTapped: (item) => showAddEditTeamDialog(item.teamId),
          ),
        );
      },
    );
  }

  void showAddEditTeamDialog(String teamId) {
    EmrDialog.modal<void>(
      context,
      titleText: context.l10n.accountAccess,
      acceptLabel: context.l10n.save,
      builder: (context) => Builder(
        builder: (context) {
          widget.controller.errorMessage.value = '';
          return Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.3,
                child: ManageTeamAccessScreen(
                  controller: widget.controller,
                  account: widget.account!,
                  teamsFormKey: teamFormKey,
                  teamId: teamId,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: ValueListenableBuilder<String>(
                  valueListenable: widget.controller.errorMessage,
                  builder: (_, visible, __) {
                    return visible != ''
                        ? Container(
                            padding: const EdgeInsets.all(Insets.gutter / 2),
                            color: Theme.of(context).colorScheme.error,
                            child: Text(
                              widget.controller.errorMessage.value,
                              style: const TextStyle(color: Colors.white),
                            ),
                          )
                        : const SizedBox.shrink();
                  },
                ),
              ),
            ],
          );
        },
      ),
      onAccept: () async {
        try {
          final isFormValid = teamFormKey.currentState?.validate() ?? true;
          if (isFormValid) {
            final (success, error) = await widget.controller.add();

            if (!success) {
              widget.controller.errorMessage.value = error;
              return;
            }
            widget.controller.reset();
            widget.controller.gridRefreshSignal.value++;
            context.pop();
          } else {
            widget.controller.isFormValid.value = false;
          }
        } catch (e) {
          widget.controller.errorMessage.value = e.toString();
        }
      },
    );
  }
}
