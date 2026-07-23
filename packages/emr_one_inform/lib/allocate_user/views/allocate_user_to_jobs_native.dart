import 'package:emr_one_inform/allocate_user/models/allocate_user_job.dart';
import 'package:emr_one_inform/allocate_user/views/allocate_user_to_jobs_common.dart';
import 'package:emr_one_inform/widgets/widgets_export.dart';
import 'package:flutter/material.dart';

class AllocateUserToJobsNative extends AllocateUserToJobsCommon {
  AllocateUserToJobsNative({
    super.key,
  });

  @override
  Widget? pageHeader(BuildContext context) => null;

  @override
  Widget showInProgressJobs(
    BuildContext context,
    List<AllocateUserJob> inprogress,
  ) {
    return ListView.separated(
      itemCount: inprogress.length,
      itemBuilder: (ctx, idx) {
        final job = inprogress[idx];
        return jobCell(job: job, context: ctx);
      },
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (ctx, idx) => listViewDivider(),
      shrinkWrap: true,
    );
  }

  @override
  Widget showScheduledJobs(
    BuildContext context,
    List<AllocateUserJob> scheduled,
  ) {
    return ListView.separated(
      itemCount: scheduled.length,
      itemBuilder: (ctx, idx) {
        final job = scheduled[idx];
        return jobCell(job: job, context: ctx);
      },
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (ctx, idx) => listViewDivider(),
      shrinkWrap: true,
    );
  }
}
