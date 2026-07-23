import 'dart:async';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/data/controllers/scheduler/scheduler_controller.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/scheduler/job_base.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_job.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/schedule_plan_dialogue.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/third_party_group_dialogue.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// *****************************************************
// CommonDragTarget Widget and its State
// *****************************************************
class CommonDragTarget extends StatefulWidget {
  const CommonDragTarget({
    required this.child,
    required this.targetHaulierType,
    required this.gapToNextJob,
    super.key,
    this.timeThisCellRepresents,
    this.targetVrm,
    this.targetTruckYard,
    this.targetHaulierCode,
    this.targetHaulierName,
  });

  final Widget child;
  final TimeOfDay? timeThisCellRepresents;
  final HaulierType targetHaulierType;
  final String? targetVrm;
  final String? targetTruckYard;
  final String? targetHaulierCode;
  final String? targetHaulierName;
  final int? gapToNextJob;
  @override
  State<CommonDragTarget> createState() => CommonDragTargetState();
}

class CommonDragTargetState extends State<CommonDragTarget> {
  late SchedulerController controller;

  @override
  void initState() {
    super.initState();
    controller = context.read<SchedulerController>();
  }

  @override
  Widget build(BuildContext context) {
    return DragTarget<JobBase>(
      onWillAcceptWithDetails: (details) => _canAcceptJob(details.data),
      onAcceptWithDetails: (details) async {
        await _handleJobDrop(details.data);
      },
      builder: (context, candidateData, rejectedData) {
        return ColoredBox(
          color: candidateData.isNotEmpty
              ? TransportAppColors.cellAcceptanceColor
              : Theme.of(context).brightness == Brightness.light
              ? TransportAppColors.emptyCellColor
              : Theme.of(context).colorScheme.surface,
          child: widget.child,
        );
      },
    );
  }

  bool _canAcceptJob(JobBase job) {
    if (_isThirdPartyGroup(job)) {
      return _haulierAllowed(job);
    }
    if (_isThirdPartyJob(job)) {
      return _haulierAllowed(job) && _fitsInGap(job);
    }
    // everyone else only needs to fit in the gap
    return _fitsInGap(job);
  }

  bool _isThirdPartyGroup(JobBase job) =>
      job.dragItemType == DragItemType.thirdPartyJobGroup;

  bool _isThirdPartyJob(JobBase job) =>
      job.dragItemType == DragItemType.thirdPartyJob;

  bool _haulierAllowed(JobBase job) {
    final targetCode = widget.targetHaulierCode ?? '';
    return job.fromHaulierCode != targetCode ||
        widget.targetHaulierType != HaulierType.thirdParty;
  }

  bool _fitsInGap(JobBase job) {
    // if either is null, treat as “fits”
    if (job.jobDuration == null || widget.gapToNextJob == null) {
      return true;
    }
    return job.jobDuration! <= widget.gapToNextJob!;
  }

  /// Called when a job is dropped.
  Future<void> _handleJobDrop(JobBase job) async {
    // Ensure that all target properties are updated.
    _initializeFields(job);
    switch (job.dragItemType) {
      // Direct scheduling for these job types.
      case DragItemType.unscheduledJob:
      case DragItemType.internalJob:
      case DragItemType.managedJob:
      case DragItemType.thirdPartyJob:
        await _handleDirectJob(job);
      // For job groups, show the detailed modal.
      case DragItemType.thirdPartyJobGroup:
        await _handleThirdPartyJobGroupDrop(job);
      case DragItemType.plan:
        await _handlePlanDrop(job);
    }
  }

  /// Simple jobs (unscheduled, internal, managed,
  ///  thirdPartyJob, plan) are scheduled directly.
  Future<void> _handleDirectJob(JobBase job) async {
    final response = await controller.scheduleJob(
      job,
      widget.timeThisCellRepresents,
      widget.targetHaulierType,
    );
    if (response != null) {
      await _showErrorMessage(response);
    }
  }

  /// Shows a dialog for third-party job groups.
  Future<void> _handleThirdPartyJobGroupDrop(JobBase job) async {
    final selectedJobsNotifier = ValueNotifier<List<SchedulerJob>>([]);
    final formKey = GlobalKey<FormState>();
    controller.pauseScreenRefresh();
    final isSaved = await EmrDialog.modal<bool>(
      context,
      titleText: context.l10n.rescheduleThirdPartyHaulierJobs,
      builder: (context) => ThirdPartyJobGroupDialog(
        job: job,
        targetHaulierName: widget.targetHaulierName ?? widget.targetVrm ?? '',
        time: widget.timeThisCellRepresents,
        targetHaulierType: widget.targetHaulierType,
        selectedJobsNotifier: selectedJobsNotifier,
        formKey: formKey,
      ),
      onAccept: () async {
        if (formKey.currentState?.validate() ?? false == true) {
          Navigator.of(context).pop(true);
        }
      },
    );
    controller.resumeScreenRefresh();
    if ((isSaved ?? false) && selectedJobsNotifier.value.isNotEmpty) {
      (job as ThirdPartyJobGroupWrapper).jobsToSchedule =
          selectedJobsNotifier.value;

      final response = await controller.scheduleJob(
        job,
        widget.timeThisCellRepresents,
        widget.targetHaulierType,
      );

      if (response != null) {
        await _showErrorMessage(response);
      }
    }
  }

  /// Displays an error message if scheduling fails.
  Future<void> _showErrorMessage(String message) async {
    await EmrModal.showMessageBar(
      context,
      message,
      messageType: MessageBarTypes.error,
    );
  }

  /// Initializes the job with target properties from the widget.
  void _initializeFields(JobBase job) {
    job.targetVrm = widget.targetVrm;
    job.tagetHaulierCode = widget.targetHaulierCode;
    job.targetHaulierName = widget.targetHaulierName;
    job.targetTruckYard = widget.targetTruckYard;
    job.targetHaulierType = widget.targetHaulierType;
  }

  Future<void> _handlePlanDrop(JobBase jobBase) async {
    final numberOfLoadsNotifier = ValueNotifier<int>(1);
    final formKey = GlobalKey<FormState>();
    controller.pauseScreenRefresh();
    await EmrDialog.modal<int?>(
      context,
      titleText: context.l10n.scheduleBulkJobs,
      builder: (context) {
        return SchedulePlanDialogue(
          numberOfLoadsNotifier: numberOfLoadsNotifier,
          formKey: formKey,
          planWrapper: jobBase as PlanWrapper,
        );
      },
      onAccept: () async {
        if (formKey.currentState?.validate() ?? false == true) {
          (jobBase as PlanWrapper).loads = numberOfLoadsNotifier.value;
          final response = await controller.schedulePlan(
            jobBase,
            widget.timeThisCellRepresents,
          );

          if (response != null) {
            unawaited(_showErrorMessage(response));
          }
          if (mounted) Navigator.of(context).pop();
        }
      },
    );
    controller.resumeScreenRefresh();
  }
}
