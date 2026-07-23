import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/colors.dart';
import 'package:emr_one_inform/models/form_instance.dart';
import 'package:emr_one_inform/models/scheduled_job_form.dart';
import 'package:emr_one_inform/screens/job_search/job_search_common.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class JobSearchWeb extends JobSearchCommon {
  JobSearchWeb({
    required super.filterForUser,
    required super.jobState,
    super.key,
    super.startDate,
    super.endDate,
    super.assetCode,
  });

  @override
  PreferredSizeWidget? getAppBar(BuildContext context) => null;

  @override
  List<Widget> getActions(BuildContext context) {
    return [
      IconButton(
        onPressed: onRefresh,
        icon: Icon(Icons.refresh, color: FormAppColors.white),
      ),
      ...super.getActions(context),
    ];
  }

  @override
  Widget showInProgressJobs(
    BuildContext context,
    List<FormInstance> inProgressUserYardJobs,
  ) {
    return ResponsiveGridRow(
      children: inProgressUserYardJobs.map((instance) {
        final userName = instance.startedBy;
        return ResponsiveGridCol(
          xl: 4,
          md: 6,
          child: jobCell(
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
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget showScheduledJobs(
    BuildContext context,
    List<ScheduledJobForm> newUserYardJobs,
  ) {
    return ResponsiveGridRow(
      children: newUserYardJobs.map((scheduled) {
        return ResponsiveGridCol(
          xl: 4,
          md: 6,
          child: jobCell(
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
          ),
        );
      }).toList(),
    );
  }
}
