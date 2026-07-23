import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/screens/job_search/job_search_common.dart';
import 'package:emr_one_inform/widgets/widgets_export.dart';
import 'package:flutter/material.dart';

class JobSearchNative extends JobSearchCommon {
  JobSearchNative({
    required super.filterForUser,
    required super.jobState,
    super.key,
    super.startDate,
    super.endDate,
    super.assetCode,
  });

  @override
  Widget? pageHeader(BuildContext context) => null;

  @override
  Widget showInProgressJobs(
    BuildContext context,
    List<FormInstance> inProgressUserYardJobs,
  ) {
    return ListView.separated(
      itemCount: inProgressUserYardJobs.length,
      itemBuilder: (BuildContext ctx, int index) {
        final instance = inProgressUserYardJobs[index];
        final userName = instance.startedBy;
        return jobCell(
          context: context,
          title: instance.workOrderDescription,
          assetCode: instance.assetCode,
          assetName: instance.assetName,
          jobTrade: instance.jobTrade,
          jobType: instance.jobType,
          expectedStartDate: instance.startedDate,
          startedBy: userName,
          workOrder: instance.workOrderId,
          instance: instance,
          currentUser: UserInfoService.instance!.userInfo.name,
          assignedTo: instance.assignedTo,
          scheduleItemType: instance.scheduleItemType,
          jobPriority: instance.jobPriority,
          assignedToTeam: instance.assignedToTeam,
          notes: instance.notes,
        );
      },
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (BuildContext context, int index) => listViewDivider(),
      shrinkWrap: true,
    );
  }

  @override
  Widget showScheduledJobs(
    BuildContext context,
    List<ScheduledJobForm> newUserYardJobs,
  ) {
    return ListView.separated(
      itemCount: newUserYardJobs.length,
      itemBuilder: (ctx, idx) {
        final scheduled = newUserYardJobs[idx];
        return jobCell(
          context: context,
          title: scheduled.job?.workOrderDescription,
          assetCode: scheduled.job?.asset?.assetCode,
          assetName: scheduled.job?.asset?.name,
          expectedStartDate: scheduled.job?.expectedStartDate,
          jobTrade: scheduled.job?.jobTrade,
          jobType: scheduled.job?.jobType,
          workOrder: scheduled.job?.workOrderId,
          scheduled: scheduled,
          assignedTo: scheduled.job?.assignedTo,
          scheduleItemType: scheduled.job?.scheduleItemType,
          jobPriority: scheduled.job?.jobPriority,
          assignedToTeam: scheduled.job?.assignedToTeam,
          notes: scheduled.job?.notes,
        );
      },
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (ctx, idx) => listViewDivider(),
      shrinkWrap: true,
    );
  }
}
