import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/controllers/planner/schedule_plan_controller.dart';
import 'package:emr_one_transport/data/helpers/string_helper.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/plans/schedule_plan.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/job_number_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HaulierScheduleWidget extends StatefulWidget {
  const HaulierScheduleWidget({
    required this.plan,
    required this.controller,
    super.key,
  });

  final SchedulePlan plan;
  final SchedulePlanController controller;

  @override
  State<HaulierScheduleWidget> createState() => HaulierScheduleWidgetState();
}

class HaulierScheduleWidgetState extends State<HaulierScheduleWidget> {
  final ValueNotifier<bool> _isHaulierDeleted = ValueNotifier<bool>(false);

  final Map<int, ValueNotifier<ListDetails?>> _reasonByJobVN = {};
  final Map<int, ValueNotifier<String>> _commentByJobVN = {};
  final ValueNotifier<String?> deleteCommentVN = ValueNotifier<String?>(null);
  final ValueNotifier<int> loadVN = ValueNotifier<int>(1);

  final ValueNotifier<ListDetails?> deleteReasonVN =
      ValueNotifier<ListDetails?>(null);
  // keep listener refs
  final Map<int, VoidCallback> _jobReasonListeners = {};
  final Map<int, VoidCallback> _jobCommentListeners = {};

  late VoidCallback _deleteAllListener;
  final Map<String, List<int>> groupedJobs = {};
  @override
  void initState() {
    super.initState();
    final haulierCode = widget.plan.haulierCode;
    final haulierType = widget.plan.haulierType;
    final controller = widget.controller;

    loadVN.value = widget.plan.loads;
    for (var i = 0; i < widget.plan.jobDetail.length; i++) {
      final detail = widget.plan.jobDetail[i];
      groupedJobs.putIfAbsent(detail.jobStatus, () => []);
      groupedJobs[detail.jobStatus]!.add(detail.jobNumber);
    }
    loadVN.addListener(() {
      controller.onLoadsChanged(haulierCode, haulierType, loadVN.value);
    });

    _deleteAllListener = () => controller.onDeleteAllChanged(
      haulierCode,
      haulierType,
      reason: deleteReasonVN.value,
      comment: deleteCommentVN.value,
    );
    deleteReasonVN.addListener(_deleteAllListener);

    deleteCommentVN.addListener(_deleteAllListener);
  }

  @override
  void dispose() {
    _isHaulierDeleted.dispose();
    // Dispose every ValueNotifier in the map
    for (final vn in _reasonByJobVN.values) {
      vn.dispose();
    }
    _reasonByJobVN.clear();

    // Dispose every ValueNotifier in the map
    for (final vn in _commentByJobVN.values) {
      vn.dispose();
    }
    _commentByJobVN.clear();

    deleteReasonVN.dispose();
    deleteCommentVN.dispose();
    super.dispose();
  }

  int _lockedCount(List<SchedulePlanJobDetail> jobs) =>
      jobs.where((j) => !_isDeletable(j)).length;

  bool _isPending(SchedulePlanJobDetail j) =>
      j.jobStatus == StringConstants.pendingApiValue;

  bool _isScheduled(SchedulePlanJobDetail j) =>
      j.jobStatus == StringConstants.scheduledApiValue;

  bool _isAbandoned(SchedulePlanJobDetail j) =>
      j.jobStatus == StringConstants.abandonedApiValue;

  bool _isDeletable(SchedulePlanJobDetail j) =>
      _isPending(j) || _isScheduled(j) || _isAbandoned(j);

  int _minFeasibleLoads(Iterable<SchedulePlanJobDetail> all) =>
      all.where((j) => !_isDeletable(j)).length;

  int _excessToRemove(int desiredLoads, int totalJobs) =>
      (totalJobs - desiredLoads).clamp(0, 1 << 30);

  List<int> _deletingJobNumbersDesc(int desiredLoads) {
    final jobs = widget.plan.jobDetail;

    final totalJobs = jobs.length;
    final lockedCount = _minFeasibleLoads(jobs);

    // If below floor, return all deletable (best effort)
    if (desiredLoads < lockedCount) {
      final allDeletable = jobs.where(_isDeletable).toList()
        ..sort((a, b) => b.jobNumber.compareTo(a.jobNumber));
      return allDeletable.map((e) => e.jobNumber).toList();
    }

    // Figure out how many must be removed
    final toRemoveTotal = _excessToRemove(desiredLoads, totalJobs);
    if (toRemoveTotal <= 0) return const [];

    // Only consider deletable jobs, sorted newest-first
    final deletable = jobs.where(_isDeletable).toList()
      ..sort((a, b) => b.jobNumber.compareTo(a.jobNumber));

    // Take as many as needed (or as many as available)
    return deletable.take(toRemoveTotal).map((e) => e.jobNumber).toList();
  }

