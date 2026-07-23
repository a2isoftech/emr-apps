import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/scheduler/job_base.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_job.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/third_party_job_selection_table.dart';
import 'package:flutter/material.dart';

class ThirdPartyJobGroupDialog extends StatelessWidget {
  const ThirdPartyJobGroupDialog({
    required this.job,
    required this.targetHaulierName,
    required this.time,
    required this.targetHaulierType,
    required this.selectedJobsNotifier,
    required this.formKey,
    super.key,
  });
  final GlobalKey<FormState> formKey;
  final JobBase job;
  final String targetHaulierName;
  final TimeOfDay? time;
  final HaulierType targetHaulierType;
  final ValueNotifier<List<SchedulerJob>> selectedJobsNotifier;

  @override
  Widget build(BuildContext context) {
    // Cast the job to its expected type.
    final jobWrapper = job as ThirdPartyJobGroupWrapper;

    return Form(
      key: formKey,
      child: SizedBox(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Haulier
            Text(
              context.l10n.haulier,
              style: Theme.of(
                context,
              ).textTheme.labelLarge!.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              jobWrapper.thirdPartyJobGroup.haulierName,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(height: Insets.gutter),
            // Job Type
            Text(
              context.l10n.jobType,
              style: Theme.of(
                context,
              ).textTheme.labelLarge!.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              jobWrapper.thirdPartyJobGroup.jobType.toString(),
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(height: Insets.gutter),
            // Assignment target
            Text(
              '${context.l10n.selectJobsToAssignMsg}: '
              '$targetHaulierName',
              style: Theme.of(
                context,
              ).textTheme.labelLarge!.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: Insets.gutter),
            // Job Selection Table
            Container(
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Insets.gutter / 4),
                border: Border.all(color: Theme.of(context).dividerColor),
              ),
              child: ThirdPartyJobSelectionTable(
                data: jobWrapper.thirdPartyJobGroup.scheduledJobs,
                selectedRowsNotifier: selectedJobsNotifier,
              ),
            ),
            const SizedBox(height: Insets.gutter),
            ValueListenableBuilder<List<SchedulerJob>>(
              valueListenable: selectedJobsNotifier,
              builder: (context, selectedJobs, child) {
                return Text(
                  '${context.l10n.selected}: ${selectedJobs.length}',
                  style: Theme.of(
                    context,
                  ).textTheme.labelLarge!.copyWith(fontWeight: FontWeight.bold),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
