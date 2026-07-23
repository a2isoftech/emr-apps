import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/scheduler/job_base.dart';
import 'package:flutter/material.dart';

class SchedulePlanDialogue extends StatelessWidget {
  const SchedulePlanDialogue({
    required this.planWrapper,
    required this.numberOfLoadsNotifier,
    required this.formKey,
    super.key,
  });
  final PlanWrapper planWrapper;
  final GlobalKey<FormState> formKey;

  final ValueNotifier<int> numberOfLoadsNotifier;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.l10n.haulier,
            style: Theme.of(
              context,
            ).textTheme.labelLarge!.copyWith(fontWeight: FontWeight.bold),
          ),
          Text(
            '${planWrapper.unscheduledJob.haulierCode}',
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
            jobTypeFromApiValue(planWrapper.unscheduledJob.jobType).toString(),
            style: Theme.of(context).textTheme.labelLarge,
          ),
          const SizedBox(height: Insets.gutter),
          Text(
            context.l10n.endLocation,
            style: Theme.of(
              context,
            ).textTheme.labelLarge!.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 400,
            child: Text(
              planWrapper.unscheduledJob.endLocationAddress,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          const SizedBox(height: Insets.gutter),
          Text(
            'Jobs to schedule',
            style: Theme.of(
              context,
            ).textTheme.labelLarge!.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: Insets.gutter / 3),
          EmrStepperFormField(
            validator: (value) => Validators.join([
              Validators.required(value),
              Validators.integer(
                value,
                min: 1,
                max: planWrapper.unscheduledJob.loadsRemaining,
              ),
            ]),
            binding: numberOfLoadsNotifier,
          ),
        ],
      ),
    );
  }
}
