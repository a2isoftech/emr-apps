import 'dart:async';

import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/controllers/controllers.dart';
import 'package:emr_one_core/controllers/emr_one_notification_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/core/permissions/user_permissions.dart';
import 'package:emr_one_transport/core/routing/routing_path.dart';
import 'package:emr_one_transport/data/controllers/common/job_action_controller.dart';
import 'package:emr_one_transport/data/controllers/common/job_quick_clone_controller.dart';
import 'package:emr_one_transport/data/controllers/jobs/job_create_edit_controller.dart';
import 'package:emr_one_transport/data/controllers/scheduler/driver_events_controller.dart';
import 'package:emr_one_transport/data/controllers/scheduler/scheduler_controller.dart';
import 'package:emr_one_transport/data/helpers/navigation_helper.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_job.dart';
import 'package:emr_one_transport/data/services/joblist_service.dart';
import 'package:emr_one_transport/presentation/screens/jobs/edit_or_clone_job.dart';
import 'package:emr_one_transport/presentation/shared_widgets/app_modal.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/error_dialog.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/job_actions_dialogue.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/message_utility.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/success_dialog.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/quick_clone_job_dialog.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/context_menu_wrapper.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/update_driver_events.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class JobSecondaryTap extends StatelessWidget {
  const JobSecondaryTap({
    required this.job,
    required this.child,
    required this.haulierType,
    required this.neighbouringJobs,
    super.key,
  });
  final SchedulerJob job;
  final List<SchedulerJob> neighbouringJobs;
  final HaulierType haulierType;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final jobUnAssignController = Provider.of<JobActionController>(context);

    final schedulerController = Provider.of<SchedulerController>(context);
    final driverEventController = Provider.of<DriverEventController>(context);
    final cloneController = Provider.of<JobQuickCloneController>(context);
    final notificationController = context.read<EmrOneNotificationController>();

    return context.userHasPermission(UserPermissions.jobsWrite)
        ? ContextMenuWrapper<JobContextMenuOptions>(
            onItemSelected: (JobContextMenuOptions option) async {
              try {
                schedulerController.pauseScreenRefresh();
                switch (option) {
                  case JobContextMenuOptions.unassignJob:
                    final isUnAssigned = await EmrDialog.modal<bool?>(
                      context,
                      titleText: context.l10n.unassignJob,
                      builder: (_) =>
                          ChangeNotifierProvider<JobActionController>.value(
                            value: jobUnAssignController,
                            child: JobActionsDialogue(
                              job: job,
                              action: JobContextMenuOptions.unassignJob,
                            ),
                          ),
                      onAccept: () async {
                        final actionResult = await jobUnAssignController
                            .completeTheAction(job);
                        if (!context.mounted) {
                          return;
                        }
                        MessageUtility.handleResult(context, actionResult);
                      },
                    );
                    if (isUnAssigned ?? false == true) {
                      schedulerController.unAssignJob(job, haulierType);
                    }
                  case JobContextMenuOptions.editJob:
                    final isEdited = await showDialog<bool?>(
                      context: context,
                      barrierDismissible: false,
                      builder: (_) => AppModal(
                        height: 800,
                        width: 1500,
                        title: '${context.l10n.editJob} #${job.jobNumber}',
                        content: EditOrCloneJob(
                          jobNumber: job.jobNumber,
                          jobListService: Provider.of<JobListService>(
                            context,
                            listen: false,
                          ),
                          controller: Provider.of<JobCreateEditController>(
                            context,
                            listen: false,
                          ),
                          mode: JobMode.edit,
                          appConfig: Provider.of<AppConfig>(context),
                        ),
                      ),
                    );
                    if (isEdited ?? false) {
                      await schedulerController.fetchAllJobsAndArrangeJobs();
                    }
                  case JobContextMenuOptions.quickCloneJob:
                    await EmrDialog.modal<bool?>(
                      context,
                      titleText: context.l10n.quickCloneJob,
                      builder: (_) => ChangeNotifierProvider.value(
                        value: cloneController,
                        child: QuickCloneJobDialog(jobNumber: job.jobNumber),
                      ),
                      onAccept: () async {
                        final actionResult = await cloneController.quickClone();
                        if (!context.mounted) {
                          return;
                        }

                        switch (actionResult.status) {
                          case ActionStatus.formValidationFailed:
                            return;
                          case ActionStatus.apiSuccess:
                            final jobNumbers =
                                actionResult.data as List<String>;
                            await SuccessAlertWidget.showSuccessDialogWithInfo(
                              context,
                              context.l10n.jobClonedSuccessfully,
                              '${context.l10n.jobNumbersFollowsMsg} :',
                              jobNumbers.join(', '),
                              showCopyIcon: true,
                            );

                          case ActionStatus.apiFailure:
                            await ErrorAlertWidget.showErrorMessage(
                              context,
                              actionResult.errorMessage ??
                                  context.l10n.errorAndTryAgainMsg,
                            );
                            return;
                        }

                        if (context.mounted) {
                          Navigator.of(context).pop(true);
                          await schedulerController
                              .fetchAllJobsAndArrangeJobs();
                        }
                      },
                    );

                  case JobContextMenuOptions.updateDriverEvents:
                    final isUpdated = await EmrDialog.modal<bool?>(
                      context,
                      titleText: context.l10n.updateDriverEvents,
                      builder: (_) => ChangeNotifierProvider.value(
                        value: driverEventController,
                        child: UpdateDriverEvents(job: job),
                      ),
                      onAccept: () async {
                        final actionResult = await driverEventController
                            .updateDriverEvents();
                        if (!context.mounted) return;
                        if (actionResult.status == ActionStatus.apiSuccess) {
                          Navigator.of(context).pop(false);
                          return;
                        } else if (actionResult.status ==
                            ActionStatus.apiFailure) {
                          notificationController.showNotification(
                            EmrOneErrorNotification(
                              title: context.l10n.error,
                              description: actionResult.errorMessage ?? '',
                            ),
                          );
                        }
                      },
                    );

                    if (isUpdated ?? false) {
                      await schedulerController.fetchAllJobsAndArrangeJobs();
                    }
                  case JobContextMenuOptions.deleteJob:
                    final isDeleted = await EmrDialog.modal<bool?>(
                      context,
                      titleText: context.l10n.deleteJob,
                      builder: (_) =>
                          ChangeNotifierProvider<JobActionController>.value(
                            value: jobUnAssignController,
                            child: JobActionsDialogue(
                              job: job,
                              action: JobContextMenuOptions.deleteJob,
                            ),
                          ),
                      onAccept: () async {
                        final actionResult = await jobUnAssignController
                            .completeTheAction(job);
                        if (!context.mounted) return;

                        MessageUtility.handleResult(context, actionResult);
                      },
                    );
                    if (isDeleted ?? false == true) {
                      await schedulerController.fetchAllJobsAndArrangeJobs();
                    }
                  case JobContextMenuOptions.groupWithPrevious:
                    final idx = neighbouringJobs.indexWhere(
                      (j) => j.jobNumber == job.jobNumber,
                    );

                    final prevJob = idx > 0 ? neighbouringJobs[idx - 1] : null;

                    final actionResult = await schedulerController.groupJob(
                      anchorJob: prevJob!,
                      jobToBeGrouped: job,
                    );
                    if (!context.mounted) return;
                    MessageUtility.handleResult(
                      context,
                      actionResult,
                      canGoBack: false,
                    );

                    if (actionResult.status == ActionStatus.apiSuccess) {
                      await schedulerController.fetchAllJobsAndArrangeJobs();
                    }
                  case JobContextMenuOptions.groupWithNext:
                    final idx = neighbouringJobs.indexWhere(
                      (j) => j.jobNumber == job.jobNumber,
                    );

                    final nextJob = idx < neighbouringJobs.length - 1
                        ? neighbouringJobs[idx + 1]
                        : null;
                    final actionResult = await schedulerController.groupJob(
                      anchorJob: nextJob!,
                      jobToBeGrouped: job,
                    );
                    if (!context.mounted) return;

                    MessageUtility.handleResult(
                      context,
                      actionResult,
                      canGoBack: false,
                    );
                    if (actionResult.status == ActionStatus.apiSuccess) {
                      await schedulerController.fetchAllJobsAndArrangeJobs();
                    }
                  case JobContextMenuOptions.startJob:
                    final confirmed = await EmrDialog.modal<bool?>(
                      context,
                      titleText: context.l10n.confirmJobStart,
                      builder: (_) => Padding(
                        padding: const EdgeInsets.only(
                          top: Insets.gutter,
                          right: Insets.gutter * 3,
                          bottom: Insets.gutter,
                        ),
                        child: Text(context.l10n.areYouSureForJobStart),
                      ),
                      acceptLabel: context.l10n.ok,
                      onAccept: () async {
                        context.pop(true);
                      },
                    );

                    if (confirmed ?? false) {
                      final result = await schedulerController.startJob(
                        job,
                        haulierType,
                      );
                      if (result.isSuccess && context.mounted) {
                        unawaited(
                          _showMessage(
                            '${context.l10n.jobHasBeenStarted},'
                            '${job.jobNumber}',
                            MessageBarTypes.success,
                            context,
                          ),
                        );
                      } else if (context.mounted) {
                        unawaited(
                          _showMessage(
                            result.errorMessage,
                            MessageBarTypes.error,
                            context,
                          ),
                        );
                      }
                    }

                  case JobContextMenuOptions.abandonJob:
                    final isAbandoned = await EmrDialog.modal<bool?>(
                      context,
                      titleText: context.l10n.abandonJob,
                      builder: (_) =>
                          ChangeNotifierProvider<JobActionController>.value(
                            value: jobUnAssignController,
                            child: JobActionsDialogue(
                              job: job,
                              action: JobContextMenuOptions.abandonJob,
                            ),
                          ),
                      onAccept: () async {
                        final actionResult = await jobUnAssignController
                            .completeTheAction(job);
                        if (!context.mounted) return;

                        MessageUtility.handleResult(context, actionResult);
                      },
                    );
                    if (isAbandoned ?? false == true) {
                      await schedulerController.fetchAllJobsAndArrangeJobs();
                    }
                  case JobContextMenuOptions.ungroupJob:
                    final actionResult = await schedulerController.ungroupJob(
                      job,
                    );
                    if (!context.mounted) return;

                    MessageUtility.handleResult(
                      context,
                      actionResult,
                      canGoBack: false,
                    );
                    await schedulerController.fetchAllJobsAndArrangeJobs();
                  case JobContextMenuOptions.printDispatchSlip:
                    final actionResult = await schedulerController
                        .printDispatchSlips([job.id]);
                    if (!context.mounted) return;
                    MessageUtility.handleResult(
                      context,
                      actionResult,
                      canGoBack: false,
                    );
                  case JobContextMenuOptions.track:
                    final url = context.namedLocation(
                      RoutingPathName.jobTracking,
                      params: {StringConstants.jobid: '${job.jobNumber}'},
                    );
                    await NavigationHelper.openInNewTab(url);
                }
              } finally {
                schedulerController.resumeScreenRefresh();
              }
            },
            menuItems: getMenuOptionsForThisJob(),
            child: child,
          )
        : child;
  }

  /// Displays an error message if scheduling fails.
  Future<void> _showMessage(
    String message,
    MessageBarTypes messageType,
    BuildContext context,
  ) async {
    final notificationController = context.read<EmrOneNotificationController>();
    if (context.mounted) {
      notificationController.showNotification(
        messageType == MessageBarTypes.success
            ? EmrOneSuccessNotification(
                title: context.l10n.success,
                description: message,
              )
            : EmrOneErrorNotification(
                title: context.l10n.error,
                description: message,
              ),
      );
    }
  }

  //Returns the options which are onlu enabled for the current job
  List<JobContextMenuOptions> getMenuOptionsForThisJob() {
    final masterList = <JobContextMenuOptions>[JobContextMenuOptions.track];

    if (job.jobStatus == StringConstants.abandonedApiValue) {
      return masterList;
    }

    final isJobInScheduledState =
        job.jobStatus == StringConstants.scheduledApiValue;
    if (isJobInScheduledState) {
      masterList.add(JobContextMenuOptions.startJob);

      final idx = neighbouringJobs.indexWhere(
        (j) => j.jobNumber == job.jobNumber,
      );

      final prevJob = idx > 0 ? neighbouringJobs[idx - 1] : null;
      final nextJob = idx < neighbouringJobs.length - 1
          ? neighbouringJobs[idx + 1]
          : null;
      if (job.groupId == null && _canBeGroupedWithPreviousJob(prevJob)) {
        masterList.add(JobContextMenuOptions.groupWithPrevious);
      }

      if (job.groupId == null && _canBeGroupedWithNextJob(nextJob)) {
        masterList.add(JobContextMenuOptions.groupWithNext);
      }
      if (job.groupId != null) {
        masterList.add(JobContextMenuOptions.ungroupJob);
      }
    }

    masterList.add(JobContextMenuOptions.editJob);
    masterList.add(JobContextMenuOptions.updateDriverEvents);
    masterList.add(JobContextMenuOptions.quickCloneJob);
    masterList.add(JobContextMenuOptions.printDispatchSlip);

    if (isJobInScheduledState) {
      masterList.add(JobContextMenuOptions.unassignJob);
    }

    masterList.add(JobContextMenuOptions.abandonJob);

    if (job.jobStatus == StringConstants.pendingApiValue ||
        job.jobStatus == StringConstants.scheduledApiValue) {
      masterList.add(JobContextMenuOptions.deleteJob);
    }

    return masterList;
  }

  /// Returns true if [a] and [b] share the same hour and minute.
  bool _sameHourAndMinute(DateTime a, DateTime b) =>
      a.hour == b.hour && a.minute == b.minute;

  bool _canBeGroupedWithPreviousJob(SchedulerJob? prevJob) {
    if (prevJob?.jobStatus != StringConstants.scheduledApiValue) return false;
    final prevEnd = prevJob!.scheduledDate.add(
      Duration(minutes: prevJob.duration),
    );
    final currStart = job.scheduledDate;
    return _sameHourAndMinute(prevEnd, currStart);
  }

  bool _canBeGroupedWithNextJob(SchedulerJob? nextJob) {
    if (nextJob?.jobStatus != StringConstants.scheduledApiValue) return false;
    final currEnd = job.scheduledDate.add(Duration(minutes: job.duration));
    final nextStart = nextJob!.scheduledDate;
    return _sameHourAndMinute(currEnd, nextStart);
  }
}
