import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_inform/common/date_utility.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/models/selected_dates.dart';
import 'package:emr_one_inform/repository/shared_preferences/ipreference_repository.dart';
import 'package:emr_one_inform/scheduler/controllers/create_edit_scheduler_controller.dart';
import 'package:emr_one_inform/scheduler/models/schedule_record.dart';
import 'package:emr_one_inform/screens/base/base_page.dart';
import 'package:emr_one_inform/screens/team/team_model.dart';
import 'package:emr_one_inform/widgets/inform_multiple_yard_depot_selector.dart';
import 'package:emr_one_inform/widgets/widgets_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:uuid/uuid.dart';

abstract class CreateEditSchedulerCommon
    extends BasePage<CreateEditSchedulerController> {
  CreateEditSchedulerCommon({
    this.scheduleToEdit,
    this.selectedTemplate,
    super.key,
  });

  final ScheduleRecord? scheduleToEdit;
  final FormsTemplate? selectedTemplate;

  final _teamEditController = TextEditingController();
  final _userEditController = TextEditingController();
  final _descritionEditController = TextEditingController();
  final _templateEditController = TextEditingController();
  final _repeatCountController = TextEditingController();
  final _numberOfTasksController = TextEditingController();
  final _repeatEndDateController = TextEditingController();
  late final List<RepeatInterval> repeatIntervals;
  final List<KeyValuePair<int, String>> workingDays = [
    KeyValuePair(key: 31, value: 'Mon - Fri'),
    KeyValuePair(key: 63, value: 'Mon - Sat'),
    KeyValuePair(key: 127, value: 'Mon - Sun'),
  ];
  late final ScheduleRecord schedule;

  @override
  Widget? getActionButton(BuildContext context) => null;

  @override
  String getTitle(BuildContext context) => scheduleToEdit == null
      ? context.l10n.createSchedule
      : context.l10n.editSchedule;

  @override
  void initState(BuildContext context) {
    schedule = ScheduleRecord(
      assignedTo: scheduleToEdit?.assignedTo,
      assignedToTeam: scheduleToEdit?.assignedToTeam,
      createdBy: scheduleToEdit?.createdBy ?? '',
      createdDate: scheduleToEdit?.createdDate ?? DateTime.now(),
      description: scheduleToEdit?.description ?? '',
      endDate: scheduleToEdit?.endDate,
      isActive: scheduleToEdit?.isActive ?? true,
      isDigitalSignatureRequired:
          scheduleToEdit?.isDigitalSignatureRequired ?? false,
      nextSchedulerDate: scheduleToEdit?.nextSchedulerDate ?? DateTime.now(),
      repeatFrequency: scheduleToEdit?.repeatFrequency ?? 1,
      repeatInterval: scheduleToEdit?.repeatInterval ?? 1,
      template: scheduleToEdit == null
          ? FormTemplate.fromJson(<String, dynamic>{
              'id': null,
              'templateId': null,
              'version': null,
              'title': null,
              'description': null,
              'isDigitalSignatureRequired': null,
            })
          : FormTemplate.fromJson(scheduleToEdit!.template!.toJson()),
      uuid: scheduleToEdit?.uuid ?? const Uuid().v4(),
      depotNos: scheduleToEdit?.depotNos ?? [],
      yardCodes: scheduleToEdit?.yardCodes ?? [],
      numberOfTasks: scheduleToEdit?.numberOfTasks ?? 1,
      workingDays: scheduleToEdit?.workingDays ?? 127,
    );

    controller.selectedYards =
        schedule.yardCodes.map((e) => Yard(yardCode: e)).toList();
    controller.selectedDepots =
        schedule.depotNos.map((e) => Depot(depotNo: e)).toList();

    if (schedule.assignedToTeam != null) {
      controller
          .getTeams(schedule.assignedToTeam!)
          .then((value) => controller.setSelectedTeam(value.firstOrNull));
    }
    if (scheduleToEdit == null) {
      Provider.of<IUserPreferencesRepository>(context, listen: false)
          .getYard()
          .then((value) => controller.selectedYards = [value!]);
    }

    _descritionEditController.text = schedule.description;
    _templateEditController.text = schedule.template?.title ?? '';
    _teamEditController.text = schedule.assignedToTeam ?? '';
    _userEditController.text = schedule.assignedTo ?? '';
    _repeatCountController.text = schedule.repeatFrequency.toString();
    _numberOfTasksController.text = schedule.numberOfTasks.toString();

    repeatIntervals = initializeRepeatIntervals(context);
    if (schedule.endDate != null) {
      final activeLocale = Localizations.localeOf(context);
      _repeatEndDateController.text = DateFormat.yMd(activeLocale.toString())
          .format(schedule.endDate!.toLocal());
    }

    if (selectedTemplate != null) {
      if (selectedTemplate is FormsTemplate) {
        schedule.template = FormTemplate.fromJson(<String, dynamic>{
          'id': selectedTemplate!.id,
          'templateId': selectedTemplate!.id,
          'version': 1,
          'title': selectedTemplate!.title,
          'description': selectedTemplate!.title,
          'isDigitalSignatureRequired':
              selectedTemplate!.isDigitalSignatureRequired,
          'validateBySignature': selectedTemplate!.validateBySignature,
          'validateByWorkOrder': selectedTemplate!.validateByWorkOrder,
          'validateFrom': selectedTemplate!.validateFrom,
          'isEmailNotificationRequired':
              selectedTemplate!.isEmailNotificationRequired,
          'sendEmailOnFailedQuestions':
              selectedTemplate!.sendEmailOnFailedQuestions,
          'emailIds': selectedTemplate!.emailIds,
          'assignFailedQuestionToTeam':
              selectedTemplate!.assignFailedQuestionToTeam,
          'assignFailedQuestionToTeamId':
              selectedTemplate!.assignFailedQuestionToTeamId,
        });
        if (selectedTemplate!.isDigitalSignatureRequired) {
          schedule.isDigitalSignatureRequired = true;
        }
        _templateEditController.text = selectedTemplate!.title;
      }
    }
  }

  @override
  Widget widgetBuilder(BuildContext context) {
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Wrap(
          runSpacing: 10,
          children: [
            if (controller.isBusy) ...[
              showSpinner(),
            ] else ...[
              _addChooseTemplateButton(context),
              _addDescription(context, schedule),
              _addTemplate(context, schedule),
              _addYardAndDepot(context, schedule),
              _addTeam(context, schedule),
              _addUser(context, schedule),
              _addRepeatIntervalControls(schedule),
              _addRepeatFrequencyControls(context, schedule),
              _addNumberOfTasksControls(context, schedule),
              _addRepeatWorkingDaysControls(schedule),
              _addRepeatUntilControls(context, schedule),
              _addChoiceChipsOptions(context, schedule),
            ],
          ],
        ),
      ),
    );
  }

  Widget _addChoiceChipsOptions(
    BuildContext context,
    ScheduleRecord schedule,
  ) =>
      Wrap(
        spacing: 10,
        runSpacing: 10,
        children: [
          AbsorbPointer(
            absorbing: schedule.template?.isDigitalSignatureRequired ?? false,
            child: ChoiceChip(
              label: Text(context.l10n.digitalSignatureRequired),
              selected: schedule.isDigitalSignatureRequired,
              onSelected: (value) {
                setState(() {
                  schedule.isDigitalSignatureRequired =
                      !schedule.isDigitalSignatureRequired;
                });
              },
              selectedColor: FormAppColors.success,
            ),
          ),
          if (scheduleToEdit != null)
            ChoiceChip(
              label: Text(context.l10n.markAsInactive),
              selected: !schedule.isActive,
              onSelected: (value) {
                setState(() {
                  schedule.isActive = !schedule.isActive;
                });
              },
              selectedColor: FormAppColors.success,
            ),
        ],
      );

  Widget controlLabel(String title) => Row(
        children: [
          Text(
            title,
          ),
        ],
      );

  Widget _addDescription(BuildContext context, ScheduleRecord schedule) =>
      ResponsiveGridRow(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ResponsiveGridCol(
            sm: 2,
            child: Text(context.l10n.description),
          ),
          ResponsiveGridCol(
            sm: 10,
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: _descritionEditController,
              decoration: FormStyles.textFieldDecoration(context).copyWith(
                hintText: context.l10n.description,
              ),
              onChanged: (value) {
                setState(() => schedule.description = value);
              },
            ),
          ),
        ],
      );

  Widget _addTemplate(BuildContext context, ScheduleRecord schedule) =>
      ResponsiveGridRow(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ResponsiveGridCol(
            sm: 2,
            child: Text(context.l10n.templates),
          ),
          ResponsiveGridCol(
            sm: 10,
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              readOnly: true,
              controller: _templateEditController,
              decoration: FormStyles.textFieldDecoration(context).copyWith(
                hintText: context.l10n.templateHint,
              ),
            ),
          ),
        ],
      );

  Widget _addRepeatIntervalControls(ScheduleRecord schedule) =>
      ResponsiveGridRow(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ResponsiveGridCol(
            sm: 2,
            child: const Text('Repeat Type'),
          ),
          ResponsiveGridCol(
            sm: 10,
            child: _addRepeatIntervalsChoiceChips(schedule),
          ),
        ],
      );

  Widget _addRepeatWorkingDaysControls(ScheduleRecord schedule) =>
      ResponsiveGridRow(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ResponsiveGridCol(
            sm: 2,
            child: const Text('Working Days'),
          ),
          ResponsiveGridCol(
            sm: 10,
            child: _addRepeatWorkingDaysChoiceChips(schedule),
          ),
        ],
      );

  Widget _addTeam(BuildContext context, ScheduleRecord schedule) =>
      ResponsiveGridRow(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ResponsiveGridCol(
            sm: 2,
            child: Text(context.l10n.teamLabel),
          ),
          ResponsiveGridCol(
            sm: 10,
            child: TypeAheadFormField<Team?>(
              suggestionsCallback: (searchText) async {
                return (searchText.length > 2)
                    ? await controller.getTeams(searchText)
                    : const Iterable<Team>.empty();
              },
              itemBuilder: (context, Team? availableTeams) {
                final teams = availableTeams!;
                return ListTile(title: Text(teams.name ?? ''));
              },
              onSuggestionSelected: (Team? availableTeams) {
                final teams = availableTeams!;
                setState(() {
                  _teamEditController.text = teams.name!;
                  _userEditController.clear();

                  controller.setSelectedTeam(teams);

                  schedule.assignedToTeam = teams.name;
                  schedule.assignedTo = null;
                });
              },
              noItemsFoundBuilder: (context) => SizedBox(
                height: 50,
                child: Center(child: Text(context.l10n.noRecordsMessage)),
              ),
              textFieldConfiguration: TextFieldConfiguration(
                controller: _teamEditController,
                decoration: FormStyles.textFieldDecoration(context).copyWith(
                  hintText: context.l10n.teamLabel,
                  suffixIcon: _teamEditController.text.isEmpty
                      ? null
                      : IconButton(
                          onPressed: () {
                            setState(() {
                              _teamEditController.clear();
                              _userEditController.clear();
                              controller.setSelectedTeam(null);
                              schedule.assignedTo = null;
                              schedule.assignedToTeam = null;
                            });
                          },
                          icon: const Icon(Icons.clear),
                        ),
                ),
              ),
            ),
          ),
        ],
      );

  Widget _addUser(BuildContext context, ScheduleRecord schedule) =>
      ResponsiveGridRow(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ResponsiveGridCol(
            sm: 2,
            child: Text(context.l10n.userLabel),
          ),
          ResponsiveGridCol(
            sm: 10,
            child: TypeAheadFormField<User?>(
              suggestionsCallback: (searchText) async {
                return controller.getUsers(searchText);
              },
              itemBuilder: (context, User? availableUsers) {
                final users = availableUsers!;
                return ListTile(title: Text(users.displayName));
              },
              onSuggestionSelected: (User? availableUsers) {
                final users = availableUsers!;
                setState(() {
                  _userEditController.text = users.displayName;
                  schedule.assignedTo = users.displayName;
                });
              },
              noItemsFoundBuilder: (context) => SizedBox(
                height: 50,
                child: Center(child: Text(context.l10n.noRecordsMessage)),
              ),
              textFieldConfiguration: TextFieldConfiguration(
                controller: _userEditController,
                decoration: FormStyles.textFieldDecoration(context).copyWith(
                  hintText: context.l10n.userLabel,
                  suffixIcon: _userEditController.text.isEmpty
                      ? null
                      : IconButton(
                          onPressed: () {
                            setState(() {
                              _userEditController.clear();
                              schedule.assignedTo = null;
                            });
                          },
                          icon: const Icon(Icons.clear),
                        ),
                ),
              ),
            ),
          ),
        ],
      );

  Widget _addRepeatFrequencyControls(
    BuildContext context,
    ScheduleRecord schedule,
  ) =>
      ResponsiveGridRow(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ResponsiveGridCol(
            sm: 2,
            child: Text(context.l10n.repeatFrequencyLabel),
          ),
          ResponsiveGridCol(
            sm: 10,
            child: _addRepeatFrequency(context, schedule),
          ),
        ],
      );

  Widget _addNumberOfTasksControls(
    BuildContext context,
    ScheduleRecord schedule,
  ) =>
      ResponsiveGridRow(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ResponsiveGridCol(
            sm: 2,
            child: Text(context.l10n.numberOfTasks),
          ),
          ResponsiveGridCol(
            sm: 10,
            child: _addNumberOfTasks(context, schedule),
          ),
        ],
      );

  Widget _addRepeatUntilControls(
    BuildContext context,
    ScheduleRecord schedule,
  ) =>
      ResponsiveGridRow(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ResponsiveGridCol(
            sm: 2,
            child: const Text('Repeat Until'),
          ),
          ResponsiveGridCol(
            sm: 10,
            child: _addRepeatUntillDateSelector(context, schedule),
          ),
        ],
      );

  Widget _addRepeatIntervalsChoiceChips(ScheduleRecord schedule) => Wrap(
        spacing: 10,
        children: repeatIntervals
            .map(
              (e) => InputChip(
                label: Text(e.intervalName),
                selected: schedule.repeatInterval == e.id,
                onPressed: () {
                  setState(() {
                    schedule.repeatInterval = e.id;
                  });
                },
                selectedColor: FormAppColors.success,
              ),
            )
            .toList(),
      );

  Widget _addRepeatWorkingDaysChoiceChips(ScheduleRecord schedule) => Wrap(
        spacing: 10,
        children: workingDays
            .map(
              (e) => InputChip(
                label: Text(e.value),
                selected: schedule.workingDays == e.key,
                onPressed: () {
                  setState(() {
                    schedule.workingDays = e.key;
                  });
                },
                selectedColor: FormAppColors.success,
              ),
            )
            .toList(),
      );

  Widget _addRepeatFrequency(BuildContext context, ScheduleRecord schedule) =>
      TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: TextInputType.number,
        controller: _repeatCountController,
        decoration: FormStyles.textFieldDecoration(context).copyWith(
          labelText: '',
          hintText: context.l10n.repeatFrequencyLabel,
        ),
        onChanged: (value) {
          if (value == '') return;
          setState(
            () => schedule.repeatFrequency =
                int.parse(_repeatCountController.text.trim()),
          );
        },
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Value cannot be empty';
          }

          final val = int.tryParse(value);
          if (val == null) {
            return 'Value should be a valid number';
          }

          if (val <= 0) {
            return 'Value should be a positive number';
          }

          return null;
        }, // if the validation message is null do not validate
      );

  Widget _addNumberOfTasks(BuildContext context, ScheduleRecord schedule) =>
      TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: TextInputType.number,
        controller: _numberOfTasksController,
        decoration: FormStyles.textFieldDecoration(context).copyWith(
          labelText: '',
          hintText: context.l10n.numberOfTasks,
        ),
        onChanged: (value) {
          if (value == '') return;
          setState(
            () => schedule.numberOfTasks =
                int.parse(_numberOfTasksController.text.trim()),
          );
        },
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Value cannot be empty';
          }

          final val = int.tryParse(value);
          if (val == null) {
            return 'Value should be a valid number';
          }

          if (val <= 0) {
            return 'Value should be a positive number';
          }

          return null;
        }, // if the validation message is null do not validate
      );

  Widget _addRepeatUntillDateSelector(
    BuildContext context,
    ScheduleRecord schedule,
  ) =>
      TextFormField(
        controller: _repeatEndDateController,
        decoration: FormStyles.textFieldDecoration(context).copyWith(
          hintText: context.l10n.repeatUntil,
          suffixIcon: IconButton(
            icon: FormAppIcons.searchCalendarIcon,
            onPressed: () async {
              _dismissKeyboard(context);
              await showDialog<SelectedDates>(
                context: context,
                builder: (context) => DatePickerWidget(
                  selectedDate: SelectedDates.date(
                    date: (schedule.endDate ?? DateTime.now().dateOnly).toUtc(),
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
                    _repeatEndDateController.text =
                        DateFormat.yMd(activeLocale.toString())
                            .format(result.date!.toLocal());

                    schedule.endDate = result.date;
                  });
                }
              });
            },
          ),
        ),
        readOnly: true,
      );

  List<RepeatInterval> initializeRepeatIntervals(BuildContext context) {
    final repInterval = <RepeatInterval>[];
    repInterval.add(
      RepeatInterval(id: 1, intervalName: context.l10n.repeatIntervalDays),
    );
    repInterval.add(
      RepeatInterval(id: 2, intervalName: context.l10n.repeatIntervalWeeks),
    );
    repInterval.add(
      RepeatInterval(id: 3, intervalName: context.l10n.repeatIntervalMonths),
    );
    repInterval.add(
      RepeatInterval(id: 4, intervalName: context.l10n.repeatIntervalYear),
    );
    return repInterval;
  }

  void _dismissKeyboard(BuildContext context) {
    final currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }

  Widget _addYardAndDepot(BuildContext context, ScheduleRecord schedule) =>
      ResponsiveGridRow(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ResponsiveGridCol(
            sm: 2,
            child: const Text('Yard / Depot'),
          ),
          ResponsiveGridCol(
            sm: 10,
            child: InformMultipleYardDepotSelector(
              initialState: SelectedYardsAndDepots(
                yards: controller.selectedYards,
                depots: controller.selectedDepots,
              ),
              onStateChanged: controller.onYardsAndDepotChanged,
            ),
          ),
        ],
      );

  Widget _addChooseTemplateButton(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton.icon(
            onPressed: scheduleToEdit == null && selectedTemplate == null
                ? () async {
                    final result = await context.pushNamed<FormsTemplate>(
                      FormsRoutingName.templateLibrary,
                      queryParams: {'returnSelectedTemplate': 'true'},
                    );

                    if (result == null) return;

                    schedule.template = FormTemplate.fromJson(<String, dynamic>{
                      'id': result.id,
                      'templateId': result.id,
                      'version': 1,
                      'title': result.title,
                      'description': result.title,
                      'isDigitalSignatureRequired':
                          result.isDigitalSignatureRequired,
                      'validateBySignature': result.validateBySignature,
                      'validateByWorkOrder': result.validateByWorkOrder,
                      'validateFrom': result.validateFrom,
                      'isEmailNotificationRequired':
                          result.isEmailNotificationRequired,
                      'sendEmailOnFailedQuestions':
                          result.sendEmailOnFailedQuestions,
                      'emailIds': result.emailIds,
                      'assignFailedQuestionToTeam':
                          result.assignFailedQuestionToTeam,
                      'assignFailedQuestionToTeamId':
                          result.assignFailedQuestionToTeamId,
                      'canSchedule': result.canSchedule,
                    });
                    if (result.isDigitalSignatureRequired) {
                      schedule.isDigitalSignatureRequired = true;
                    }

                    final snackbar = appSnackBarMessage(
                      'This template cannot be scheduled!',
                      MessageTypes.error,
                    );
                    if (result.canSchedule!) {
                      setState(() {
                        _templateEditController.text =
                            schedule.template?.title ?? '';
                      });
                    } else {
                      setState(() {
                        _templateEditController.text = '';
                      });
                      ScaffoldMessenger.of(
                        stateMediator.getBuildContext!.call(),
                      ).showSnackBar(snackbar);
                    }
                  }
                : null,
            icon: SvgPicture.asset(
              FormAppAssetsPath.templateIcon,
              package: FormAppStringLiteral.PackageName,
              width: 20,
              colorFilter: ColorFilter.mode(
                FormAppColors.white,
                BlendMode.srcIn,
              ),
            ),
            label: Text(context.l10n.chooseATemplate),
          ),
        ],
      );

  Future<void> onActionButtonPressed(BuildContext context) async {
    if (controller.isBusy) return;
    controller.isBusy = true;
    if (controller.isAtleastOneDepotSelectedInEachYard()) {
      final result = await showConfirmationDialog(
        context: context,
        message:
            'No depots selected for ${controller.getYardsWithoutDepots()}. '
            'It will use all depots in yard.',
      );

      if (result ?? false) {
        await controller.selectAllDepotsForMissedYards();
      } else {
        setState(() => controller.isBusy = false);
        return;
      }
    }

    schedule.yardCodes.clear();
    schedule.yardCodes.addAll(
      controller.selectedYards.map((e) => e.yardCode!).toList(),
    );
    schedule.depotNos.clear();
    schedule.depotNos.addAll(
      controller.selectedDepots.map((e) => e.depotNo!).toList(),
    );

    if (scheduleToEdit == null) {
      await controller.create(schedule).then((value) {
        ScaffoldMessenger.of(stateMediator.getBuildContext!.call())
            .showSnackBar(
          value
              ? appSnackBarMessage(
                  stateMediator.getBuildContext!
                      .call()
                      .l10n
                      .schedulerCreationSuccess,
                  MessageTypes.success,
                )
              : appSnackBarMessage(
                  stateMediator.getBuildContext!
                      .call()
                      .l10n
                      .schedulerCreationFailed,
                  MessageTypes.error,
                ),
        );
        stateMediator.getBuildContext!.call().pop(true);
      });
    } else {
      await controller.save(schedule).then((value) {
        ScaffoldMessenger.of(stateMediator.getBuildContext!.call())
            .showSnackBar(
          value
              ? appSnackBarMessage(
                  stateMediator.getBuildContext!
                      .call()
                      .l10n
                      .schedulerUpdationSuccess,
                  MessageTypes.success,
                )
              : appSnackBarMessage(
                  stateMediator.getBuildContext!
                      .call()
                      .l10n
                      .schedulerUpdationFailed,
                  MessageTypes.error,
                ),
        );
        stateMediator.getBuildContext!.call().pop(true);
      });
    }
  }

  bool canSave() {
    return !controller.isBusy &&
        schedule.description.isNotEmpty &&
        schedule.repeatFrequency >= 1 &&
        schedule.numberOfTasks >= 1 &&
        controller.selectedYards.isNotEmpty &&
        schedule.template?.templateId != null;
  }
}
