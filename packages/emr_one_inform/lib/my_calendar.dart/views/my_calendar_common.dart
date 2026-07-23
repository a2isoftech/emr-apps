import 'dart:convert';

import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_forms_engine/emr_one_forms_engine.dart';
import 'package:emr_one_inform/common/common_export.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/create_task/models/clone_task_parameter.dart';
import 'package:emr_one_inform/globals.dart';
import 'package:emr_one_inform/models/form_job.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/my_calendar.dart/controllers/my_calendar_controller.dart';
import 'package:emr_one_inform/repository/shared_preferences/ipreference_repository.dart';
import 'package:emr_one_inform/screens/base/base_page.dart';
import 'package:emr_one_inform/widgets/widgets_export.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

abstract class MyCalendarCommon extends BasePage<IMyCalenderController> {
  MyCalendarCommon({
    required this.config,
    super.key,
  });

  final AppConfig config;

  late final IUserPreferencesRepository _userPreferencesRepository;

  late final EmrCalendarMonthViewController calendarController;

  // The agenda view is only shown in the native app.
  final agendaController = EmrCalendarAgendaViewController();

  @override
  String getTitle(BuildContext context) => 'My Calendar';

  @override
  void initState(BuildContext context) {
    _userPreferencesRepository =
        Provider.of<IUserPreferencesRepository>(context, listen: false);

    calendarController = EmrCalendarMonthViewController(
      displayMode: config.isWeb
          ? EmrCalendarDisplayMode.full
          : EmrCalendarDisplayMode.compact,
      onMonthChanged: (firstDate, lastDate) async {
        controller.setDates(firstDate, lastDate);

        calendarController.selectedDate.value = firstDate;

        await controller.loadJobs(yard.yardCode!);

        updateCalendarDataSource();
      },
      onDateSelected: (date) {
        setState(() => controller.selectedDate = date);

        agendaController.events.value = controller.dataSource
            .where((event) => event.start.day == date.day)
            .toList();
      },
      onEventTapped: (context, event) async {
        final job = event.data as FormJob;

        await showDialog<void>(
          context: context,
          builder: (context) => Dialog(
            shape: const ContinuousRectangleBorder(),
            child: SizedBox(
              width: 500,
              height: 330,
              child: jobCell(context: context, scheduled: job),
            ),
          ),
        );
      },
      onMoreEventsTapped: (events) async {
        await showDialog<void>(
          context: context,
          builder: (context) => Dialog(
            shape: const ContinuousRectangleBorder(),
            child: SizedBox(
              height: 500,
              width: 500,
              child: ListView.builder(
                itemCount: events.length,
                itemBuilder: (context, index) {
                  final job = events[index].data as FormJob;

                  return Card(
                    child: jobCell(context: context, scheduled: job),
                  );
                },
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
              ),
            ),
          ),
        );
      },
    );

    agendaController.onEventTapped = calendarController.onEventTapped;
    agendaController.selectedDate = calendarController.selectedDate;

    controller.setDates(
      calendarController.firstDate,
      calendarController.lastDate,
    );

    // Load the jobs when the screen first loads.
    context.read<IUserPreferencesRepository>().getYard().then((yard) async {
      if (yard == null) {
        return;
      }

      await controller.loadJobs(yard.yardCode!);

      updateCalendarDataSource();
    });
  }

