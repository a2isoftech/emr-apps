import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_inform/allocate_user/controllers/interfaces/i_allocate_user_controller.dart';
import 'package:emr_one_inform/allocate_user/models/allocate_user_job.dart';
import 'package:emr_one_inform/common/common_export.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/models/message_type.dart';
import 'package:emr_one_inform/screens/base/base_page.dart';
import 'package:emr_one_inform/screens/team/team_model.dart';
import 'package:emr_one_inform/widgets/forms_app_widgets.dart';
import 'package:emr_one_inform/widgets/new_search_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

abstract class AllocateUserToJobsCommon
    extends BasePage<IAllocateUserController> {
  AllocateUserToJobsCommon({super.key});

  final _userController = TextEditingController();
  final _teamController = TextEditingController();
  final _filterController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final ScrollController scrollController = ScrollController();

  @override
  Widget? getActionButton(BuildContext context) => null;

  @override
  String getTitle(BuildContext context) {
    return '${context.l10n.allocateUserToJob} (${yard.yardCode})';
  }

  @override
  void initState(BuildContext context) {
    controller.loadJobs();
  }

  Future<void> onRefresh() async {
    await controller.loadJobs();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget widgetBuilder(BuildContext context) {
    scrollController.addListener(
      () {
        final nextPageTrigger = 0.8 * scrollController.position.maxScrollExtent;
        if (controller.hasNextPage &&
            scrollController.position.pixels > nextPageTrigger &&
            !controller.isNextpageLoading) {
          controller.applyFilter(isRefresh: false);
        }
      },
    );
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: PopupMenuButton(
          color: FormAppColors.black,
          icon: const Icon(Icons.menu),
          position: PopupMenuPosition.under,
          onSelected: (value) {
            if (value == 'Fetch') {
              if (controller.hasNextPage) {
                controller.applyFilter(isRefresh: false);
                return;
              }
            } else if (value == 'Collapse') {
              setState(() {
                controller.setCollapsed(value: !controller.isCollapsed);
              });
              return;
            } else if (value == 'Top') {
              if (scrollController.position.pixels >
                  scrollController.position.minScrollExtent) {
                scrollController.position.animateTo(
                  1,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.bounceIn,
                );
              }
              return;
            }
          },
          itemBuilder: (context) {
            return [
              if (controller.hasNextPage)
                const PopupMenuItem(
                  value: 'Fetch',
                  child: Tooltip(
                    message: 'Fetch More Data',
                    child: Icon(Icons.notes_sharp),
                  ),
                ),
              const PopupMenuItem(
                value: 'Collapse',
                child: Tooltip(
                  message: 'Collapse Toggle',
                  child: Icon(Icons.expand),
                ),
              ),
              const PopupMenuItem(
                value: 'Top',
                child: Tooltip(
                  message: 'Go to top',
                  child: Icon(Icons.arrow_circle_up),
                ),
              ),
            ];
          },
        ),
      ),
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: SingleChildScrollView(
          controller: scrollController,
          physics: const AlwaysScrollableScrollPhysics(),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                if (controller.isSearchWidgetVisible.value) ...[
                  _addSearchWidget(),
                  const SizedBox(height: 5),
                ],
                if (controller.isFilterValuesReady.value) ...[
                  Material(
                    elevation: 20,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          _addSortByOptions(context),
                          _typeAheadFilter(context),
                          _addFilterChoiceChips(),
                          if (controller.selectedFilterByOption == 'Yard') ...[
                            const SizedBox(height: 5),
                            _addFilterChoiceChipsYardDepots(),
                          ],
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                ],
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 5, top: 5, bottom: 5),
                      child: Row(
                        children: [
                          ChoiceChip(
                            label: Text(
                              context.l10n.jobsScheduled,
                              style: const TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            selected: !controller.isInProgressJobs,
                            onSelected: (value) {
                              controller.isInProgressJobs = false;
                              controller.applyFilter(isRefresh: true);
                            },
                            selectedColor: FormAppColors.success,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ChoiceChip(
                            label: Text(
                              context.l10n.inProgress,
                              style: const TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            selected: controller.isInProgressJobs,
                            onSelected: (value) {
                              controller.isInProgressJobs = true;
                              controller.applyFilter(isRefresh: true);
                            },
                            selectedColor: FormAppColors.success,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 5, top: 5, bottom: 5),
                      child: Row(
                        children: [
                          if (kIsWeb) ...[
                            Text(
                              'Compact View',
                              style: TextStyle(color: FormAppColors.black),
                            ),
                          ],
                          Switch(
                            value: controller.isCollapsed,
                            onChanged: (value) async {
                              setState(() {
                                controller.setCollapsed(
                                  value: !controller.isCollapsed,
                                );
                              });
                            },
                          ),
                          if (!kIsWeb)
                            IconButton(
                              onPressed: !controller.hasNextPage
                                  ? null
                                  : () =>
                                      controller.applyFilter(isRefresh: false),
                              icon: const Icon(Icons.notes),
                            ),
                          if (kIsWeb)
                            ElevatedButton(
                              onPressed: !controller.hasNextPage
                                  ? null
                                  : () =>
                                      controller.applyFilter(isRefresh: false),
                              child: const Tooltip(
                                message: 'Fetch More',
                                child: Icon(Icons.notes),
                              ),
                            ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                if (controller.isLoading || controller.isBusy) ...[
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Center(child: showSpinner()),
                  ),
                ] else if ((controller.isInProgressJobs &&
                        controller.inProgressJobs.isEmpty) ||
                    (!controller.isInProgressJobs &&
                        controller.scheduledJobs.isEmpty)) ...[
                  Center(child: showNoData('No jobs found')),
                ] else ...[
                  Material(
                    elevation: 20,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          _addGroupChoiceChips(),
                          const SizedBox(height: 5),
                          _typeAheadTeams(context),
                          const SizedBox(height: 5),
                          _typeAheadUsers(context),
                          const SizedBox(height: 5),
                          _addActionButtons(context),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  _addScheduleTypeChips(),
                  Material(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [_addJobList(context)],
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _addSearchWidget() => ValueListenableBuilder(
        valueListenable: controller.isSearchWidgetVisible,
        builder: (context, value, child) {
          return Visibility(
            visible: value,
            child: ValueListenableBuilder(
              valueListenable: controller.isFilterValuesReady,
              builder: (context, value, child) {
                return SearchWidget(
                  key: UniqueKey(),
                  searchOptions: [
                    DateRangeSearchOption(
                      displayText: 'Date',
                      propertyName: 'date',
                    ),
                    TypeaheadSearchOption(
                      displayText: 'WO/SI Number',
                      propertyName: 'workOrderId',
                      datasource: null,
                      sourceCallback: controller.getWorkOrderIds,
                    ),
                    ScanSearchOption(
                      displayText: 'Scan asset code',
                      propertyName: 'assetCode',
                    ),
                  ],
                  initialState: controller.searchState,
                  onStateChanged: (searchState) async {
                    controller.searchStateChanged(searchState);
                    await controller.loadJobs();
                  },
                );
              },
            ),
          );
        },
      );

  Widget _addJobList(BuildContext context) {
    final filteredJobs = getFilteredJobs();
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (filteredJobs.isNotEmpty) ...[
          if (controller.isInProgressJobs) ...[
            showInProgressJobs(context, filteredJobs),
          ] else ...[
            showScheduledJobs(context, filteredJobs),
          ],
        ],
        if (controller.isNextpageLoading) showSpinner(),
      ],
    );
  }

  Widget showInProgressJobs(
    BuildContext context,
    List<AllocateUserJob> inprogress,
  );
  Widget showScheduledJobs(
    BuildContext context,
    List<AllocateUserJob> scheduled,
  );

  Widget jobCell({
    required AllocateUserJob job,
    required BuildContext context,
  }) {
    return GestureDetector(
      onTap: () {
        controller.selectJob(job);
      },
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Card(
          color: controller.selectedItems.contains(job)
              ? FormAppColors.success
              : null,
          clipBehavior: Clip.antiAlias,
          margin: const EdgeInsets.all(1),
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: EmrColours.secondaryGrey),
            borderRadius: BorderRadius.circular(5),
          ),
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    CommonUtility.iconForJobPriority(job.jobPriority),
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  child: Wrap(
                    children: [
                      Tooltip(
                        message: job.workOrderDescription,
                        child: Wrap(
                          spacing: 5,
                          children: [
                            Icon(
                              CommonUtility.getIconDataForScheduleItemType(
                                job.scheduleItemType,
                              ),
                            ),
                            Text(
                              job.workOrderDescription,
                              style: FormAppTextStyles.listviewTitleTextColor,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '${job.workOrderId} (${job.yardCode} / ${job.depotNo})',
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text('${context.l10n.asset} : ${job.assetCode}'),
                  ],
                ),
                if (!controller.isCollapsed) ...[
                  Row(
                    children: [
                      Text('${context.l10n.jobType} : ${job.jobType}'),
                    ],
                  ),
                  Row(
                    children: [
                      Text('${context.l10n.jobTrade} : ${job.jobTrade}'),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '${context.l10n.jobTypeVariant}:${job.jobTypeVariant}',
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '''
${context.l10n.due} : ${_getFormDueDate(job.dueDate, context)}''',
                      ),
                      const SizedBox(width: 5),
                      FormAppIcons.calendarIcon,
                    ],
                  ),
                ],
                Row(
                  children: [
                    Text('${context.l10n.allocatedTo} : ${job.assignedTo}'),
                    if (job.assignedTo != '' && job.instanceId == '') ...[
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: () async {
                          await controller
                              .unallocateUserTeamFromJob(job, 1)
                              .then((value) async {
                            if (value) {
                              if (context.mounted) {
                                await showMessageDialog(
                                  context: context,
                                  messageType: MessageType.success,
                                  message:
                                      'User has been un-allocated from the Job',
                                );
                              }
                            } else {
                              if (context.mounted) {
                                await showMessageDialog(
                                  context: context,
                                  messageType: MessageType.error,
                                  message: 'Error while un-allocating the job',
                                );
                              }
                            }

                            controller.selectedItems.clear();
                            await controller.loadJobs();
                          });
                        },
                        child: Ink(
                          decoration: ShapeDecoration(
                            color: FormAppColors.error,
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2),
                            child: FaIcon(
                              FontAwesomeIcons.xmark,
                              color: Theme.of(context).colorScheme.onTertiary,
                              size: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
                if (!controller.isCollapsed) ...[
                  Row(
                    children: [
                      Text('${context.l10n.startedBy} : ${job.startedBy}'),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '${context.l10n.allocatedToTeam}:${job.assignedToTeam}',
                      ),
                      if (job.assignedToTeam != '' && job.instanceId == '') ...[
                        const SizedBox(width: 5),
                        GestureDetector(
                          onTap: () async {
                            await controller
                                .unallocateUserTeamFromJob(job, 2)
                                .then((value) async {
                              if (value) {
                                if (context.mounted) {
                                  await showMessageDialog(
                                    context: context,
                                    messageType: MessageType.success,
                                    message: 'Team has been un-allocated'
                                        ' from the Job',
                                  );
                                }
                              } else {
                                if (context.mounted) {
                                  await showMessageDialog(
                                    context: context,
                                    messageType: MessageType.error,
                                    message:
                                        'Error while un-allocating the job',
                                  );
                                }
                              }

                              controller.selectedItems.clear();
                              await controller.loadJobs();
                            });
                          },
                          child: Ink(
                            decoration: ShapeDecoration(
                              color: FormAppColors.error,
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2),
                              child: FaIcon(
                                FontAwesomeIcons.xmark,
                                color: Theme.of(context).colorScheme.onTertiary,
                                size: 14,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _getFormDueDate(
    DateTime? formCompletionDueDate,
    BuildContext context,
  ) {
    if (formCompletionDueDate == null) {
      return '';
    }

    final activeLocale = Localizations.localeOf(context);
    final formattedDate = DateFormat.yMd(activeLocale.toString())
        .format(formCompletionDueDate.toLocal());

    return formattedDate;
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

  Widget _addGroupChoiceChips() {
    return Wrap(
      spacing: 5,
      children: ConstantLists.AllocateUserScreenGroup.map(
        (e) => ChoiceChip(
          labelPadding: EdgeInsets.zero,
          label: Text(
            '$e (${_getCount(e)})',
            style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w900),
          ),
          selected: controller.selectedGroup == e,
          onSelected: (value) {
            controller.setSelectedGroup(e);
          },
          selectedColor: FormAppColors.success,
        ),
      ).toList(),
    );
  }

  String _getCount(String group) {
    switch (group) {
      case AllocateUserScreenGroupItem.All:
        return controller.filteredJobs.length.toString();
      case AllocateUserScreenGroupItem.Unassigned:
        return controller.filteredJobs
            .where(
              (element) =>
                  element.assignedTo.isEmpty && element.assignedToTeam.isEmpty,
            )
            .length
            .toString();
      case AllocateUserScreenGroupItem.Assigned:
        return controller.filteredJobs
            .where(
              (element) =>
                  element.assignedTo.isNotEmpty ||
                  element.assignedToTeam.isNotEmpty,
            )
            .length
            .toString();
      case AllocateUserScreenGroupItem.Selected:
        return controller.selectedItems.length.toString();
    }
    return '0';
  }

  Widget _addActionButtons(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: (controller.selectedTeam != null ||
                        controller.selectedUser != null) &&
                    controller.selectedItems.isNotEmpty
                ? () async {
                    await assignUser(context);
                  }
                : null,
            child: Text(context.l10n.assignButtonText),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: ElevatedButton(
            onPressed: controller.selectedUser != null &&
                    controller.selectedItems
                        .any((element) => element.startedBy.isNotEmpty)
                ? () => assignUserAndResetJob(context)
                : null,
            child: Text(context.l10n.reAssignWithResetText),
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
            controller.setSelectedTeam(team);
            controller.setSelectedUser(null);
          },
          noItemsFoundBuilder: (context) => SizedBox(
            height: 50,
            child: (controller.teamCount == -1)
                ? typeAheadInfoMessageWidget(
                    context.l10n.typeAheadMessageLoading,
                  )
                : typeAheadErrorMessageWidget(
                    context.l10n.noRecordsMessage,
                  ),
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
                        controller.setSelectedTeam(null);
                        controller.setSelectedUser(null);
                      },
                      icon: const Icon(Icons.clear),
                    ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _typeAheadUsers(BuildContext context) {
    return Wrap(
      runSpacing: 5,
      children: [
        TypeAheadFormField<User?>(
          suggestionsCallback: (searchText) async {
            return controller.getUsers(searchText);
          },
          itemBuilder: (context, User? availableUsers) {
            final users = availableUsers!;
            return ListTile(
              title: Text(users.displayName),
              subtitle: Text(users.email ?? ''),
            );
          },
          onSuggestionSelected: (User? availableUser) {
            final user = availableUser!;
            _userController.text = '${user.displayName} (${user.email})';
            controller.setSelectedUser(user);
          },
          noItemsFoundBuilder: (context) => SizedBox(
            height: 50,
            child: (controller.userCount == -1)
                ? typeAheadInfoMessageWidget(
                    context.l10n.typeAheadMessageLoading,
                  )
                : typeAheadErrorMessageWidget(
                    context.l10n.noRecordsMessage,
                  ),
          ),
          textFieldConfiguration: TextFieldConfiguration(
            controller: _userController,
            decoration: FormStyles.textFieldDecoration(context).copyWith(
              labelText: context.l10n.userLabel,
              hintText: context.l10n.userHint,
              suffixIcon: _userController.text.isEmpty
                  ? null
                  : IconButton(
                      onPressed: () {
                        _userController.clear();
                        controller.setSelectedUser(null);
                      },
                      icon: const Icon(Icons.clear),
                    ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _typeAheadFilter(BuildContext context) {
    return Wrap(
      runSpacing: 5,
      children: [
        TypeAheadFormField<String>(
          suggestionsCallback: (searchText) async {
            return (searchText.length > 2)
                ? getFilterSuggestions(searchText)
                : const Iterable<String>.empty();
          },
          itemBuilder: (context, String key) {
            return ListTile(title: Text(key));
          },
          onSuggestionSelected: (String suggestion) {
            _filterController.text = suggestion;
            controller.setFilterText(suggestion);
          },
          noItemsFoundBuilder: (context) => SizedBox(
            height: 50,
            child: (controller.userCount == -1)
                ? typeAheadInfoMessageWidget(
                    context.l10n.typeAheadMessageLoading,
                  )
                : typeAheadErrorMessageWidget(
                    context.l10n.noRecordsMessage,
                  ),
          ),
          textFieldConfiguration: TextFieldConfiguration(
            controller: _filterController,
            decoration: FormStyles.textFieldDecoration(context).copyWith(
              labelText: context.l10n.filters,
              hintText: context.l10n.search,
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
        ),
      ],
    );
  }

  List<String> getFilterSuggestions(String key) {
    final workOrderId = controller.jobs.map((e) => e.workOrderId).toList();
    final assetCodes = controller.jobs.map((e) => e.assetCode).toList();
    final workOrderDescriptions =
        controller.jobs.map((e) => e.workOrderDescription).toList();
    final yardCodes = controller.jobs.map((e) => e.yardCode).toList();
    final list = <String>{
      ...workOrderId,
      ...workOrderDescriptions,
      ...assetCodes,
      ...yardCodes,
    }.toList();
    return list
        .where((element) => element.toLowerCase().contains(key.toLowerCase()))
        .toList();
  }

  Future<void> assignUser(BuildContext context) async {
    var message = '';
    if (controller.selectedTeam != null) {
      message = controller.selectedTeam!.name!;
    }
    if (controller.selectedUser != null) {
      message = message.isEmpty
          ? controller.selectedUser!.displayName
          : '$message / ${controller.selectedUser!.displayName}';
    }

    await controller.assignWorkOrderToUser().then((value) async {
      if (value) {
        if (context.mounted) {
          await showMessageDialog(
            context: context,
            messageType: MessageType.success,
            message: 'Job has been allocated to $message',
          );
        }
      } else {
        if (context.mounted) {
          await showMessageDialog(
            context: context,
            messageType: MessageType.error,
            message: 'Error while allocating jobs to $message',
          );
        }
      }

      controller.selectedItems.clear();
      await controller.loadJobs();
    });
  }

  Future<void> assignUserAndResetJob(BuildContext context) async {
    var message = '';
    if (controller.selectedTeam != null) {
      message = controller.selectedTeam!.name!;
    }
    if (controller.selectedUser != null) {
      message = message.isEmpty
          ? controller.selectedUser!.displayName
          : '$message / ${controller.selectedUser!.displayName}';
    }
    await controller.reAssignWorkOrderToUserAndResetJob().then((value) async {
      if (value) {
        if (context.mounted) {
          await showMessageDialog(
            context: context,
            messageType: MessageType.success,
            message: 'Job has been allocated to $message',
          );
        }
      } else {
        if (context.mounted) {
          await showMessageDialog(
            context: context,
            messageType: MessageType.error,
            message: 'Error while allocating jobs to $message',
          );
        }
      }

      controller.selectedItems.clear();
      await controller.loadJobs();
    });
  }

  Widget _addFilterChoiceChips() {
    final choiceChips = <Widget>[];

    var choiceChipsText = <String>[];
    if (controller.selectedFilterByOption == 'Job Trade') {
      choiceChipsText = controller.jobs.map((e) => e.jobTrade).toList();
    }
    if (controller.selectedFilterByOption == 'Job Type') {
      choiceChipsText = controller.jobs.map((e) => e.jobType).toList();
    }
    if (controller.selectedFilterByOption == 'Job Type Variant') {
      choiceChipsText = controller.jobs.map((e) => e.jobTypeVariant).toList();
    }
    if (controller.selectedFilterByOption == 'Description') {
      choiceChipsText =
          controller.jobs.map((e) => e.workOrderDescription).toList();
    }
    if (controller.selectedFilterByOption == 'Yard') {
      choiceChipsText = controller.jobs.map((e) => e.yardCode).toList();
    }
    choiceChips.addAll(
      choiceChipsText
          .fold(
            <String, int>{},
            (Map<String, int> map, item) => map
              ..update(
                item,
                (count) => count + 1,
                ifAbsent: () => 1,
              ),
          )
          .entries
          .map(
            (e) => ChoiceChip(
              selectedColor: FormAppColors.success,
              label: Text('${e.key} (${e.value})'),
              selected: controller.filterChips.contains(e.key),
              onSelected: (value) {
                if (controller.filterChips.contains(e.key)) {
                  controller.filterChips.remove(e.key);
                  if (controller.selectedFilterByOption == 'Yard') {
                    controller.selectedYards.remove(e.key);
                  }
                } else {
                  controller.filterChips.add(e.key);
                  if (controller.selectedFilterByOption == 'Yard') {
                    controller.selectedYards.add(e.key);
                  }
                }

                _filterController.text = '';
                controller.setFilterText(null);
              },
            ),
          ),
    );

    return Column(
      children: [
        if (controller.jobs.isNotEmpty)
          Row(
            children: [
              const Text('Filter By: '),
              const SizedBox(width: 10),
              DropdownButton<String>(
                value: controller.selectedFilterByOption,
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 16,
                onChanged: (String? value) {
                  controller.filterChips.clear();
                  controller.setSelectedFilterByOption(value!);
                },
                items: const [
                  DropdownMenuItem<String>(
                    value: 'Job Trade',
                    child: Text('Job Trade'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Job Type',
                    child: Text('Job Type'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Job Type Variant',
                    child: Text('Job Type Variant'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Description',
                    child: Text('Description'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Yard',
                    child: Text('Yard'),
                  ),
                ],
              ),
            ],
          ),
        Wrap(spacing: 5, runSpacing: 5, children: choiceChips),
      ],
    );
  }

  Widget _addSortByDropDownWidget() {
    final sortFields = [
      'Title',
      'Date',
      'Work Order',
      'Asset Code',
      'Priority',
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
        controller.setSortBy(onChanged!);
      },
    );
  }

  List<AllocateUserJob> _applySorting(List<AllocateUserJob> jobs) {
    switch (controller.sortBy.fieldName) {
      case 'Title':
        if (controller.sortBy.sortDirection == SortDirection.ascending) {
          jobs.sort(
            (x, y) => x.workOrderDescription.compareTo(y.workOrderDescription),
          );
        } else {
          jobs.sort(
            (x, y) => y.workOrderDescription.compareTo(x.workOrderDescription),
          );
        }
      case 'Date':
        if (controller.sortBy.sortDirection == SortDirection.ascending) {
          jobs.sort(
            (x, y) => x.dueDate.compareTo(y.dueDate),
          );
        } else {
          jobs.sort(
            (x, y) => y.dueDate.compareTo(x.dueDate),
          );
        }
      case 'Work Order':
        if (controller.sortBy.sortDirection == SortDirection.ascending) {
          jobs.sort(
            (x, y) => x.workOrderId.compareTo(y.workOrderId),
          );
        } else {
          jobs.sort(
            (x, y) => y.workOrderId.compareTo(x.workOrderId),
          );
        }
      case 'Asset Code':
        if (controller.sortBy.sortDirection == SortDirection.ascending) {
          jobs.sort(
            (x, y) => x.assetCode.compareTo(y.assetCode),
          );
        } else {
          jobs.sort(
            (x, y) => y.assetCode.compareTo(x.assetCode),
          );
        }
      case 'Priority':
        if (controller.sortBy.sortDirection == SortDirection.ascending) {
          jobs.sort(
            (x, y) => x.jobPriority.compareTo(y.jobPriority),
          );
        } else {
          jobs.sort(
            (x, y) => y.jobPriority.compareTo(x.jobPriority),
          );
        }
    }
    return jobs;
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
        icon: Icon(
          Icons.filter_list,
          color: FormAppColors.white,
        ),
      ),
    ];
  }

  void onSearch() {
    controller.toggleSearchWindow();
  }

  void onFilter() {
    controller.toggleFilterWindow();
  }

  Widget _addScheduleTypeChips() {
    return Wrap(
      spacing: 5,
      children: ConstantLists.ScheduleItemTypes.map(
        (e) => FilterChip(
          showCheckmark: false,
          avatar: Icon(
            CommonUtility.getIconDataForScheduleItemType(e),
            color: FormAppColors.foreground,
          ),
          labelPadding: const EdgeInsets.all(3),
          label: Text(
            '$e (${_getScheduleItemTypeCount(e)})',
            style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w900),
          ),
          selected: controller.selectedScheduledItemType.contains(e),
          onSelected: (value) {
            if (value) {
              if (!controller.selectedScheduledItemType.contains(e)) {
                setState(() => controller.selectedScheduledItemType.add(e));
              }
            } else {
              if (controller.selectedScheduledItemType.contains(e)) {
                setState(() => controller.selectedScheduledItemType.remove(e));
              }
            }
          },
          selectedColor: FormAppColors.success,
        ),
      ).toList(),
    );
  }

  String _getScheduleItemTypeCount(String group) {
    final jobForms = _filterByGroup(controller.filteredJobs);
    return jobForms.where((x) => x.scheduleItemType == group).length.toString();
  }

  List<AllocateUserJob> _filterByGroup(List<AllocateUserJob> filteredJobs) {
    var masterList = filteredJobs.toList();
    switch (controller.selectedGroup) {
      case AllocateUserScreenGroupItem.Unassigned:
        masterList = masterList
            .where(
              (element) =>
                  element.assignedTo.isEmpty && element.assignedToTeam.isEmpty,
            )
            .toList();
      case AllocateUserScreenGroupItem.Assigned:
        masterList = masterList
            .where(
              (element) =>
                  element.assignedTo.isNotEmpty ||
                  element.assignedToTeam.isNotEmpty,
            )
            .toList();
      case AllocateUserScreenGroupItem.Selected:
        masterList = masterList
            .where(
              (element) => controller.selectedItems.contains(element),
            )
            .toList();
      case AllocateUserScreenGroupItem.Inprogress:
        masterList = masterList
            .where((element) => element.startedBy.isNotEmpty)
            .toList();
      case AllocateUserScreenGroupItem.Scheduled:
        masterList =
            masterList.where((element) => element.startedBy.isEmpty).toList();
    }

    return masterList;
  }

  Widget _addFilterChoiceChipsYardDepots() {
    final choiceChips = <Widget>[];
    final jobs = controller.jobs;
    var choiceChipsText = <String>[];

    choiceChipsText = jobs
        .where((e) => controller.selectedYards.contains(e.yardCode))
        .map((e) => e.depotNo)
        .toList();

    choiceChips.addAll(
      choiceChipsText
          .fold(
            <String, int>{},
            (Map<String, int> map, item) => map
              ..update(
                item,
                (count) => count + 1,
                ifAbsent: () => 1,
              ),
          )
          .entries
          .map(
            (e) => ChoiceChip(
              selectedColor: FormAppColors.success,
              label: Text('${e.key} (${e.value})'),
              selected: controller.filterDepotChips.contains(e.key),
              onSelected: (value) {
                if (controller.filterDepotChips.contains(e.key)) {
                  controller.filterDepotChips.remove(e.key);
                } else {
                  controller.filterDepotChips.add(e.key);
                }

                _filterController.text = '';
                controller.setFilterText(null);
              },
            ),
          ),
    );
    return Column(
      children: [
        if (jobs.isNotEmpty)
          Wrap(spacing: 5, runSpacing: 5, children: choiceChips),
      ],
    );
  }

  List<AllocateUserJob> getFilteredJobs() {
    var filteredByGroup = _filterByGroup(controller.filteredJobs);

    if (controller.selectedScheduledItemType.isNotEmpty) {
      filteredByGroup = filteredByGroup
          .where(
            (e) => controller.selectedScheduledItemType
                .contains(e.scheduleItemType),
          )
          .toList();
    }
    if (controller.isInProgressJobs) {
      final filtered =
          filteredByGroup.where((e) => e.startedBy.isNotEmpty).toList();
      return _applySorting(filtered);
    } else {
      final filtered =
          filteredByGroup.where((e) => e.startedBy.isEmpty).toList();
      return _applySorting(filtered);
    }
  }
}
