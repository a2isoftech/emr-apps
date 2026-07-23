import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_inform/common/date_utility.dart';
import 'package:emr_one_inform/constants/colors.dart';
import 'package:emr_one_inform/constants/strings.dart';
import 'package:emr_one_inform/constants/styles.dart';
import 'package:emr_one_inform/globals.dart';
import 'package:emr_one_inform/import_template/controllers/import_template_controller.dart';
import 'package:emr_one_inform/import_template/models/list_item.dart';
import 'package:emr_one_inform/import_template/views/drop_zone_widget.dart';
import 'package:emr_one_inform/models/message_type.dart';
import 'package:emr_one_inform/models/schedule_task_models.dart';
import 'package:emr_one_inform/models/selected_dates.dart';
import 'package:emr_one_inform/screens/base/base_page.dart';
import 'package:emr_one_inform/screens/team/team_model.dart';
import 'package:emr_one_inform/widgets/date_picker_dialog.dart';
import 'package:emr_one_inform/widgets/forms_app_widgets.dart';
import 'package:emr_one_inform/widgets/inform_assign_multiple.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ImportTemplateView extends BasePage<ImportTemplateController> {
  ImportTemplateView({super.key});

  late final TextEditingController _filenameTextController;

  @override
  Widget? getActionButton(BuildContext context) => ElevatedButton.icon(
        onPressed: () => controller.downloadTemplate(),
        icon: const Icon(Icons.download),
        label: Text(context.l10n.downloadTemplate),
      );

  @override
  String getTitle(BuildContext context) => context.l10n.importTemplate;

  @override
  PreferredSizeWidget? getAppBar(BuildContext context) => null;

  @override
  void initState(BuildContext context) {
    _filenameTextController = TextEditingController.fromValue(
      TextEditingValue(text: controller.templateToUpload?.name ?? ''),
    );

    controller.getClients();
  }

  @override
  void dispose() {
    _filenameTextController.dispose();
    super.dispose();
  }

  @override
  Widget widgetBuilder(BuildContext context) {
    final activeLocale = Localizations.localeOf(context);
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Column(
        children: [
          const ListTile(
            title: Text(
              'This page allows you to import a new template or add '
              'a new version to an existing template',
            ),
          ),
          DropZoneWidget(
            onFileDropped: (dropedFile) async {
              await controller.setTemplate(dropedFile);
              if (controller.effectiveDate != null) {
                effectiveDateController.text =
                    DateFormat.yMd(activeLocale.toString())
                        .format(controller.effectiveDate!.toLocal());
              }
            },
            onError: (errorMessage) {
              ScaffoldMessenger.of(context).showSnackBar(
                failureSnackBar(errorMessage),
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Visibility(
            visible: controller.templateToUpload != null,
            child: Column(
              children: [
                SizedBox(
                  width: (MediaQuery.of(context).size.width) * 0.75,
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    margin: const EdgeInsets.fromLTRB(1, 5, 1, 5),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: EmrColours.secondaryGrey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('${controller.templateToUpload?.name}'),
                              const Spacer(),
                              GestureDetector(
                                onTap: () => controller.setTemplate(null),
                                child: const Icon(Icons.close),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Text(controller.templateToUpload?.size ?? ''),
                              const Spacer(),
                              const Text('100%'),
                            ],
                          ),
                          const SizedBox(height: 10),
                          LinearPercentIndicator(
                            lineHeight: 10,
                            percent: 1,
                            progressColor: FormAppColors.success,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    style: TextStyle(color: FormAppColors.success),
                    'This will be associated with Maintenance Plan Id: '
                    '${controller.templateToUpload?.name.split('.')[0]}',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(36),
                  child: FutureBuilder<List<ListItem>>(
                    future: controller.clients,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else {
                        if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        } else {
                          if (snapshot.hasData) {
                            final data = snapshot.data!;
                            final items = data
                                .map(
                                  (e) => InputChip(
                                    selectedColor: FormAppColors.success,
                                    label: Text(
                                      e.title,
                                      style: TextStyle(
                                        color: controller.clientId == e.id
                                            ? FormAppColors.white
                                            : null,
                                      ),
                                    ),
                                    selected: controller.clientId == e.id,
                                    onPressed: () =>
                                        controller.setClientId(e.id),
                                  ),
                                )
                                .cast<Widget>()
                                .toList();
                            return Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      context.l10n.categoriesLabel,
                                      style: EmrOneConstants
                                          .kMediumHeadingTextStyle,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Wrap(
                                        spacing: 10,
                                        runSpacing: 10,
                                        children: items,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Permissions',
                                      style: EmrOneConstants
                                          .kMediumHeadingTextStyle,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Wrap(
                                        spacing: 10,
                                        runSpacing: 10,
                                        children: [
                                          cardChipButttons(
                                            context,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          } else {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                        }
                      }
                    },
                  ),
                ),
                if (controller.isImportingTemplate) ...[
                  const CircularProgressIndicator(),
                ],
                Padding(
                  padding: const EdgeInsets.all(32),
                  child: ElevatedButton.icon(
                    onPressed: controller.searchDisabled
                        ? null
                        : () => _importTemplateButtonPressed(context),
                    icon: const Icon(Icons.upload),
                    label: Text('Import ${controller.templateToUpload?.name}'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget cardChipButttons(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            spacing: 5,
            runSpacing: 5,
            children: [
              if (ScreenAccess().canValidateJobs(context))
                _choiceChipForValidateBySignature(
                  context,
                ),
              if (ScreenAccess().canValidateJobs(context))
                _choiceChipForValidateByWorkOrder(
                  context,
                ),
              if (ScreenAccess().canToggleDigitalSignatureInTemplate(context))
                _choiceChipForDigitalSignature(
                  context,
                ),
              _choiceChipForEmailNotification(context),
              _choiceChipForAssignToTeamOnFailure(context),
            ],
          ),
        ],
      );

  Widget _choiceChipForValidateBySignature(
    BuildContext context,
  ) {
    return ChoiceChip(
      label: const Text(
        'Verify by Sign',
        // style: TextStyle(fontSize: 10),
      ),
      selected: controller.isValidateBySignature,
      selectedColor: FormAppColors.success,
      onSelected: (value) async {
        if (!value) {
          await showConfirmationDialog(
            context: context,
            message: 'Do you want to disable'
                ' validate by signature on this template',
          ).then((isConfirmed) async {
            if (isConfirmed ?? false) {
              setState(() {
                controller.isValidateBySignature = value;
              });
            }
          });
        } else {
          await showDialog<bool?>(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return AlertDialog(
                title: const Text('Enable validate by signature'),
                content: addEffectiveDateSelector(context),
                actions: [
                  TextButton(
                    onPressed: () => context.pop(false),
                    child: Text(context.l10n.close),
                  ),
                  TextButton(
                    onPressed: () => context.pop(true),
                    child: Text(context.l10n.done),
                  ),
                ],
              );
            },
          ).then((isConfirmed) async {
            if (isConfirmed ?? false) {
              setState(() {
                controller.isValidateBySignature = value;
              });
            }
          });
        }
      },
    );
  }

  Widget _choiceChipForDigitalSignature(
    BuildContext context,
  ) {
    return ChoiceChip(
      label: const Text(
        'Digital Signature',
        // style: TextStyle(fontSize: 10),
      ),
      selected: controller.isDigitalSignature,
      selectedColor: FormAppColors.success,
      onSelected: (value) async {
        await showConfirmationDialog(
          context: context,
          message: 'Do you want to '
              '''
${controller.isDigitalSignature ? 'disable' : 'enable'}'''
              ' digital signature on this template',
        ).then((isConfirmed) async {
          if (isConfirmed ?? false) {
            setState(() {
              controller.isDigitalSignature = value;
            });
          }
        });
      },
    );
  }

  Widget _choiceChipForValidateByWorkOrder(
    BuildContext context,
  ) {
    return ChoiceChip(
      label: const Text(
        'Verify by WO',
        // style: TextStyle(fontSize: 10),
      ),
      selected: controller.isValidateByWO,
      selectedColor: FormAppColors.success,
      onSelected: (value) async {
        if (!value) {
          await showConfirmationDialog(
            context: context,
            message: 'Do you want to disable'
                ' validate by work order on this template',
          ).then((isConfirmed) async {
            if (isConfirmed ?? false) {
              setState(() {
                controller.isValidateByWO = value;
              });
            }
          });
        } else {
          await showDialog<bool?>(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return AlertDialog(
                title: const Text('Enable validate by work order'),
                content: addEffectiveDateSelector(context),
                actions: [
                  TextButton(
                    onPressed: () => context.pop(false),
                    child: Text(context.l10n.close),
                  ),
                  TextButton(
                    onPressed: () => context.pop(true),
                    child: Text(context.l10n.done),
                  ),
                ],
              );
            },
          ).then((isConfirmed) async {
            if (isConfirmed ?? false) {
              setState(() {
                controller.isValidateByWO = value;
              });
            }
          });
        }
      },
    );
  }

  Widget _choiceChipForEmailNotification(
    BuildContext context,
  ) {
    return ChoiceChip(
      label: const Text(
        'Email Notification',
        // style: TextStyle(fontSize: 10),
      ),
      selected: controller.isEmailNotificationRequired ||
          controller.sendEmailOnFailedQuestions,
      selectedColor: FormAppColors.success,
      onSelected: (value) async {
        controller.selectedUsers = [];
        if (controller.emailIds?.isNotEmpty ?? false) {
          final emailIds = controller.emailIds!.split(',');
          for (final emailId in emailIds) {
            final users = await controller.getUsers(emailId);
            if (users.isNotEmpty) {
              controller.selectedUsers.add(users.first);
            } else {
              controller.selectedUsers.add(
                User.fromJson(
                  <String, dynamic>{
                    'id': '',
                    'firstName': emailId,
                    'surname': '',
                    'email': emailId,
                  },
                ),
              );
            }
          }
        }

        await showDialog<(bool, bool, bool)?>(
          context: stateMediator.getBuildContext!.call(),
          barrierDismissible: false,
          builder: (context) {
            var onSuccess = controller.isEmailNotificationRequired;
            var onFailedQuestion = controller.sendEmailOnFailedQuestions;
            if (!onSuccess && !onFailedQuestion) onSuccess = true;
            return AlertDialog(
              title: const Text('Enable email notification'),
              content: StatefulBuilder(
                builder: (context, setState) {
                  return SizedBox(
                    width: 500,
                    height: 500,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Wrap(
                          spacing: 10,
                          runSpacing: 10,
                          children: [
                            InputChip(
                              label: const Text('On Submit'),
                              onPressed: () {
                                setState(() {
                                  onSuccess = true;
                                  onFailedQuestion = false;
                                });
                              },
                              selected: onSuccess,
                              selectedColor: FormAppColors.success,
                            ),
                            InputChip(
                              label: const Text('On Failed Question'),
                              onPressed: () {
                                setState(() {
                                  onSuccess = false;
                                  onFailedQuestion = true;
                                });
                              },
                              selectedColor: FormAppColors.success,
                              selected: onFailedQuestion,
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        AssignMultipleEntity<User>(
                          suggestionsCallback: (searchText) async {
                            if (searchText.length > 2) {
                              final users =
                                  await controller.getUsers(searchText);
                              if (RegExp(RegexPatterns.email)
                                  .hasMatch(searchText)) {
                                users.add(
                                  User.fromJson(
                                    <String, dynamic>{
                                      'id': '',
                                      'firstName': searchText,
                                      'surname': '',
                                      'email': searchText,
                                    },
                                  ),
                                );
                              }
                              return users;
                            }
                            return const Iterable<User>.empty();
                          },
                          valueSelector: (e) => e.displayName,
                          defaultSelectedItems: controller.selectedUsers,
                          onSuggestionSelected: controller.selectedUsers.add,
                          onItemDeleted: controller.selectedUsers.remove,
                          hint: context.l10n.selectUserLabel,
                          label: context.l10n.userLabel,
                          itemBuilder: (context, User user) {
                            return ListTile(
                              title: Text(user.displayName),
                              subtitle: Text(user.email ?? ''),
                            );
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
              actions: [
                TextButton(
                  onPressed: () => context.pop((false, false, false)),
                  child: const Text('Disable'),
                ),
                TextButton(
                  onPressed: () => context.pop(),
                  child: Text(context.l10n.close),
                ),
                TextButton(
                  onPressed: () async {
                    if (controller.selectedUsers.isEmpty) {
                      await showMessageDialog(
                        context: context,
                        messageType: MessageType.error,
                        message: 'Atleast 1 user should be selected',
                      );
                      return;
                    }
                    context.pop((true, onSuccess, onFailedQuestion));
                  },
                  child: Text(context.l10n.done),
                ),
              ],
            );
          },
        ).then((isConfirmed) async {
          if (isConfirmed != null && isConfirmed.$1 == true) {
            debugPrint(isConfirmed.$1.toString());
            debugPrint(isConfirmed.$2.toString());
            debugPrint(isConfirmed.$3.toString());
            setState(() {
              controller.isEmailNotificationRequired = isConfirmed.$2;
              controller.sendEmailOnFailedQuestions = isConfirmed.$3;
            });
            controller.emailIds =
                controller.selectedUsers.map((e) => e.email).join(',');
          } else if (isConfirmed != null && isConfirmed.$1 == false) {
            setState(() {
              controller.isEmailNotificationRequired = false;
              controller.sendEmailOnFailedQuestions = false;
            });

            controller.emailIds = null;
          }
        });
      },
    );
  }

  final teamController = TextEditingController();
  Widget _choiceChipForAssignToTeamOnFailure(
    BuildContext context,
  ) {
    return ChoiceChip(
      label: const Text(
        'Assign to team on failure',
        // style: TextStyle(fontSize: 10),
      ),
      selected: controller.assignFailedQuestionToTeamId != null,
      selectedColor: FormAppColors.success,
      onSelected: (value) async {
        teamController.text = controller.assignFailedQuestionToTeam ?? '';
        controller.selectedTeam = Team(
          uuid: controller.assignFailedQuestionToTeamId,
          name: controller.assignFailedQuestionToTeam,
        );
        await showDialog<bool?>(
          context: stateMediator.getBuildContext!.call(),
          barrierDismissible: false,
          builder: (context) {
            return AlertDialog(
              title: const Text('Enable Assign to team on failure'),
              content: addTeamSelector(context),
              actions: [
                TextButton(
                  onPressed: () => context.pop(false),
                  child: const Text('Unassign'),
                ),
                TextButton(
                  onPressed: () => context.pop(),
                  child: Text(context.l10n.close),
                ),
                TextButton(
                  onPressed: () async {
                    if (controller.selectedTeam == null) {
                      await showMessageDialog(
                        context: context,
                        messageType: MessageType.error,
                        message: 'Please select a team',
                      );
                      return;
                    }
                    context.pop(true);
                  },
                  child: Text(context.l10n.done),
                ),
              ],
            );
          },
        ).then((isConfirmed) async {
          if (isConfirmed != null && isConfirmed == true) {
            setState(() {
              controller.assignFailedQuestionToTeamId =
                  controller.selectedTeam?.uuid;
              controller.assignFailedQuestionToTeam =
                  controller.selectedTeam?.name;
            });
          } else if (isConfirmed != null && isConfirmed == false) {
            setState(() {
              controller.assignFailedQuestionToTeamId = null;
              controller.assignFailedQuestionToTeam = null;
            });
          }
        });
      },
    );
  }

  Widget addTeamSelector(BuildContext context) => TypeAheadFormField<Team?>(
        suggestionsCallback: (searchText) async {
          return (searchText.length > 2)
              ? await controller.getTeams(searchText)
              : const Iterable<Team>.empty();
        },
        itemBuilder: (context, Team? team) {
          return ListTile(title: Text(team!.name!));
        },
        onSuggestionSelected: (Team? team) {
          teamController.text = team!.name!;
          controller.selectedTeam = team;
        },
        noItemsFoundBuilder: (context) => SizedBox(
          height: 50,
          child: typeAheadErrorMessageWidget(
            context.l10n.noRecordsMessage,
          ),
        ),
        textFieldConfiguration: TextFieldConfiguration(
          controller: teamController,
          decoration: FormStyles.textFieldDecoration(context).copyWith(
            labelText: context.l10n.teamLabel,
            hintText: context.l10n.teamHint,
            suffixIcon: teamController.text.isEmpty
                ? null
                : IconButton(
                    onPressed: () {
                      teamController.clear();
                      controller.selectedTeam = null;
                    },
                    icon: const Icon(Icons.clear),
                  ),
          ),
        ),
      );

  final effectiveDateController = TextEditingController();
  void _dismissKeyboard(BuildContext context) {
    final currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }

  Widget addEffectiveDateSelector(BuildContext context) => TextFormField(
        controller: effectiveDateController,
        decoration: FormStyles.textFieldDecoration(context).copyWith(
          labelText: 'Effective Date',
          hintText: 'Effective Date',
          suffixIcon: IconButton(
            icon: FormAppIcons.searchCalendarIcon,
            onPressed: () async {
              _dismissKeyboard(context);
              await showDialog<SelectedDates>(
                context: context,
                builder: (context) => DatePickerWidget(
                  selectedDate: SelectedDates.date(
                    date: DateTime.now().toUtc(),
                  ),
                  datePickerType: DatePickerType.date,
                  minDate: DateTime.now(),
                  maxDate: DateTime.now().oneYearAhead(),
                ),
                barrierDismissible: false,
              ).then((result) {
                if (result is SelectedDates) {
                  setState(() {
                    final activeLocale = Localizations.localeOf(context);
                    effectiveDateController.text =
                        DateFormat.yMd(activeLocale.toString())
                            .format(result.date!.toLocal());

                    controller.effectiveDate = result.date;
                  });
                }
              });
            },
          ),
        ),
        readOnly: true,
      );
  SnackBar successSnackBar() {
    return const SnackBar(
      content: Row(
        children: [
          Icon(Icons.done_outline_rounded, color: Colors.white, size: 20),
          SizedBox(width: 16),
          Expanded(
            child: Text('Template imported', style: TextStyle(fontSize: 16)),
          ),
        ],
      ),
      backgroundColor: Colors.green,
      duration: Duration(seconds: 5),
      behavior: SnackBarBehavior.floating,
    );
  }

  SnackBar failureSnackBar(String message) {
    return SnackBar(
      content: Row(
        children: [
          const Icon(
            Icons.done_outline_rounded,
            color: Colors.white,
            size: 20,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              'Template was NOT imported: $message',
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.red,
      duration: const Duration(seconds: 5),
      behavior: SnackBarBehavior.floating,
    );
  }

  Future<void> _importTemplateButtonPressed(BuildContext context) async {
    await controller.importTemplate().then((errorMessage) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          errorMessage == null
              ? successSnackBar()
              : failureSnackBar(errorMessage),
        );
        if (errorMessage == null) context.pop();
      }
    });
  }
}
