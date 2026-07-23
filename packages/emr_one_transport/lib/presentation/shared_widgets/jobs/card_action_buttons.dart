import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/core/routing/routing_path.dart';
import 'package:emr_one_transport/data/controllers/common/job_quick_clone_controller.dart';
import 'package:emr_one_transport/data/controllers/jobs/joblist_search_filter_controller.dart';
import 'package:emr_one_transport/data/helpers/navigation_helper.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/jobs/job_list.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/error_dialog.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/success_dialog.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/quick_clone_job_dialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardActionButtons extends StatelessWidget {
  const CardActionButtons({
    required this.job,
    required this.filterController,
    required this.queryLayoutController,
    required this.jobQuickCloneController,
    super.key,
  });

  final JobList job;
  final EmrQueryLayoutController<JobList> queryLayoutController;
  final JobListSearchFilterController filterController;
  final JobQuickCloneController jobQuickCloneController;
  Future<void> quickClone(BuildContext outerContext) async {
    final isCloned = await EmrDialog.modal<bool?>(
      outerContext,
      titleText: outerContext.l10n.quickCloneJob,
      builder: (innerContext) => ChangeNotifierProvider.value(
        value: jobQuickCloneController,
        child: QuickCloneJobDialog(jobNumber: job.jobNumber!),
      ),
      onAccept: () async {
        final actionResult = await jobQuickCloneController.quickClone();
        if (!outerContext.mounted) return;

        switch (actionResult.status) {
          case ActionStatus.formValidationFailed:
            return;
          case ActionStatus.apiSuccess:
            final jobNumbers = actionResult.data as List<String>;
            await SuccessAlertWidget.showSuccessDialogWithInfo(
              outerContext,
              outerContext.l10n.jobClonedSuccessfully,
              '${outerContext.l10n.jobNumbersFollowsMsg} :',
              jobNumbers.join(', '),
              showCopyIcon: true,
            );
          case ActionStatus.apiFailure:
            await ErrorAlertWidget.showErrorMessage(
              outerContext,
              actionResult.errorMessage ??
                  outerContext.l10n.errorAndTryAgainMsg,
            );
            return;
        }
        if (outerContext.mounted) {
          Navigator.of(outerContext).pop(true);
        }
      },
    );
    if (isCloned ?? false) {
      await queryLayoutController.dataSource.refresh();
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Padding(
      padding: const EdgeInsets.only(
        left: Insets.gutter,
        right: Insets.gutter,
        bottom: Insets.gutter,
      ),
      child: Row(
        children: [
          Expanded(
            child: FilledButton(
              onPressed: () => quickClone(context),
              child: Text(
                context.l10n.quickClone,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: isDark ? Colors.black : Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(width: Insets.gutter),
          Expanded(
            child: FilledButton(
              onPressed: () {
                final url = context.namedLocation(
                  RoutingPathName.jobTracking,
                  params: {StringConstants.jobid: '${job.jobNumber}'},
                );
                NavigationHelper.openInNewTab(url);
              },
              child: Text(
                context.l10n.track,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: isDark ? Colors.black : Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
