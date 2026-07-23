import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/controllers/common/job_quick_clone_controller.dart';
import 'package:emr_one_transport/data/helpers/string_helper.dart';
import 'package:emr_one_transport/data/models/jobs/job_list.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/loading_indicator.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/build_column_with_control.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QuickCloneJobDialog extends StatefulWidget {
  const QuickCloneJobDialog({
    required this.jobNumber,
    this.jobDetails,
    super.key,
  });

  final JobList? jobDetails;
  final int jobNumber;

  @override
  State<QuickCloneJobDialog> createState() => _QuickCloneJobDialogState();
}

class _QuickCloneJobDialogState extends State<QuickCloneJobDialog> {
  late final JobQuickCloneController controller;
  @override
  void initState() {
    super.initState();

    controller = Provider.of<JobQuickCloneController>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: Consumer<JobQuickCloneController>(
        builder: (context, ctrl, child) {
          return FutureBuilder(
            future: ctrl.initialize(widget.jobNumber, widget.jobDetails),
            builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const SizedBox(
                  height: 520,
                  child: Center(child: LoadingIndicator()),
                );
              } else if (snapshot.hasData) {
                return _buildContent(ctrl);
              }
              return Center(child: Text(context.l10n.noDataFound));
            },
          );
        },
      ),
    );
  }

  Widget _buildContent(JobQuickCloneController cloneController) {
    final job = cloneController.job;
    return Form(
      key: cloneController.formKey,
      child: Column(
        spacing: Insets.gutter,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildColumnWithControl(
            label: '${context.l10n.customer} :',
            isBoldLabel: true,
            control: Text(
              job.customer != null
                  ? '${job.customer!.code} - ${job.customer!.name}'
                  : StringConstants.noData,
              style: Theme.of(context).textTheme.bodyLarge,
              overflow: TextOverflow.visible,
            ),
          ),
          BuildColumnWithControl(
            label: '${context.l10n.startLocation} :',
            isBoldLabel: true,
            control: Text(
              job.startLocation != null
                  ? StringHelper.buildAddress(job.startLocation!)
                  : StringConstants.noData,
              style: Theme.of(context).textTheme.bodyLarge,
              overflow: TextOverflow.visible,
            ),
          ),
          BuildColumnWithControl(
            label: '${context.l10n.endLocation} :',
            isBoldLabel: true,
            control: Text(
              job.endLocation != null
                  ? StringHelper.buildAddress(job.endLocation!)
                  : StringConstants.noData,
              style: Theme.of(context).textTheme.bodyLarge,
              overflow: TextOverflow.visible,
            ),
          ),
          EmrStepperFormField(
            key: GlobalKey(),
            labelText: context.l10n.numberOfJobsToBeCloned,
            binding: cloneController.noOfJobsToCloneNotifier,
            validator: (value) => Validators.join([
              Validators.required(value),
              Validators.integer(
                value,
                min: 1,
                max: Constants.maxContainersAllowed,
              ),
            ]),
          ),
          EmrDateFormField(
            labelText: context.l10n.dueDateLabel,
            binding: cloneController.selectedDueDateNotifier,
            validator: Validators.required,
          ),
          EmrPickerFormField(
            labelText: context.l10n.scheduleForTruckHaulier,
            binding: cloneController.selectedhaulier,
            itemTitleText: StringHelper.buildTruckAndHaulierDisplay,
            items: (query) =>
                cloneController.jobListService.searchTruckHaulierForUser(query),
            itemSubtitleText: (haulier) {
              return StringHelper.getHaulierDisplayType(haulier.haulierType!);
            },
          ),
          ListenableBuilder(
            listenable: cloneController.selectedhaulier,
            builder: (_, __) {
              final enableScheduleDate =
                  cloneController.selectedhaulier.value != null;
              return EmrDateFormField(
                labelText: context.l10n.scheduledDate,
                binding: cloneController.selectedDateNotifier,
                enabled: ValueNotifier(enableScheduleDate),
                validator: validateScheduledDate,
              );
            },
          ),
        ],
      ),
    );
  }

  String? validateScheduledDate(String? value) {
    if (controller.selectedhaulier.value != null) {
      return Validators.required(value);
    }
    return null;
  }
}