  void _ensurePerJobBindings(Set<int> needed) {
    final code = widget.plan.haulierCode;
    final c = widget.controller;
    final haulierType = widget.plan.haulierType;
    // create missing with listeners
    for (final j in needed) {
      if (!_reasonByJobVN.containsKey(j)) {
        final vn = ValueNotifier<ListDetails?>(null);
        _reasonByJobVN[j] = vn;

        void l() => c.onPerJobChanged(
          code,
          haulierType,
          j,
          reason: vn.value,
          comment: _commentByJobVN[j]?.value,
        );
        _jobReasonListeners[j] = l;
        vn.addListener(l);
      }
      if (!_commentByJobVN.containsKey(j)) {
        final vn = ValueNotifier<String>('');
        _commentByJobVN[j] = vn;

        void l() => c.onPerJobChanged(
          code,
          haulierType,
          j,
          reason: _reasonByJobVN[j]?.value,
          comment: vn.value,
        );
        _jobCommentListeners[j] = l;
        vn.addListener(l);
      }
    }

    // remove obsolete (remove listener first, then dispose)
    final obsolete = _reasonByJobVN.keys
        .where((k) => !needed.contains(k))
        .toList();
    for (final j in obsolete) {
      final rl = _jobReasonListeners.remove(j);
      if (rl != null) _reasonByJobVN[j]?.removeListener(rl);
      _reasonByJobVN[j]?.dispose();
      _reasonByJobVN.remove(j);

      final cl = _jobCommentListeners.remove(j);
      if (cl != null) _commentByJobVN[j]?.removeListener(cl);
      _commentByJobVN[j]?.dispose();
      _commentByJobVN.remove(j);
    }
  }

