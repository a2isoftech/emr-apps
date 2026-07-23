import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_inform/common/date_utility.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/create_task/controllers/create_task_controller.dart';
import 'package:emr_one_inform/create_task/models/clone_task_parameter.dart';
import 'package:emr_one_inform/globals.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/models/selected_dates.dart';
import 'package:emr_one_inform/repository/shared_preferences/ipreference_repository.dart';
import 'package:emr_one_inform/screens/base/base_page.dart';
import 'package:emr_one_inform/screens/team/team_model.dart';
import 'package:emr_one_inform/widgets/inform_multiple_yard_depot_selector.dart';
import 'package:emr_one_inform/widgets/widgets_export.dart';
import 'package:expandable_widgets/expandable_widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:responsive_grid/responsive_grid.dart';

abstract class CreateTaskCommon extends BasePage<CreateTaskController> {
  CreateTaskCommon({
    this.cloneTaskParameter,
    this.selectedDate,
    this.isEdit = false,
    super.key,
  });

  final _formKey = GlobalKey<FormState>();
  final _templateController = TextEditingController();
  final _teamController = TextEditingController();
  final _userController = TextEditingController();
  final _assetController = TextEditingController();
  final _jobTradeController = TextEditingController();
  final _startDateController = TextEditingController();
  final _repeatEndDateController = TextEditingController();
  final _dueDateController = TextEditingController();
  final _repeatFrequencyController = TextEditingController();
  final _repeatCountController = TextEditingController(text: '1');
  late final TextEditingController _repeatIntervalsController;
  final _descriptionController = TextEditingController();
  final _notesController = TextEditingController();
  final _existingNotesController = TextEditingController();
  final _jobPriorityController = TextEditingController();

  late final List<RepeatOptions> repeatOptions;
  late final List<RepeatInterval> repeatIntervals;
  final List<KeyValuePair<int, String>> workingDays = [
    KeyValuePair(key: 31, value: 'Mon - Fri'),
    KeyValuePair(key: 63, value: 'Mon - Sat'),
    KeyValuePair(key: 127, value: 'Mon - Sun'),
  ];

  final CloneTaskParameter? cloneTaskParameter;
  final DateTime? selectedDate;
  final bool isEdit;

  @override
  String getTitle(BuildContext context) {
    if (!isEdit) return context.l10n.createATask;

    return '${context.l10n.editTask} - ${cloneTaskParameter?.workOrderId}';
  }

  @override
  void initState(BuildContext context) {
    controller.startDate = (selectedDate ?? DateTime.now()).toUtc();
    controller.dueDate =
        (selectedDate ?? DateTime.now()).toUtc().add(const Duration(days: 7));
    repeatOptions = initialiseRepeatOptions(context);
    repeatIntervals = initializeRepeatIntervals(context);
    controller.selectedRepeatOption = repeatOptions[0];

    final activeLocale = Localizations.localeOf(context);
    _startDateController.text = DateFormat.yMd(activeLocale.toString())
        .format(controller.startDate.toLocal());
    _dueDateController.text = DateFormat.yMd(activeLocale.toString())
        .format(controller.dueDate.toLocal());

    _repeatIntervalsController =
        TextEditingController(text: context.l10n.repeatIntervalDays);

    if (cloneTaskParameter != null) {
      controller.selectedYards
          .add(Yard(yardCode: cloneTaskParameter!.yardCode));
      controller.selectedDepots
          .add(Depot(depotNo: cloneTaskParameter!.depotNo));

      controller.workOrderId = cloneTaskParameter!.workOrderId;

      _assetController.text = cloneTaskParameter!.assetCode ?? '';
      controller.selectedAsset = cloneTaskParameter!.assetCode ?? '';

      _jobTradeController.text = cloneTaskParameter!.jobTrade ?? '';
      controller.selectedJobTrade = cloneTaskParameter!.jobTrade ?? '';

      _templateController.text =
          '''${cloneTaskParameter!.templateName} (${cloneTaskParameter!.templateReferenceId})''';
      controller.templateId = cloneTaskParameter!.templateId;
      controller.isDigitalSignatureRequiredByTemplate =
          cloneTaskParameter!.isDigitalSignatureRequiredByTemplate;
      controller.isDigitalSignatureRequired =
          cloneTaskParameter!.isDigitalSignatureRequiredByTask;

      _descriptionController.text = cloneTaskParameter!.description;
      controller.description = cloneTaskParameter!.description;

      controller.isChooseTemplateSelected = true;

      controller.selectedYardAndDepots = SelectedYardsAndDepots(
        yards: controller.selectedYards,
        depots: controller.selectedDepots,
      );

      controller.selectedJobPriority = cloneTaskParameter!.jobPriority;
      _jobPriorityController.text = controller.jobPriorities
          .firstWhere((e) => e.key == controller.selectedJobPriority)
          .value;

      if (isEdit) {
        controller.existingNotes = cloneTaskParameter!.notes;
        _existingNotesController.text = controller.existingNotes ?? '';
      } else {
        controller.notes = cloneTaskParameter!.notes;
        _notesController.text = cloneTaskParameter!.notes ?? '';
      }

      if (cloneTaskParameter!.assignedTo != null) {
        _userController.text = cloneTaskParameter!.assignedTo!;
        controller.selectedUser = cloneTaskParameter!.assignedTo!;
      }

      controller.setIsValid();
    } else {
      Provider.of<IUserPreferencesRepository>(context, listen: false)
          .getYard()
          .then(
            (value) =>
                controller.selectedYardAndDepots = SelectedYardsAndDepots(
              yards: [value!],
              depots: [],
            ),
          );
    }
  }

