import 'package:blur/blur.dart';
import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/models/message_type.dart';
import 'package:emr_one_inform/scheduler/controllers/scheduler_controller.dart';
import 'package:emr_one_inform/scheduler/models/patch_schedule.dart';
import 'package:emr_one_inform/scheduler/models/schedule_record.dart';
import 'package:emr_one_inform/screens/base/base_page.dart';
import 'package:emr_one_inform/widgets/inform_search_widget.dart';
import 'package:emr_one_inform/widgets/widgets_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:responsive_grid/responsive_grid.dart';

abstract class SchedulerCommon extends BasePage<SchedulerController> {
  SchedulerCommon({super.key});

  final _filterController = TextEditingController();

  final List<KeyValuePair<int, String>> workingDays = [
    KeyValuePair(key: 31, value: 'Mon - Fri'),
    KeyValuePair(key: 63, value: 'Mon - Sat'),
    KeyValuePair(key: 127, value: 'Mon - Sun'),
  ];

  @override
  String getTitle(BuildContext context) => context.l10n.schedulerLabel;

  @override
  void initState(BuildContext context) {
    controller.loadData();
  }

  @override
  Widget widgetBuilder(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            if (controller.isBusy) ...[
              showSpinner(),
            ] else ...[
              if (controller.isSearchVisible) ...[
                InformSearchWidget(
                  key: UniqueKey(),
                  searchOptions: [
                    DateRangeSearchOption(
                      displayText: 'Date',
                      propertyName: 'date',
                    ),
                    TypeaheadSearchOption(
                      displayText: 'Description',
                      propertyName: 'description',
                      datasource: null,
                      sourceCallback: controller.getScheduleTitles,
                    ),
                  ],
                  initialState: controller.searchState,
                  onStateChanged: controller.searchStateChanged,
                ),
                const SizedBox(height: 5),
              ],
              if (controller.isFilterVisible) ...[
                Material(
                  elevation: 20,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        _addSortByOptions(context),
                        _addTypeaheadSearchBox(context),
                        const SizedBox(height: 10),
                        _addFilterChoiceChips(context),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 5),
              ],
              if (controller.filteredSchedules.isEmpty)
                showNoData('')
              else
                Material(
                  elevation: 20,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [_addListView(context)],
                    ),
                  ),
                ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _addSortByOptions(BuildContext context) {
    return Row(
      children: [
        Text(
          context.l10n.sortBy,
        ),
        _addSortByDropDownWidget(),
      ],
    );
  }

  Widget _addSortByDropDownWidget() {
    final sortFields = [
      'Description',
      'Next Scheduled Date',
      'Created Date',
      'Repeat Frequency',
    ];
    final dropDownMenuItems = <DropdownMenuItem<SortBy>>[];

    for (final sortField in sortFields) {
      dropDownMenuItems.add(
        DropdownMenuItem(
          value: SortBy(
            fieldName: sortField,
            sortDirection: controller.sortBy.sortDirection,
          ),
          child: Row(
            children: [
              Text(sortField),
            ],
          ),
        ),
      );
    }
    return DropdownButton(
      icon: (controller.sortBy.sortDirection == SortDirection.ascending)
          ? const Icon(Icons.arrow_upward_rounded)
          : const Icon(Icons.arrow_downward_rounded),
      items: dropDownMenuItems.toList(),
      value: controller.sortBy,
      onChanged: (onChanged) {
        controller.setSortBy((onChanged)!);
      },
    );
  }

  Widget _addTypeaheadSearchBox(BuildContext context) {
    return TypeAheadFormField<String>(
      suggestionsCallback: _getSuggestions,
      itemBuilder: (context, String availableSuggestions) {
        final suggestion = availableSuggestions;
        return ListTile(
          title: Text(
            suggestion,
          ),
        );
      },
      onSuggestionSelected: (String availableSuggestions) {
        final suggestion = availableSuggestions;
        _filterController.text = suggestion;
        controller.setFilterText(_filterController.text);
      },
      noItemsFoundBuilder: (context) => SizedBox(
        height: 50,
        child: typeAheadErrorMessageWidget(context.l10n.noRecordsMessage),
      ),
      textFieldConfiguration: TextFieldConfiguration(
        controller: _filterController,
        decoration: FormStyles.textFieldDecoration(context).copyWith(
          labelText: context.l10n.searchJobsHintText,
          hintText: context.l10n.searchJobsHintText,
          suffixIcon: _filterController.text.isEmpty
              ? null
              : IconButton(
                  onPressed: () {
                    _filterController.clear();
                    controller.setFilterText(null);
                  },
                  icon: const Icon(Icons.clear),
                ),
        ),
      ),
    );
  }

  List<String> _getSuggestions(
    String searchText,
  ) {
    var masterList = <String>[];
    masterList.addAll(controller.schedules.map((e) => e.description).toList());
    masterList = masterList.toSet().toList();
    return masterList
        .where((e) => e.toLowerCase().contains(searchText.toLowerCase()))
        .toList();
  }

  Widget _addListView(BuildContext context) {
    final list = controller.filteredSchedules;

    return showJobList(context, list);
  }

  Widget showJobList(BuildContext context, List<ScheduleRecord> list) =>
      ResponsiveGridRow(
        children: list
            .map(
              (schedule) => ResponsiveGridCol(
                xl: 4,
                md: 6,
                child: jobCell(
                  context: context,
                  schedule: schedule,
                ),
              ),
            )
            .toList(),
      );

  Widget jobCell({
    required BuildContext context,
    required ScheduleRecord schedule,
  }) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Card(
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.all(1),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: EmrColours.secondaryGrey),
          borderRadius: BorderRadius.circular(5),
        ),
        elevation: 2,
        child: ResponsiveGridRow(
          children: [
            ResponsiveGridCol(
              xs: 10,
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    right: BorderSide(color: EmrColours.secondaryGrey),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Wrap(
                          children: [
                            Tooltip(
                              message: schedule.description,
                              child: Text(
                                schedule.description,
                                style: FormAppTextStyles.listviewTitleTextColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Row(
                          children: [
                            Text(
                              '''
${context.l10n.repeatEvery} : ${schedule.repeatFrequency}'''
                              '''
 ${_repeatIntervalToString(context, schedule.repeatInterval)}''',
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            _getDate(
                              context,
                              'Created Date',
                              schedule.createdDate,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            _getDate(
                              context,
                              '${context.l10n.nextScheduledDate} ',
                              schedule.nextSchedulerDate,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '${context.l10n.workingDays} : '
                            '''
 ${workingDays.firstWhere((e) => e.key == schedule.workingDays).value}''',
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            _getDate(
                              context,
                              '${context.l10n.repeatUntil} ',
                              schedule.endDate,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '''
${context.l10n.allocatedTo} : ${schedule.assignedTo ?? '--'}''',
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '''
${context.l10n.allocatedToTeam} : ${schedule.assignedToTeam ?? '--'}''',
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Yard(s): ${schedule.yardCodes.take(2).join(', ')}'
                            '${schedule.yardCodes.length > 2 ? ' ...' : ''}',
                          ),
                          Tooltip(
                            message: schedule.yardCodes.join(', '),
                            child: Icon(
                              Icons.info,
                              size: 18,
                              color: FormAppColors.information,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Depot(s): ${schedule.depotNos.take(2).join(', ')}'
                            '${schedule.depotNos.length > 2 ? ' ...' : ''}',
                          ),
                          Tooltip(
                            message: schedule.depotNos.join(', '),
                            child: Icon(
                              Icons.info,
                              size: 18,
                              color: FormAppColors.information,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ResponsiveGridCol(
              xs: 2,
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  children: [
                    _addStopResumeButton(context, schedule),
                    const SizedBox(height: 5),
                    _addPreviewTemplateButton(context, schedule),
                    const SizedBox(height: 5),
                    _addEditButton(context, schedule),
                    const SizedBox(height: 5),
                    _addSignatureButton(context, schedule),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _repeatIntervalToString(BuildContext context, int repeatInterval) {
    switch (repeatInterval) {
      case 1:
        return context.l10n.repeatIntervalDays;
      case 2:
        return context.l10n.repeatIntervalWeeks;
      case 3:
        return context.l10n.repeatIntervalMonths;
      case 4:
        return context.l10n.repeatIntervalYear;
    }
    throw Exception();
  }

  String _getDate(BuildContext context, String label, DateTime? date) {
    final activeLocale = Localizations.localeOf(context);
    final formattedDate = date != null
        ? DateFormat.yMd(activeLocale.toString()).format(date.toLocal())
        : '--';
    return '$label: $formattedDate';
  }

  Future<void> onRefresh() async {
    await controller.loadData();
  }

  @override
  List<Widget> getActions(BuildContext context) {
    return [
      IconButton(
        onPressed: onSearch,
        icon: Icon(Icons.search, color: FormAppColors.white),
      ),
      IconButton(
        onPressed: onFilter,
        icon: Icon(Icons.filter_list, color: FormAppColors.white),
      ),
    ];
  }

  void onSearch() {
    controller.toggleSearchWindow();
  }

  void onFilter() {
    controller.toggleFilterWindow();
  }

  Widget _addStopResumeButton(BuildContext context, ScheduleRecord schedule) {
    return GestureDetector(
      onTap: () async {
        await showConfirmationDialog(
          context: context,
          message: schedule.isActive
              ? context.l10n.confirmationDeactivateScheduler
              : context.l10n.confirmationActivateScheduler,
        ).then((isConfirmed) async {
          if (isConfirmed ?? false) {
            await controller
                .patchSchedule(
              PatchSchedule(uuid: schedule.uuid, isActive: !schedule.isActive),
            )
                .then((value) {
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  value
                      ? appSnackBarMessage(
                          schedule.isActive
                              ? context.l10n.schedulerDeactivatedSuccessfully
                              : context.l10n.schedulerActivatedSuccessfully,
                          MessageTypes.success,
                        )
                      : appSnackBarMessage(
                          schedule.isActive
                              ? context.l10n.schedulerDeactivationFailed
                              : context.l10n.schedulerActivationFailed,
                          MessageTypes.error,
                        ),
                );
              }
              if (value) {
                schedule.isActive = !schedule.isActive;
              }
            });
          }
        });
      },
      child: Column(
        children: [
          Icon(
            schedule.isActive
                ? Icons.stop_circle_outlined
                : Icons.play_circle_outline_outlined,
          ),
          Text(
            schedule.isActive ? context.l10n.stop : context.l10n.start,
            style: const TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }

  Widget _addPreviewTemplateButton(
    BuildContext context,
    ScheduleRecord schedule,
  ) {
    return GestureDetector(
      onTap: () async {
        await context.pushNamed(
          FormsRoutingName.previewTemplate,
          extra: schedule.template!.document,
          queryParams: {
            'isDigitalSignatureRequiredForJob':
                schedule.isDigitalSignatureRequired.toString(),
            'isDigitalSignatureRequiredForTemplate':
                schedule.template!.isDigitalSignatureRequired.toString(),
          },
        );
      },
      child: Column(
        children: [
          SvgPicture.asset(
            FormAppAssetsPath.preview,
            package: FormAppStringLiteral.PackageName,
            width: 22,
            colorFilter: ColorFilter.mode(
              FormAppColors.foreground,
              BlendMode.srcIn,
            ),
          ),
          Text(
            context.l10n.template,
            style: const TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }

  Widget _addEditButton(BuildContext context, ScheduleRecord schedule) {
    return GestureDetector(
      onTap: () async {
        await context
            .pushNamed(
          FormsRoutingName.editScheduler,
          extra: schedule,
        )
            .then((value) {
          if ((value as bool?) ?? false) {
            controller.loadData();
          }
        });
      },
      child: Column(
        children: [
          const Icon(
            Icons.edit,
          ),
          Text(
            context.l10n.edit,
            style: const TextStyle(fontSize: 10),
          ),
        ],
      ),
      // label: const Text('Edit'),
    );
  }

  Widget _addSignatureButton(BuildContext context, ScheduleRecord schedule) {
    return GestureDetector(
      onTap: () async {
        if (schedule.template?.isDigitalSignatureRequired ?? false) {
          await showMessageDialog(
            context: context,
            messageType: MessageType.error,
            message: 'Cannot disable signature.',
          );
          return;
        }
        await showConfirmationDialog(
          context: context,
          message: schedule.isDigitalSignatureRequired
              ? context.l10n.confirmationDisableSignature
              : context.l10n.confirmationEnableSignature,
        ).then((isConfirmed) async {
          if (isConfirmed ?? false) {
            await controller
                .patchSchedule(
              PatchSchedule(
                uuid: schedule.uuid,
                isDigitalSignatureRequired:
                    !schedule.isDigitalSignatureRequired,
              ),
            )
                .then((value) {
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  value
                      ? appSnackBarMessage(
                          context.l10n.schedulerDigitalSignatureUpdated,
                          MessageTypes.success,
                        )
                      : appSnackBarMessage(
                          context.l10n.schedulerDigitalSignatureUpdationFailed,
                          MessageTypes.error,
                        ),
                );
              }

              if (value) {
                schedule.isDigitalSignatureRequired =
                    !schedule.isDigitalSignatureRequired;
              }
            });
          }
        });
      },
      child: Column(
        children: [
          if (schedule.isDigitalSignatureRequired)
            const Icon(
              Icons.draw,
            )
          else
            const Blur(
              blur: 1,
              child: Icon(
                Icons.draw,
              ),
            ),
          Text(
            context.l10n.signature,
            style: const TextStyle(fontSize: 10),
          ),
        ],
      ),
      // label: const Text('Edit'),
    );
  }

  Future<void> onActionButtonPressed(BuildContext context) async {
    await context
        .pushNamed(
      FormsRoutingName.editScheduler,
    )
        .then((value) {
      if ((value as bool?) ?? false) {
        controller.loadData();
      }
    });
  }

  Widget _addFilterChoiceChips(BuildContext context) {
    final options = <KeyValuePair<int, String>>[
      KeyValuePair(key: 1, value: context.l10n.repeatIntervalDays),
      KeyValuePair(key: 2, value: context.l10n.repeatIntervalWeeks),
      KeyValuePair(key: 3, value: context.l10n.repeatIntervalMonths),
      KeyValuePair(key: 4, value: context.l10n.repeatIntervalYear),
    ];
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: options
          .map(
            (e) => ChoiceChip(
              label: Text(e.value),
              selected: controller.selectedRepeatInterval.contains(e.key),
              onSelected: (val) {
                _filterController.text = '';
                controller.updateSelectedRepeatInterval(e.key);
              },
              selectedColor: FormAppColors.success,
            ),
          )
          .toList(),
    );
  }
}
