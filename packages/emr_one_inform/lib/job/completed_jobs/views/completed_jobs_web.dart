import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/job/completed_jobs/model/completed_job.dart';
import 'package:emr_one_inform/job/completed_jobs/views/completed_jobs_common.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class CompletedJobsWeb extends CompletedJobsCommon {
  CompletedJobsWeb({
    super.filterForUser,
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
  Widget? getActionButton(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => context.pushNamed(FormsRoutingName.mediaSearch),
      icon: const Icon(Icons.perm_media_outlined),
      label: Text(context.l10n.mediaLookup),
    );
  }

  @override
  Widget showJobList(BuildContext context, List<CompletedJob> list) {
    return ResponsiveGridRow(
      children: list
          .map(
            (job) => ResponsiveGridCol(
              xl: 4,
              md: 6,
              child: jobCell(
                context: context,
                title: job.workOrderDescription,
                workOrder: job.workOrderId,
                startedBy: job.startedBy,
                companyCode: job.companyCode,
                assetCode: job.assetCode,
                assetName: job.assetName,
                jobType: job.jobType,
                submittedDate: job.submittedDate,
                job: job,
                jobPriority: job.jobPriority,
                submittedBy: job.submittedBy,
                teamName: job.teamName,
                category: job.category,
              ),
            ),
          )
          .toList(),
    );
  }
}
