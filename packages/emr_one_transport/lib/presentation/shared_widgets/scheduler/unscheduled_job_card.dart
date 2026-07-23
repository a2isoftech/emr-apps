import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/core/routing/routing_path.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/scheduler/unscheduled_job.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/overflow_text.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/job_type_box.dart';
import 'package:flutter/material.dart';

class UnscheduledJobCard extends StatelessWidget {
  const UnscheduledJobCard({required this.unscheduledJob, super.key});
  final UnscheduledJob unscheduledJob;
  @override
  Widget build(BuildContext context) {
    const cardWidth = Insets.gutter * 17;
    return Container(
      padding: const EdgeInsets.all(Insets.gutter / 2),
      width: cardWidth,
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.light
            ? Theme.of(context).cardTheme.color
            : TransportAppColors.darkBg,
        border: Border.all(color: Theme.of(context).colorScheme.onSurface),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: Insets.gutter / 4,
        children: [
          Row(
            children: [
              JobTypeBox(jobType: jobTypeFromApiValue(unscheduledJob.jobType)),
              const SizedBox(width: Insets.gutter / 3),
              if (unscheduledJob.jobNumber != null)
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      context.goNamed(
                        RoutingPathName.jobTracking,
                        params: {
                          StringConstants.jobid: '${unscheduledJob.jobNumber}',
                        },
                      );
                    },
                    child: Text(
                      '${unscheduledJob.jobNumber}',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: TransportAppColors.inProgressJobColor,
                      ),
                    ),
                  ),
                ),
              const SizedBox(width: Insets.gutter / 3),
              SizedBox(
                width: Insets.gutter * 6,
                child: OverflowText(text: unscheduledJob.customerName),
              ),
              const Spacer(),
              Container(
                width: 50,
                height: 20,
                decoration: BoxDecoration(
                  color: TransportAppColors.inProgressJobColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    unscheduledJob.dispatchYard,
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OverflowText(text: displayFlowType(unscheduledJob.flowType)),
              if (unscheduledJob.dueDate != null)
                OverflowText(
                  text: Constants.dateFormat.format(unscheduledJob.dueDate!),
                ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: Insets.gutter * 15,
                child: OverflowText(text: unscheduledJob.endLocationAddress),
              ),
            ],
          ),
          if (unscheduledJob.planNumber != null) ...[
            OverflowText(
              text: '${context.l10n.haulier} : ${unscheduledJob.haulierName}',
            ),
            Row(
              children: [
                Text(
                  '${unscheduledJob.planNumber}',
                  style: Theme.of(
                    context,
                  ).textTheme.labelSmall!.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: Insets.gutter),
                OverflowText(text: 'Loads: ${unscheduledJob.loadsRemaining}'),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
