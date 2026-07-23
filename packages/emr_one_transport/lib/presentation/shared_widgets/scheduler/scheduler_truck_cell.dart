import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_truck.dart';
import 'package:emr_one_transport/data/services/job_helper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SchedulerTruckCell extends StatelessWidget {
  const SchedulerTruckCell({required this.truck, super.key});
  final SchedulerTruck truck;
  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(context).brightness == Brightness.dark
        ? Theme.of(context).colorScheme.surface
        : Theme.of(context).colorScheme.onSurface;
    final totalCostOfJobs = JobHelper.getTotalCostOfJobs(truck);
    final totalDuration = JobHelper.getTotalDurtionOfJobs(truck);
    return Container(
      padding: const EdgeInsets.all(Insets.gutter / 8),
      decoration: const BoxDecoration(
        color: TransportAppColors.truckCellColor,
        border: Border(bottom: BorderSide(color: Colors.white)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                spacing: Insets.gutter / 2,
                children: [
                  if (truck.isJobSequenceEnforced)
                    Tooltip(
                      message: context.l10n.enforceJobSequenceToolTip,
                      child: const FaIcon(
                        FontAwesomeIcons.truck,
                        size: Constants.fontSizeM,
                        color: TransportAppColors.redSavina,
                      ),
                    ),
                  Tooltip(
                    message: truck.vrm,
                    child: Text(
                      truck.vrm,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: textColor,
                      ),
                    ),
                  ),
                ],
              ),
              if (totalDuration != '')
                Text(
                  totalDuration,
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: TransportAppColors.greyTextColor,
                  ),
                )
              else
                const SizedBox.shrink(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (truck.driverName != null && truck.driverName != '')
                Flexible(
                  child: Tooltip(
                    message: truck.driverName,
                    child: Text(
                      truck.driverName!,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: textColor,
                      ),
                    ),
                  ),
                )
              else
                const Spacer(),
              if (totalCostOfJobs != '')
                SizedBox(
                  width: 50,
                  child: Text(
                    totalCostOfJobs,
                    textAlign: TextAlign.right,
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: TransportAppColors.greyTextColor,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
