import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/controllers/jobs/job_schedule_controller.dart';
import 'package:emr_one_transport/data/helpers/string_helper.dart';
import 'package:emr_one_transport/data/models/jobs/job_list.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/build_column_with_control.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QuickScheduleJobDialog extends StatefulWidget {
  const QuickScheduleJobDialog({required this.jobDetails, super.key});

  final JobList jobDetails;

  @override
  State<QuickScheduleJobDialog> createState() => _QuickScheduleJobDialogState();
}

class _QuickScheduleJobDialogState extends State<QuickScheduleJobDialog> {
  @override
  void initState() {
    Provider.of<JobScheduleController>(context, listen: false).jobDetails =
        widget.jobDetails;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final job = widget.jobDetails;
    return SizedBox(
      width: 500,
      child: Consumer<JobScheduleController>(
        builder: (context, controller, child) {
          return Form(
            key: controller.formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BuildColumnWithControl(
                  label: context.l10n.customer,
                  isBoldLabel: true,
                  control: Text(
                    job.customer != null
                        ? '${job.customer!.code} - ${job.customer!.name}'
                        : StringConstants.noData,
                    style: Theme.of(context).textTheme.bodyLarge,
                    overflow: TextOverflow.visible,
                  ),
                ),
                const SizedBox(height: Insets.gutter),
                BuildColumnWithControl(
                  label: context.l10n.startLocation,
                  isBoldLabel: true,
                  control: Text(
                    job.startLocation != null
                        ? StringHelper.buildAddress(job.startLocation!)
                        : StringConstants.noData,
                    style: Theme.of(context).textTheme.bodyLarge,
                    overflow: TextOverflow.visible,
                  ),
                ),
                const SizedBox(height: Insets.gutter),
                BuildColumnWithControl(
                  label: context.l10n.endLocation,
                  isBoldLabel: true,
                  control: Text(
                    job.endLocation != null
                        ? StringHelper.buildAddress(job.endLocation!)
                        : StringConstants.noData,
                    style: Theme.of(context).textTheme.bodyLarge,
                    overflow: TextOverflow.visible,
                  ),
                ),
                const SizedBox(height: Insets.gutter),
                BuildColumnWithControl(
                  label: context.l10n.scheduleForTruckHaulier,
                  isBoldLabel: true,
                  control: EmrPickerFormField(
                    binding: controller.selectedhaulier,
                    itemTitleText: StringHelper.buildTruckAndHaulierDisplay,
                    items: (query) => controller.jobListService
                        .searchTruckHaulierForUser(query),
                    itemSubtitleText: (haulier) {
                      return StringHelper.getHaulierDisplayType(
                        haulier.haulierType!,
                      );
                    },
                    validator: Validators.required,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
