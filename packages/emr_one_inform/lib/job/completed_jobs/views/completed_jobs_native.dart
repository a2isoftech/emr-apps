import 'package:emr_one_inform/job/completed_jobs/model/completed_job.dart';
import 'package:emr_one_inform/job/completed_jobs/views/completed_jobs_common.dart';
import 'package:emr_one_inform/widgets/widgets_export.dart';
import 'package:flutter/material.dart';

class CompletedJobsNative extends CompletedJobsCommon {
  CompletedJobsNative({
    super.filterForUser,
    super.key,
    super.startDate,
    super.endDate,
    super.assetCode,
  });

  @override
  Widget? pageHeader(BuildContext context) => null;

  @override
  Widget showJobList(BuildContext context, List<CompletedJob> list) {
    return ListView.separated(
      itemCount: list.length,
      itemBuilder: (ctx, idx) {
        final job = list[idx];
        return jobCell(
          context: context,
          title: job.workOrderDescription,
          workOrder: job.workOrderId,
          startedBy: job.startedBy,
          companyCode: job.companyCode,
          assetCode: job.assetCode,
          jobType: job.jobType,
          submittedDate: job.submittedDate,
          job: job,
          jobPriority: job.jobPriority,
          submittedBy: job.submittedBy,
          teamName: job.teamName,
          category: job.category,
        );
      },
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (ctx, idx) => listViewDivider(),
      shrinkWrap: true,
    );
  }
}