  @override
  Widget widgetBuilder(BuildContext context) {
    controller.yard = yard;
    if (controller.isBusy) return showSpinner();
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Wrap(
            runSpacing: 10,
            children: [
              if (controller.isBusy) ...[
                showSpinner(),
              ] else ...[
                _addTitle(context, _templateController),
                _addYardDepot(context),
                _typeAheadTemplates(
                  context,
                  _templateController,
                  context.l10n.templateHint,
                  context.l10n.templateLabel,
                  context.l10n.templateValidation,
                ),
                _typeAheadTeams(context),
                _typeAheadUsers(
                  context: context,
                  textEditingController: _userController,
                  hintText: context.l10n.userHint,
                  labelText: context.l10n.userLabel,
                ),
                _typeAheadAssets(
                  context: context,
                  textEditingController: _assetController,
                  hintText: context.l10n.assetsHint,
                  labelText: context.l10n.assetsLabel,
                ),
                _typeAheadJobTrades(
                  context: context,
                  textEditingController: _jobTradeController,
                  hintText: context.l10n.jobTradeHint,
                  labelText: context.l10n.jobTradeLabel,
                ),
                _addDates(context),
                if (!isEdit)
                  _repeatFrequencyInterval(
                    context: context,
                    textEditingController: _repeatFrequencyController,
                  ),
                if (controller.isRepeatable) ...[
                  _setRecurrence(context),
                ],
                InformTextBox(
                  controller: _descriptionController,
                  hintText: context.l10n.workOrderDescHint,
                  labelText: context.l10n.workOrderDescLabel,
                  onChanged: (value) {
                    controller.description = value ?? '';
                    controller.setIsValid();
                  },
                  validationMessage: context.l10n.workOrderDescValidation,
                ),
                _addJobProirity(context),
                if (isEdit && (controller.existingNotes?.isNotEmpty ?? false))
                  _addExistingNotes(context),
                InformMultilineTextbox(
                  controller: _notesController,
                  labelText: context.l10n.notes,
                  maxLength: 1000,
                  onChanged: (value) {
                    controller.notes = value;
                  },
                ),
                AbsorbPointer(
                  absorbing: controller.isDigitalSignatureRequiredByTemplate,
                  child: ChoiceChip(
                    label: Text(context.l10n.digitalSignatureRequired),
                    selected: controller.isDigitalSignatureRequired,
                    onSelected: (value) {
                      controller.setIsDigitalSignatureRequired(
                        value: !controller.isDigitalSignatureRequired,
                      );
                    },
                    selectedColor: FormAppColors.success,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _templateController.dispose();
    _teamController.dispose();
    _userController.dispose();
    _assetController.dispose();
    _startDateController.dispose();
    _dueDateController.dispose();
    _repeatFrequencyController.dispose();
    _repeatCountController.dispose();
    _repeatIntervalsController.dispose();
    _descriptionController.dispose();
    _repeatEndDateController.dispose();
    super.dispose();
  }

  List<RepeatOptions> initialiseRepeatOptions(BuildContext context) {
    final repeatOptions = <RepeatOptions>[];
    repeatOptions.add(RepeatOptions(id: 0, name: context.l10n.doesNotRepeat));
    repeatOptions.add(RepeatOptions(id: 1, name: context.l10n.repeatLabel));
    return repeatOptions;
  }

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
    controller.selectedRepeatInterval = repInterval.first;
    return repInterval;
  }

  Widget _addTitle(BuildContext context, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          if (ScreenAccess().canCreateQuickTask(context)) ...[
            ChoiceChip(
              selectedColor: FormAppColors.success,
              label: const Text('Quick Task'),
              selected: this.controller.isQuickTemplateSelected,
              onSelected: (value) {
                controller.clear();
                this.controller.onQuickTemplate();
              },
            ),
          ],
          if (ScreenAccess().canCreateQuickTask(context) &&
              ScreenAccess().canCreateTask(context))
            const Text('OR'),
          if (ScreenAccess().canCreateTask(context)) ...[
            ChoiceChip(
              selectedColor: FormAppColors.success,
              label: const Text('Choose a Template'),
              selected: this.controller.isChooseTemplateSelected,
              onSelected: (value) async {
                this.controller.onChooseTemplate();

                final result = await context.pushNamed(
                  FormsRoutingName.templateLibrary,
                  queryParams: {'returnSelectedTemplate': 'true'},
                );

                if (result != null && result is FormsTemplate) {
                  controller.text =
                      '''${result.title} (${result.referenceId})''';
                  this.controller.templateId = result.id;
                  this.controller.isDigitalSignatureRequiredByTemplate =
                      result.isDigitalSignatureRequired;
                  if (result.isDigitalSignatureRequired) {
                    this.controller.isDigitalSignatureRequired = true;
                  }
                  this.controller.setIsValid();
                }
              },
            ),
          ],
        ],
      ),
    );
  }

  Widget _addYardDepot(BuildContext context) {
    return InformMultipleYardDepotSelector(
      initialState: controller.selectedYardAndDepots,
      onStateChanged: (x) async {
        await controller.onYardAndDepotChanged(x);

        if (controller.selectedDepots.length != 1) {
          _userController.text = '';
          _assetController.text = '';

          controller.selectedAsset = '';
          controller.selectedUser = '';
        }
      },
    );
  }

  Widget _typeAheadTemplates(
    BuildContext context,
    TextEditingController textEditingController,
    String hintText,
    String labelText,
    String validationMessage,
  ) {
    return Row(
      children: [
        Flexible(
          child: TypeAheadFormField<FormsTemplate?>(
            enabled: false,
            suggestionsCallback: (searchText) async {
              return const Iterable<FormsTemplate>.empty();
            },
            itemBuilder: (context, FormsTemplate? existingTemplates) {
              final templates = existingTemplates!;
              return ListTile(title: Text(templates.title));
            },
            onSuggestionSelected: (FormsTemplate? existingTemplates) {
              final templates = existingTemplates!;
              textEditingController.text = templates.title;
              controller.templateId = templates.id;
            },
            noItemsFoundBuilder: (context) => Container(height: 1),
            textFieldConfiguration: TextFieldConfiguration(
              controller: textEditingController,
              decoration: InputDecoration(
                hintText: hintText,
                labelText: labelText,
              ),
            ),
            validator: (value) => (controller.isChooseTemplateSelected &&
                    (value == null || value.isEmpty))
                ? validationMessage
                : null,
          ),
        ),
        const SizedBox(width: 5),
        if (kIsWeb) ...[
          IconButton(
            onPressed: () async {
              if (controller.templateId.isEmpty) return;
              final updatedTemplate = await context.pushNamed<AdhocTemplate>(
                FormsRoutingName.createAdhocTemplateNew,
                queryParams: {
                  'editTemplateId': controller.templateId,
                },
              );
              if (updatedTemplate != null) {
                setState(() {
                  _templateController.text =
                      '''${updatedTemplate.title!} (${updatedTemplate.referenceId!})''';
                  controller.templateId = updatedTemplate.uuid!;
                  controller.isDigitalSignatureRequiredByTemplate =
                      updatedTemplate.isDigitalSignatureRequired!;
                });
              }
            },
            icon: const Icon(Icons.edit),
          ),
        ],
        const SizedBox(width: 5),
        IconButton(
          onPressed: () async {
            try {
              if (controller.isLoadingPreview) return;
              if (controller.templateId.isEmpty) return;

              controller.isLoadingPreview = true;
              await controller
                  .getFormsTemplateJson(controller.templateId)
                  .then((templateJson) async {
                if (templateJson != null || templateJson!.isNotEmpty) {
                  controller.isLoadingPreview = false;
                  if (context.mounted) {
                    await context.pushNamed(
                      FormsRoutingName.previewTemplate,
                      extra: templateJson,
                      queryParams: {
                        'isDigitalSignatureRequiredForJob':
                            controller.isDigitalSignatureRequired.toString(),
                        'isDigitalSignatureRequiredForTemplate': controller
                            .isDigitalSignatureRequiredByTemplate
                            .toString(),
                      },
                    );
                  }
                }
              });
            } catch (e) {
              ///
            }
          },
          icon: SvgPicture.asset(
            FormAppAssetsPath.preview,
            package: FormAppStringLiteral.PackageName,
            width: 22,
            colorFilter: ColorFilter.mode(
              FormAppColors.foreground,
              BlendMode.srcIn,
            ),
          ),
        ),
      ],
    );
  }

  Widget _typeAheadTeams(BuildContext context) {
    return Wrap(
      runSpacing: 5,
      children: [
        TypeAheadFormField<Team?>(
          enabled: controller.selectedDepots.length == 1,
          suggestionsCallback: (searchText) async {
            return (searchText.length > 2)
                ? await controller.getTeams(searchText)
                : const Iterable<Team>.empty();
          },
          itemBuilder: (context, Team? team) {
            return ListTile(title: Text(team!.name!));
          },
          onSuggestionSelected: (Team? team) {
            _teamController.text = team!.name!;
            _userController.clear();
            controller.selectedTeam = team.name!;
            controller.selectedTeamId = team.uuid!;
            controller.selectedUser = '';
            controller.setSelectedTeam(team);
          },
          noItemsFoundBuilder: (context) => SizedBox(
            height: 50,
            child: Center(child: Text(context.l10n.noRecordsMessage)),
          ),
          textFieldConfiguration: TextFieldConfiguration(
            controller: _teamController,
            decoration: FormStyles.textFieldDecoration(context).copyWith(
              labelText: context.l10n.teamLabel,
              hintText: context.l10n.teamHint,
              suffixIcon: _teamController.text.isEmpty
                  ? null
                  : IconButton(
                      onPressed: () {
                        _teamController.clear();
                        _userController.clear();
                        controller.selectedTeam = '';
                        controller.selectedUser = '';
                        controller.selectedTeamId = '';
                        controller.setSelectedTeam(null);
                      },
                      icon: const Icon(Icons.clear),
                    ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _typeAheadUsers({
    required BuildContext context,
    required TextEditingController textEditingController,
    required String hintText,
    required String labelText,
  }) {
    return TypeAheadFormField<User?>(
      enabled: controller.selectedDepots.length == 1,
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
          textEditingController.text = users.displayName;
          controller.selectedUser = users.displayName;
        });
      },
      noItemsFoundBuilder: (context) => SizedBox(
        height: 50,
        child: Center(child: Text(context.l10n.noRecordsMessage)),
      ),
      textFieldConfiguration: TextFieldConfiguration(
        controller: textEditingController,
        decoration: FormStyles.textFieldDecoration(context).copyWith(
          labelText: hintText,
          hintText: labelText,
          suffixIcon: textEditingController.text.isEmpty
              ? null
              : IconButton(
                  onPressed: () {
                    setState(() {
                      textEditingController.clear();
                      controller.selectedUser = '';
                      controller.assignToSameUser = false;
                    });
                  },
                  icon: const Icon(Icons.clear),
                ),
        ),
      ),
    );
  }

  Widget _typeAheadAssets({
    required BuildContext context,
    required TextEditingController textEditingController,
    required String hintText,
    required String labelText,
  }) {
    return TypeAheadFormField<Asset?>(
      enabled: controller.selectedDepots.length == 1,
      suggestionsCallback: controller.getAssets,
      itemBuilder: (context, Asset? availableAssets) {
        final assets = availableAssets!;
        return ListTile(
          title: Text(assets.assetCode),
        );
      },
      onSuggestionSelected: (Asset? availableAssets) {
        final assets = availableAssets!;
        textEditingController.text = assets.assetCode;
        controller.selectedAsset = assets.assetCode;
      },
      noItemsFoundBuilder: (context) => SizedBox(
        height: 50,
        child: Center(child: Text(context.l10n.noRecordsMessage)),
      ),
      textFieldConfiguration: TextFieldConfiguration(
        controller: textEditingController,
        decoration: FormStyles.textFieldDecoration(context).copyWith(
          hintText: hintText,
          labelText: labelText,
        ),
      ),
    );
  }

  Widget _typeAheadJobTrades({
    required BuildContext context,
    required TextEditingController textEditingController,
    required String hintText,
    required String labelText,
  }) {
    return TypeAheadFormField<String?>(
      suggestionsCallback: controller.getFormListForJobTrades,
      itemBuilder: (context, String? jobTrade) {
        return ListTile(
          title: Text(jobTrade!),
        );
      },
      onSuggestionSelected: (String? jobTrade) {
        textEditingController.text = jobTrade!;
        controller.selectedJobTrade = jobTrade;
      },
      noItemsFoundBuilder: (context) => SizedBox(
        height: 50,
        child: Center(child: Text(context.l10n.noRecordsMessage)),
      ),
      textFieldConfiguration: TextFieldConfiguration(
        controller: textEditingController,
        decoration: FormStyles.textFieldDecoration(context).copyWith(
          hintText: hintText,
          labelText: labelText,
        ),
      ),
    );
  }

  Widget _addDates(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _addDate(
            context: context,
            textEditingController: _startDateController,
            hintText: context.l10n.startDateHint,
            labelText: context.l10n.startDateLabel,
            validationMessages: controller.dateValidationMessages,
          ),
        ),
        const SizedBox(width: 1),
        Expanded(
          child: _addDate(
            context: context,
            textEditingController: _dueDateController,
            hintText: context.l10n.dueDateHint,
            labelText: context.l10n.dueDateLabel,
            validationMessages: controller.dateValidationMessages,
          ),
        ),
      ],
    );
  }

  Widget _addDate({
    required BuildContext context,
    required TextEditingController textEditingController,
    required String hintText,
    required String labelText,
    required List<String> validationMessages,
  }) {
    final isStartDate = labelText == context.l10n.startDateLabel;
    return Wrap(
      runSpacing: 5,
      children: [
        TextFormField(
          controller: textEditingController,
          decoration: FormStyles.textFieldDecoration(context).copyWith(
            labelText: labelText,
            hintText: hintText,
            suffixIcon: textEditingController.text.isEmpty
                ? null
                : IconButton(
                    icon: FormAppIcons.searchCalendarIcon,
                    onPressed: () async {
                      _dismissKeyboard(context);
                      await showDialog<SelectedDates>(
                        context: context,
                        builder: (context) => DatePickerWidget(
                          selectedDate: SelectedDates.date(
                            date: isStartDate
                                ? controller.startDate
                                : controller.dueDate,
                          ),
                          datePickerType: DatePickerType.date,
                          minDate: DateTime.now(),
                          maxDate: DateTime.now().oneYearAhead(),
                        ),
                        barrierDismissible: false,
                      ).then((result) {
                        if (result is SelectedDates) {
                          setState(() {
                            final activeLocale =
                                Localizations.localeOf(context);
                            textEditingController.text =
                                DateFormat.yMd(activeLocale.toString())
                                    .format(result.date!.toLocal());

                            if (isStartDate) {
                              controller.startDate = result.date!;
                            } else {
                              controller.dueDate = result.date!;
                            }
                          });
                        }
                      });
                    },
                  ),
          ),
          readOnly: true,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return isStartDate
                  ? validationMessages[0]
                  : validationMessages[1];
            }
            if (isStartDate &&
                controller.startDate.isAfter(controller.dueDate)) {
              return validationMessages[2];
            }
            if (!isStartDate &&
                controller.dueDate.isBefore(controller.startDate)) {
              return validationMessages[3];
            }
            return null;
          },
        ),
      ],
    );
  }