  @override
  Widget build(BuildContext context) {
    final scheduleDetail = widget.plan;

    //no of jobs locaked,ie cant be deleted
    final lockedJobCount = _lockedCount(scheduleDetail.jobDetail);

    final jobNumbers = scheduleDetail.jobDetail.map((e) => e.jobNumber).toList()
      ..sort((a, b) => b.compareTo(a));

    if (_isHaulierDeleted.value && scheduleDetail.jobDetail.isEmpty) {
      return const SizedBox.shrink();
    }
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        border: Border.all(
          color: TransportAppColors.containersBoxBorderColor,
          width: 2,
        ),
      ),
      margin: const EdgeInsets.only(bottom: Insets.gutter / 2),
      padding: const EdgeInsets.all(Insets.gutter),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      scheduleDetail.haulierCode,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    if (scheduleDetail.haulierName.isNotEmpty)
                      Text(
                        scheduleDetail.haulierName,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    Text(
                      StringHelper.getHaulierDisplayType(
                        scheduleDetail.haulierType,
                      ),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              ValueListenableBuilder(
                valueListenable: _isHaulierDeleted,
                builder: (context, value, child) {
                  if (value) {
                    return const SizedBox();
                  }
                  return Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        EmrStepperFormField(
                          labelText: context.l10n.loads,
                          binding: loadVN,
                          validator: (value) =>
                              Validators.integer(value, min: lockedJobCount),
                        ),
                        FilledButton(
                          style: EmrButtonStyles.danger(),
                          child: Text(context.l10n.removeButtonText),
                          onPressed: () {
                            if (lockedJobCount != 0) {
                              EmrDialog.ok(
                                context,
                                titleText: context.l10n.error,
                                contentText:
                                    context.l10n.jobsInStartedCompletedState,
                              );
                              return;
                            }
                            EmrDialog.cancelOk(
                              context,
                              titleText: context.l10n.confirm,
                              contentText: context.l10n.confirmDeleteHaulier,
                              onOk: () {
                                widget.controller.onLoadsChanged(
                                  scheduleDetail.haulierCode,
                                  scheduleDetail.haulierType,
                                  0,
                                );
                                widget.controller.onDeleteAllChanged(
                                  scheduleDetail.haulierCode,
                                  scheduleDetail.haulierType,
                                  deleteAll: true,
                                );
                                setState(() {
                                  _isHaulierDeleted.value = true;
                                });
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
          // Header
          const SizedBox(height: Insets.gutter / 2),

          ValueListenableBuilder<int>(
            valueListenable: loadVN,
            builder: (_, loads, __) {
              final jobsToDelete = _deletingJobNumbersDesc(loads);
              _ensurePerJobBindings(jobsToDelete.toSet());

              if (jobsToDelete.isEmpty || _isHaulierDeleted.value) {
                return const SizedBox.shrink();
              }

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (jobsToDelete.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(top: Insets.gutter / 2),
                      child: Text(
                        context.l10n.theFollowingJobsDeleted,
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: Theme.of(context).colorScheme.error,
                        ),
                      ),
                    ),
                  // one picker + comment per pending job
                  //(highest jobNumber first)
                  for (final jobNo in jobsToDelete) ...[
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Row(
                        spacing: Insets.gutter,
                        children: [
                          Text(
                            textAlign: TextAlign.center,
                            '${context.l10n.job} $jobNo',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),

                          // Reason picker for this job
                          Expanded(
                            child: EmrPickerFormField<ListDetails>(
                              labelText: context.l10n.deleteReason,
                              validator: Validators.required,
                              items: (search) =>
                                  Future.value(widget.controller.deleteReasons),
                              itemTitleText: (item) => item.description ?? '',
                              binding:
                                  _reasonByJobVN[jobNo]!, // ensured by helper
                            ),
                          ),

                          // Comment for this job
                          Expanded(
                            child: ValueListenableBuilder<String>(
                              valueListenable: _commentByJobVN[jobNo]!,
                              builder: (_, comment, __) {
                                return EmrTextFormField(
                                  labelText: context.l10n.deleteComments,
                                  binding: _commentByJobVN[jobNo]!,
                                  validator: (val) {
                                    if (_reasonByJobVN[jobNo]
                                            ?.value
                                            ?.description ==
                                        StringConstants.other) {
                                      return Validators.required(val);
                                    }
                                    return null;
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ],
              );
            },
          ),

          const SizedBox(height: Insets.gutter / 2),

          ValueListenableBuilder<bool>(
            valueListenable: _isHaulierDeleted,
            builder: (_, show, __) {
              if (!show) {
                return const SizedBox.shrink();
              }
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: Insets.gutter / 2,
                    ),
                    child: Text(
                      context.l10n.haulierDeleteHint,
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: EmrPickerFormField<ListDetails>(
                          labelText: context.l10n.deleteReason,
                          validator: Validators.required,
                          items: (search) =>
                              Future.value(widget.controller.deleteReasons),
                          itemTitleText: (item) => item.description ?? '',
                          binding: deleteReasonVN,
                        ),
                      ),
                      const SizedBox(width: Insets.gutter),
                      Expanded(
                        child: ValueListenableBuilder<String?>(
                          valueListenable: deleteCommentVN,
                          builder: (_, comment, __) {
                            return EmrTextFormField(
                              labelText: context.l10n.deleteComments,
                              binding: deleteCommentVN,
                              validator: (val) {
                                if (deleteReasonVN.value?.description ==
                                    StringConstants.other) {
                                  return Validators.required(val);
                                }
                                return null;
                              },
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                ],
              );
            },
          ),
          if (jobNumbers.isNotEmpty)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: groupedJobs.entries.map((entry) {
                final status = entry.key;
                final jobNumbers = entry.value;

                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$status: ',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Wrap(
                      spacing: 4,
                      children: List.generate(
                        jobNumbers.length,
                        (index) => Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            NavigatorText(
                              jobNumber: jobNumbers[index],
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                    color:
                                        TransportAppColors.inProgressJobColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            if (index != jobNumbers.length - 1) const Text(','),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: Insets.gutter / 4),
                      child: Tooltip(
                        message: StringConstants.copyDisplay,
                        child: IconButton(
                          iconSize: Constants.iconSizeS,
                          icon: const Icon(Icons.copy),
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(
                            minHeight: 24,
                            minWidth: 24,
                          ),
                          onPressed: () async {
                            await Clipboard.setData(
                              ClipboardData(text: jobNumbers.join(',')),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
        ],
      ),
    );
  }
}