  @override
  List<Widget> getActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () async {
          await controller.loadJobs(yard.yardCode!);

          updateCalendarDataSource();
        },
        icon: Icon(Icons.refresh, color: FormAppColors.white),
      ),
    ];
  }

  Widget jobCell({
    required BuildContext context,
    required FormJob scheduled,
  }) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              if (scheduled.jobInfo?.expectedStartDate != null &&
                  _checkIsFormOverdue(
                    scheduled.jobInfo!.expectedStartDate!,
                  )) ...[
                FormAppIcons.formOverDue,
                const SizedBox(width: 5),
              ],
              if (scheduled.jobInfo?.notes?.isNotEmpty ?? false) ...[
                Tooltip(
                  message: scheduled.jobInfo?.notes ?? '',
                  child: const Icon(Icons.info),
                ),
                const SizedBox(width: 5),
              ],
              CommonUtility.iconForJobPriority(
                scheduled.jobInfo?.jobPriority,
              ),
              const Spacer(),
              if (scheduled.jobInfo!.status == 'NOT_STARTED') ...[
                ElevatedButton(
                  onPressed: (yard.yardCode == scheduled.jobInfo?.yardCode) &&
                          ((scheduled.jobInfo?.assignedTo?.isEmpty ?? true) ||
                              scheduled.jobInfo?.assignedTo ==
                                  UserInfoService.instance!.userInfo.name)
                      ? () => _onStartPressed(context, scheduled)
                      : null,
                  style: FormAppDecorations.jobStartButtonStyle,
                  child: Text(
                    context.l10n.startForm,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              ] else if (scheduled.jobInfo!.status == 'IN_PROGRESS') ...[
                ElevatedButton(
                  onPressed: yard.yardCode == scheduled.jobInfo?.yardCode
                      ? () => _onContinuePressed(
                            context,
                            scheduled,
                            false,
                          )
                      : null,
                  style: scheduled.instanceInfo!.statusId == 1
                      ? FormAppDecorations.jobContinueButtonStyle
                      : FormAppDecorations.jobContinueButtonDisabledStyle,
                  child: Text(
                    scheduled.instanceInfo!.statusId == 1
                        ? context.l10n.continueForm
                        : context.l10n.queued,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: Wrap(
              children: [
                Tooltip(
                  message: scheduled.jobInfo?.workOrderDescription ?? '',
                  child: Wrap(
                    spacing: 5,
                    children: [
                      Icon(
                        CommonUtility.getIconDataForScheduleItemType(
                          scheduled.jobInfo?.scheduleItemType,
                        ),
                      ),
                      Text(
                        scheduled.jobInfo?.workOrderDescription ?? '',
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
              Text('${scheduled.jobInfo?.workOrderId!} ('
                  '''
    ${scheduled.jobInfo?.yardCode ?? ''} / ${scheduled.jobInfo?.depotNo ?? ''})'''),
            ],
          ),
          Row(
            children: [
              Text(
                '''${context.l10n.asset} : ${scheduled.jobInfo?.asset?.assetCode ?? '--'}''',
              ),
            ],
          ),
          Row(
            children: [
              Text(
                '''${context.l10n.jobType} : ${scheduled.jobInfo?.jobType ?? '--'}''',
              ),
            ],
          ),
          Row(
            children: [
              Text(
                '''${context.l10n.jobTrade} : ${scheduled.jobInfo?.jobTrade ?? '--'}''',
              ),
            ],
          ),
          Row(
            children: [
              Text(
                '${context.l10n.startedBy} : '
                '''
    ${(scheduled.instanceInfo?.startedBy?.isNotEmpty ?? false) ? scheduled.instanceInfo?.startedBy : '--'}''',
              ),
            ],
          ),
          Row(
            children: [
              Text(
                '${context.l10n.allocatedTo} : '
                '''
    ${(scheduled.jobInfo?.assignedTo?.isNotEmpty ?? false) ? scheduled.jobInfo?.assignedTo : '--'}''',
              ),
            ],
          ),
          Row(
            children: [
              Text(
                '${context.l10n.allocatedToTeam} : '
                '''
    ${(scheduled.jobInfo?.assignedToTeam?.isNotEmpty ?? false) ? scheduled.jobInfo?.assignedToTeam : '--'}''',
              ),
            ],
          ),
          Row(
            children: [
              Text(
                _getFormDueDate(
                  context,
                  scheduled.jobInfo?.expectedStartDate,
                ),
              ),
              const SizedBox(width: 5),
              FormAppIcons.calendarIcon,
            ],
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              children: [
                if (scheduled.instanceInfo != null &&
                    scheduled.jobInfo!.assignedTo ==
                        UserInfoService.instance!.userInfo.name)
                  Expanded(
                    child: _addUndoButton(
                      context,
                      scheduled,
                    ),
                  ),
                if (scheduled.instanceInfo == null &&
                    scheduled.jobInfo!.scheduleItemType != 'WorkOrder' &&
                    ScreenAccess().canDeleteTask(context))
                  Expanded(
                    child: _addDeleteButton(
                      context,
                      scheduled,
                    ),
                  ),
                if (scheduled.instanceInfo == null &&
                    scheduled.jobInfo!.scheduleItemType != 'WorkOrder' &&
                    ScreenAccess().canEditTask(context))
                  Expanded(
                    child: _addEditButton(
                      context,
                      scheduled,
                    ),
                  ),
                if (scheduled.jobInfo!.scheduleItemType != 'WorkOrder' &&
                    ScreenAccess().canCloneTask(context))
                  Expanded(
                    child: _addCloneButton(
                      context,
                      scheduled,
                    ),
                  ),
                if (scheduled.jobInfo!.scheduleItemType != 'WorkOrder' &&
                    ScreenAccess().canCloneTask(context))
                  Expanded(
                    child: _addQuickCloneButton(
                      context,
                      scheduled,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _addUndoButton(
    BuildContext context,
    FormJob job,
  ) {
    return GestureDetector(
      onTap: () async {
        await showConfirmationDialog(
          context: context,
          message:
              '''Are you sure you want to reset job: ${job.jobInfo!.workOrderId}''',
        ).then((value) async {
          if (value ?? false) {
            stateMediator.getBuildContext!.call().pop();
            await controller
                .resetInProgressForm(
              yardCode: yard.yardCode!,
              formInstanceUuid: job.instanceInfo!.uuid!,
            )
                .then((resetInProgressFormResult) {
              if (resetInProgressFormResult) {
                final snackBarSuccess = appSnackBarMessage(
                  stateMediator.getBuildContext!.call().l10n.resetFormSuccess,
                  MessageTypes.success,
                );

                ScaffoldMessenger.of(stateMediator.getBuildContext!.call())
                    .showSnackBar(snackBarSuccess);
              } else {
                final snackBarFailure = appSnackBarMessage(
                  stateMediator.getBuildContext!.call().l10n.resetFormFailed,
                  MessageTypes.error,
                );

                ScaffoldMessenger.of(stateMediator.getBuildContext!.call())
                    .showSnackBar(snackBarFailure);
              }
              controller.loadJobs(yard.yardCode!);

              updateCalendarDataSource();
            });
          }
        });
      },
      child: Column(
        children: [
          const Icon(Icons.undo),
          Text(
            context.l10n.resetForm,
            style: const TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }

  Widget _addDeleteButton(
    BuildContext context,
    FormJob job,
  ) {
    return GestureDetector(
      onTap: () async {
        await showConfirmationDialog(
          context: context,
          message: context.l10n.confirmDeleteScheduleItem,
        ).then((isConfirmed) async {
          if (isConfirmed ?? false) {
            if (context.mounted) {
              context.pop();
            }
            await controller.delete(job.jobInfo!.workOrderId!);
            await controller.loadJobs(yard.yardCode!);

            updateCalendarDataSource();
          }
        });
      },
      child: Column(
        children: [
          const Icon(Icons.delete),
          Text(
            context.l10n.delete,
            style: const TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }

  Widget _addEditButton(
    BuildContext context,
    FormJob job,
  ) {
    return GestureDetector(
      onTap: () async {
        context.pop();
        final parameter = _getTaskParameter(job);
        await context.pushNamed<String?>(
          FormsRoutingName.createWorkOrder,
          queryParams: {'isEdit': 'true'},
          extra: parameter,
        );
        await controller.loadJobs(yard.yardCode!);

        updateCalendarDataSource();
      },
      child: Column(
        children: [
          const Icon(Icons.edit),
          Text(
            context.l10n.edit,
            style: const TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }

  Widget _addCloneButton(
    BuildContext context,
    FormJob job,
  ) {
    return GestureDetector(
      onTap: () async {
        final parameter = _getTaskParameter(job);
        await context
            .pushNamed<String?>(
          FormsRoutingName.createWorkOrder,
          extra: parameter,
        )
            .then((value) async {
          if (context.mounted) {
            context.pop();
          }
          await controller.loadJobs(yard.yardCode!);

          updateCalendarDataSource();
        });
      },
      child: const Column(
        children: [
          Icon(Icons.copy_all_outlined),
          Text(
            'Clone',
            style: TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }

  Widget _addQuickCloneButton(
    BuildContext context,
    FormJob job,
  ) {
    return GestureDetector(
      onTap: () async {
        context.pop();
        await controller.cloneJob(formJob: job).then((response) async {
          ScaffoldMessenger.of(stateMediator.getBuildContext!.call())
              .showSnackBar(
            response == null
                ? appSnackBarMessage(
                    'Error while cloning the work order',
                    MessageTypes.error,
                  )
                : appSnackBarMessage(
                    '''$response${stateMediator.getBuildContext!.call().l10n.scheduleTaskCreated}''',
                    MessageTypes.success,
                  ),
          );

          await controller.loadJobs(yard.yardCode!);

          updateCalendarDataSource();
        });
      },
      child: const Column(
        children: [
          Icon(Icons.copy),
          Text(
            'Quick Clone',
            style: TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }

  bool _checkIsFormOverdue(DateTime dueDate) {
    var jobIsOverDue = false;

    final dueDateCompare = DateTime(dueDate.year, dueDate.month, dueDate.day);
    final today = DateTime.now().toUtc();
    final todayCompare = DateTime(today.year, today.month, today.day);
    if (dueDateCompare.isBefore(todayCompare)) {
      jobIsOverDue = true;
    }
    return jobIsOverDue;
  }

  String _getFormDueDate(
    BuildContext context,
    DateTime? formCompletionDueDate,
  ) {
    if (formCompletionDueDate == null) {
      return '';
    }

    final activeLocale = Localizations.localeOf(context);
    final formattedDate = DateFormat.yMd(activeLocale.toString())
        .format(formCompletionDueDate.toLocal());

    return context.l10n.dueDateText + formattedDate;
  }

  Future<void> _onStartPressed(
    BuildContext context,
    FormJob scheduled,
  ) async {
    context.pop();

    if ((scheduled.jobInfo?.assignedTo?.isNotEmpty ?? false) &&
        UserInfoService.instance!.userInfo.name !=
            scheduled.jobInfo!.assignedTo) {
      final msg = 'Job is allocated to ${scheduled.jobInfo!.assignedTo}';
      final snackBar = appSnackBarMessage(msg, MessageTypes.information);
      ScaffoldMessenger.of(stateMediator.getBuildContext!.call())
          .showSnackBar(snackBar);
      return;
    }

    /// if the job is not assigned to the user, on start assign to current user.
    if (scheduled.jobInfo?.assignedTo == null) {
      await controller
          .assignWorkOrderToUser(
        AssignWorkOrderToUserRequest(
          yardCode: yard.yardCode!,
          assignedTo: UserInfoService.instance!.userInfo.id,
          assignedBy: UserInfoService.instance!.userInfo.name,
          assignedTypeId: 1,
          workOrders: [scheduled.jobInfo!.workOrderId!],
          inProgressFormInstances: [],
          teamId: scheduled.jobInfo?.assignedToTeamId,
        ),
      )
          .then((value) async {
        await _navigate(
          stateMediator.getBuildContext!.call(),
          scheduled,
          false,
        );
      });
    } else {
      await _navigate(
        stateMediator.getBuildContext!.call(),
        scheduled,
        false,
      );
    }
  }

  Future<void> _navigate(
    BuildContext context,
    FormJob scheduled,
    bool isPreview,
  ) async {
    await _userPreferencesRepository.getTerritory().then((territoryCode) async {
      if (context.mounted) {
        await context.pushNamed(
          FormsRoutingName.jobPage,
          queryParams: {
            'scheduledItemId': scheduled.jobInfo!.uuid,
            'templateId': scheduled.jobInfo!.template!.id,
            'jobData': jsonEncode(
              InstanceJobData(
                assetCode: scheduled.jobInfo!.asset?.assetCode ?? '',
                depotNo: scheduled.jobInfo!.asset?.depotNo ?? '',
                jobType: scheduled.jobInfo!.jobType ?? '',
                territoryCode: territoryCode,
                workOrderId: scheduled.jobInfo!.workOrderId!,
                workOrderDescription: scheduled.jobInfo!.workOrderDescription!,
              ),
            ),
            'isPreview': isPreview.toString(),
            'isDigitalSignatureRequired': isDigitalSignatureNeeded(
              isDigitalSignatureRequiredForJob:
                  scheduled.jobInfo!.isDigitalSignatureRequired ?? false,
              isDigitalSignatureRequiredForTemplate:
                  scheduled.jobInfo!.template?.isDigitalSignatureRequired ??
                      false,
            ).toString(),
            'emailsToNotify': scheduled.jobInfo!.template?.emailIds,
          },
        ).then((value) async {
          await controller.loadJobs(yard.yardCode!);

          updateCalendarDataSource();

          // await _reloadFromSqlDb(context);
        });
      }
    });
  }

  Future<void> _onContinuePressed(
    BuildContext context,
    FormJob instance,
    bool isPreview,
  ) async {
    context.pop();

    if (!isPreview &&
        UserInfoService.instance!.userInfo.name !=
            instance.jobInfo!.assignedTo) {
      final msg = 'Job already started by ${instance.jobInfo!.assignedTo}';
      final snackBar = appSnackBarMessage(msg, MessageTypes.information);
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      return;
    }

    await _userPreferencesRepository.getTerritory().then((territoryCode) async {
      if (context.mounted) {
        await context.pushNamed(
          FormsRoutingName.jobPage,
          queryParams: {
            'scheduledItemId': instance.jobInfo!.uuid,
            'instanceId': instance.instanceInfo!.uuid,
            'jobData': jsonEncode(
              InstanceJobData(
                assetCode: instance.jobInfo!.asset?.assetCode ?? '',
                depotNo: instance.jobInfo!.depotNo ?? '',
                jobType: instance.jobInfo!.jobType ?? '',
                territoryCode: territoryCode,
                workOrderId: instance.jobInfo!.workOrderId!,
                workOrderDescription: instance.jobInfo!.workOrderDescription!,
              ),
            ),
            'isPreview': isPreview.toString(),
            'isDigitalSignatureRequired': isDigitalSignatureNeeded(
              isDigitalSignatureRequiredForJob:
                  instance.jobInfo!.isDigitalSignatureRequired ?? false,
              isDigitalSignatureRequiredForTemplate:
                  instance.jobInfo!.template?.isDigitalSignatureRequired ??
                      false,
            ).toString(),
            'emailsToNotify': instance.jobInfo!.template?.emailIds,
          },
        ).then((value) async {
          await controller.loadJobs(yard.yardCode!);

          updateCalendarDataSource();

          // await _reloadFromSqlDb(context);
        });
      }
    });
  }

  bool isDigitalSignatureNeeded({
    required bool isDigitalSignatureRequiredForTemplate,
    required bool isDigitalSignatureRequiredForJob,
  }) {
    if (isDigitalSignatureRequiredForJob ||
        isDigitalSignatureRequiredForTemplate) {
      return true;
    }

    if (InformJobs.preference?.isDigitalSignForWorkOrdersEnabled == null ||
        InformJobs.yardDetails?.yardCode == null) {
      return false;
    }

    return InformJobs.preference!.isDigitalSignForWorkOrdersEnabled!
        .getValue(InformJobs.yardDetails!.yardCode!);
  }

  CloneTaskParameter _getTaskParameter(FormJob scheduled) => CloneTaskParameter(
        templateId: scheduled.jobInfo!.template!.templateId!,
        templateName: scheduled.jobInfo!.template!.title!,
        templateReferenceId: scheduled.jobInfo!.template!.referenceId!,
        yardCode: scheduled.jobInfo!.yardCode!,
        depotNo: scheduled.jobInfo!.depotNo!,
        assetCode: scheduled.jobInfo!.asset!.assetCode == 'NONE'
            ? ''
            : scheduled.jobInfo!.asset!.assetCode,
        description: scheduled.jobInfo!.workOrderDescription!,
        isDigitalSignatureRequiredByTask:
            scheduled.jobInfo?.isDigitalSignatureRequired ?? false,
        isDigitalSignatureRequiredByTemplate:
            scheduled.jobInfo!.template?.isDigitalSignatureRequired ?? false,
        workOrderId: scheduled.jobInfo!.workOrderId,
        assignedTo: scheduled.jobInfo!.assignedTo,
        notes: scheduled.jobInfo?.notes,
        jobPriority:
            CommonUtility.getJobPriority(scheduled.jobInfo!.jobPriority),
      );

  /// Update the events in the calendar and agenda views. This should be called
  /// whenever [controller.dataSource] is updated.
  void updateCalendarDataSource() {
    calendarController.events.value = controller.dataSource;

    agendaController.events.value = controller.dataSource
        .where(
          (event) => event.start.dateOnly == controller.selectedDate?.dateOnly,
        )
        .toList();
  }
}
