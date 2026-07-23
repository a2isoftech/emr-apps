import 'package:emr_one_inform/allocate_user/models/allocate_user_job.dart';
import 'package:emr_one_inform/allocate_user/views/allocate_user_to_jobs_common.dart';
import 'package:emr_one_inform/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class AllocateUserToJobsWeb extends AllocateUserToJobsCommon {
  AllocateUserToJobsWeb({super.key});

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
    List<AllocateUserJob> inprogress,
  ) {
    return ResponsiveGridRow(
      children: inprogress
          .map(
            (job) => ResponsiveGridCol(
              xl: 4,
              md: 6,
              child: jobCell(
                context: context,
                job: job,
              ),
            ),
          )
          .toList(),
    );
  }

  @override
  Widget showScheduledJobs(
    BuildContext context,
    List<AllocateUserJob> scheduled,
  ) {
    return ResponsiveGridRow(
      children: scheduled
          .map(
            (job) => ResponsiveGridCol(
              xl: 4,
              md: 6,
              child: jobCell(
                context: context,
                job: job,
              ),
            ),
          )
          .toList(),
    );
  }
}