  Widget _repeatFrequencyInterval({
    required BuildContext context,
    required TextEditingController textEditingController,
  }) {
    return DropdownButtonHideUnderline(
      child: DropdownButtonFormField<RepeatOptions>(
        decoration: FormAppDecorations.dropdownDecoration,
        hint: Text(
          context.l10n.selectRepeatOption,
        ),
        icon: FormAppIcons.dropdownList,
        iconSize: 30,
        isExpanded: true,
        items: repeatOptions.map((repeatOptions) {
          return DropdownMenuItem<RepeatOptions>(
            value: repeatOptions,
            child: Text(repeatOptions.name),
          );
        }).toList(),
        initialValue: controller.selectedRepeatOption,
        onChanged: (RepeatOptions? value) {
          textEditingController.text = value != null ? value.name : '';
          controller.isRepeatable = value?.id != 0;
          controller.setIsRepeatable(
            repeated: controller.isRepeatable,
          );
        },
      ),
    );
  }

  Widget _setRecurrence(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: EmrColours.secondaryGrey),
        borderRadius: const BorderRadius.all(Radius.circular(4)),
      ),
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          controlLabel(context.l10n.setRecurrenceLabel),
          const SizedBox(height: 5),
          _addRepeatIntervalControls(),
          const SizedBox(height: 5),
          _addRepeatFrequencyControls(context),
          const SizedBox(height: 5),
          _addRepeatWorkDaysControls(),
          const SizedBox(height: 5),
          _addRepeatUntilControls(context),
          const SizedBox(height: 5),
          _addRepeatAssignUserCheckbox(),
        ],
      ),
    );
  }

  // ignore: unused_element
  Widget _repeatIntervals({
    required BuildContext context,
    required TextEditingController textEditingController,
  }) {
    return DropdownButtonHideUnderline(
      child: DropdownButtonFormField<RepeatInterval>(
        decoration: FormAppDecorations.dropdownDecoration,
        hint: Text(context.l10n.selectRepeatInterval),
        icon: FormAppIcons.dropdownList,
        iconSize: 30,
        isExpanded: true,
        items: repeatIntervals.map((intervals) {
          return DropdownMenuItem(
            value: intervals,
            child: Text(intervals.intervalName),
          );
        }).toList(),
        initialValue: controller.selectedRepeatInterval,
        onChanged: (RepeatInterval? value) {
          textEditingController.text = value != null ? value.intervalName : '';
          controller.repeatType = value!.id;
          controller.repeatFrequency = 1;
          _repeatCountController.text = '1';
        },
      ),
    );
  }

  void _dismissKeyboard(BuildContext context) {
    final currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }

  Future<void> onActionButtonPressed(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      var snackBarMessage = appSnackBarMessage(
        isEdit
            ? context.l10n.scheduleTaskUpdationFailed
            : context.l10n.scheduleTaskCreationFailed,
        MessageTypes.error,
      );

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
          return;
        }
      }

      if (!context.mounted) return;
      if (controller.selectedTeamId.isNotEmpty &&
          !controller.isUserAllocated()) {
        final result = await showConfirmationDialog(
          context: context,
          message: '''
No user was allocated. This will allocate the first user from the team''',
        );
        if (result ?? false) {
          controller.assignFirstUser();
        } else {
          return;
        }
      }

      final message = isEdit
          ? stateMediator.getBuildContext!.call().l10n.scheduleTaskUpdated
          : stateMediator.getBuildContext!.call().l10n.scheduleTaskCreated;
      await controller.createTask(isEdit: isEdit).then((value) {
        if (controller.createdWorkOrderId != null) {
          final woId = controller.createdWorkOrderId;
          snackBarMessage = appSnackBarMessage(
            '$woId$message',
            MessageTypes.success,
          );
        }
        ScaffoldMessenger.of(stateMediator.getBuildContext!.call())
            .showSnackBar(snackBarMessage);
        stateMediator.getBuildContext!
            .call()
            .pop<String?>(controller.createdWorkOrderId);
      });
    }
  }

  Widget _addRepeatIntervalsChoiceChips() => Wrap(
        spacing: 10,
        children: repeatIntervals
            .map(
              (e) => InputChip(
                label: Text(e.intervalName),
                selected: controller.repeatType == e.id,
                onPressed: () {
                  controller.repeatFrequency = 1;
                  _repeatCountController.text = '1';
                  setState(() => controller.repeatType = e.id);
                },
                selectedColor: FormAppColors.success,
              ),
            )
            .toList(),
      );

  Widget _addRepeatWorkingDaysChoiceChips() => Wrap(
        spacing: 10,
        children: workingDays
            .map(
              (e) => InputChip(
                label: Text(e.value),
                selected: controller.workingDays == e.key,
                onPressed: () {
                  setState(() => controller.workingDays = e.key);
                },
                selectedColor: FormAppColors.success,
              ),
            )
            .toList(),
      );

  Widget _addRepeatFrequency(BuildContext context) => TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: TextInputType.number,
        controller: _repeatCountController,
        decoration: FormStyles.textFieldDecoration(context).copyWith(
          labelText: '',
          hintText: '',
        ),
        onChanged: (value) {
          if (value == '') return;
          controller.repeatFrequency =
              int.parse(_repeatCountController.text.trim());
        },
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Value cannot be empty';
          }

          final val = int.tryParse(value);
          if (val == null) {
            return 'Value should be a valid number';
          }

          return null;
        }, // if the validation message is null do not validate
      );

  Widget _addRepeatUntillDateSelector(BuildContext context) => TextFormField(
        controller: _repeatEndDateController,
        decoration: FormStyles.textFieldDecoration(context).copyWith(
          labelText: context.l10n.repeatUntil,
          hintText: context.l10n.repeatUntil,
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
                    _repeatEndDateController.text =
                        DateFormat.yMd(activeLocale.toString())
                            .format(result.date!.toLocal());

                    controller.repeatEndDate = result.date;
                  });
                }
              });
            },
          ),
        ),
        readOnly: true,
        validator: (value) {
          if (value != null &&
              value.isNotEmpty &&
              controller.repeatEndDate!.isBefore(controller.startDate)) {
            return 'Repeat end date should be greater than start date';
          }
          return null;
        },
      );

  Widget _addRepeatIntervalControls() => ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            sm: 2,
            child: const Text('Repeat Type'),
          ),
          ResponsiveGridCol(
            sm: 10,
            child: _addRepeatIntervalsChoiceChips(),
          ),
        ],
      );

  Widget _addRepeatWorkDaysControls() => ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            sm: 2,
            child: const Text('Working Days'),
          ),
          ResponsiveGridCol(
            sm: 10,
            child: _addRepeatWorkingDaysChoiceChips(),
          ),
        ],
      );

  Widget _addRepeatFrequencyControls(BuildContext context) => ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            sm: 2,
            child: const Text('Repeat Frequency'),
          ),
          ResponsiveGridCol(
            sm: 10,
            child: _addRepeatFrequency(context),
          ),
        ],
      );

  Widget _addRepeatUntilControls(BuildContext context) => ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            sm: 2,
            child: const Text('Repeat Until'),
          ),
          ResponsiveGridCol(
            sm: 10,
            child: _addRepeatUntillDateSelector(context),
          ),
        ],
      );

  Widget _addRepeatAssignUserCheckbox() => CheckboxListTile(
        enabled: _userController.text.isNotEmpty,
        contentPadding: EdgeInsets.zero,
        controlAffinity: ListTileControlAffinity.leading,
        dense: false,
        value: controller.assignToSameUser,
        onChanged: (newValue) {
          setState(() {
            controller.assignToSameUser = newValue!;
          });
        },
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        title: const Text(
          'Assign scheduled items to same user.',
          style: TextStyle(fontSize: 16),
        ),
        visualDensity: VisualDensity.standard,
      );

  Widget _addJobProirity(BuildContext context) => DropdownButtonHideUnderline(
        child: DropdownButtonFormField<int>(
          decoration: FormAppDecorations.dropdownDecoration
              .copyWith(labelText: context.l10n.priorityLabel),
          icon: FormAppIcons.dropdownList,
          iconSize: 30,
          isExpanded: true,
          items: controller.jobPriorities.map((p) {
            return DropdownMenuItem<int>(
              value: p.key,
              child: Text(p.value),
            );
          }).toList(),
          initialValue: controller.selectedJobPriority,
          onChanged: (int? value) {
            _jobPriorityController.text = controller.jobPriorities
                .firstWhere((e) => e.key == (value ?? 1))
                .value;
            controller.selectedJobPriority = value ?? 1;
          },
        ),
      );

  Widget _addExistingNotes(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ChoiceChip(
            avatar: const Icon(Icons.note),
            label: Text(context.l10n.existingNotes),
            selected: false,
            onSelected: (value) {
              setState(() {
                controller.showExistingNotes = !controller.showExistingNotes;
              });
            },
          ),
          Visibility(
            visible: controller.showExistingNotes,
            child: ExpandableText(
              textWidget: Text(
                _existingNotesController.text,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textWidthBasis: TextWidthBasis.parent,
                softWrap: true,
              ),
              helper: Helper.text,
              // boxShadow: const [BoxShadow(color: Colors.transparent, )],
            ),
          ),
        ],
      );
}
