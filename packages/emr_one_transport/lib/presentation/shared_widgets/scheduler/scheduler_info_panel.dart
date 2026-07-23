import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/job_type_box.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SchedulerInfoPanel extends StatelessWidget {
  const SchedulerInfoPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      padding: const EdgeInsets.all(Insets.gutter / 2),
      child: buildJobTypeAbbreviation(context),
    );
  }

  Widget buildJobTypeAbbreviation(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.l10n.jobTypeAbbreviation,
              textAlign: TextAlign.left,
              style: Theme.of(
                context,
              ).textTheme.labelMedium!.copyWith(fontWeight: FontWeight.bold),
            ),
            const Divider(),
            Wrap(
              children: [
                ...JobType.values.map((jobType) {
                  return SizedBox(
                    width: 200,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: Insets.gutter / 4,
                      ),
                      child: Row(
                        spacing: Insets.gutter / 2,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: 45,
                            child: JobTypeBox(jobType: jobType),
                          ),
                          Text(
                            jobType.toString(),
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ],
            ),
            const SizedBox(height: Insets.gutter),
            Text(
              context.l10n.progressBarColor,
              textAlign: TextAlign.left,
              style: Theme.of(
                context,
              ).textTheme.labelMedium!.copyWith(fontWeight: FontWeight.bold),
            ),
            const Divider(),
            Wrap(
              children: [
                SizedBox(
                  width: 400,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: Insets.gutter / 4,
                    ),
                    child: Column(
                      spacing: Insets.gutter / 2,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          spacing: Insets.gutter / 2,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: TransportAppColors.progressBarGreenFg,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              width: 35,
                              height: 15,
                            ),
                            Text(
                              context.l10n.jobExecutionAsExpected,
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                          ],
                        ),
                        Row(
                          spacing: Insets.gutter / 2,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: TransportAppColors.progressBarDelayFg,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              width: 35,
                              height: 15,
                            ),
                            Text(
                              context.l10n.jobHasBeenDelayed,
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                          ],
                        ),
                        Row(
                          spacing: Insets.gutter / 2,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: TransportAppColors.jobPastBg,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              width: 35,
                              height: 15,
                            ),
                            Text(
                              context.l10n.jobPassedScheduledTime,
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: Insets.gutter),
            Text(
              context.l10n.icons,
              textAlign: TextAlign.left,
              style: Theme.of(
                context,
              ).textTheme.labelMedium!.copyWith(fontWeight: FontWeight.bold),
            ),
            const Divider(),
            Column(
              mainAxisSize: MainAxisSize.min,
              spacing: Insets.gutter,
              children: [
                Row(
                  spacing: Insets.gutter / 2,
                  children: [
                    const SizedBox(
                      width: 30,
                      child: Icon(
                        Icons.lock_outline,
                        size: Constants.fontSizeXL,
                        color: TransportAppColors.timIntervalHourDotColor,
                      ),
                    ),
                    Text(
                      context.l10n.lockIconInfoPanel,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
                Row(
                  spacing: Insets.gutter / 2,
                  children: [
                    const SizedBox(
                      width: 30,
                      child: Icon(
                        Icons.warning_amber_outlined,
                        size: Constants.fontSizeXL,
                        color: TransportAppColors.warningColor,
                      ),
                    ),
                    Text(
                      context.l10n.driverAppliedDelay,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
                Row(
                  spacing: Insets.gutter / 2,
                  children: [
                    const SizedBox(
                      width: 30,
                      child: FaIcon(
                        FontAwesomeIcons.truck,
                        size: Constants.fontSizeL,
                        color: TransportAppColors.redSavina,
                      ),
                    ),
                    Text(
                      context.l10n.enforceJobSequenceToolTip,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
                Row(
                  spacing: Insets.gutter / 2,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: Insets.gutter / 4,
                      ),
                      padding: EdgeInsets.zero,
                      width: 22,
                      height: 16,
                      decoration: BoxDecoration(
                        color: TransportAppColors.calypso,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.link,
                          size: Constants.fontSizeXL,
                          color: TransportAppColors.whiteTextColor,
                        ),
                      ),
                    ),
                    Text(
                      context.l10n.jobsAreGrouped,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
                Row(
                  spacing: Insets.gutter / 2,
                  children: [
                    const SizedBox(
                      width: 30,
                      child: Icon(
                        Icons.flag,
                        size: Constants.fontSizeXL,
                        color: TransportAppColors.calypso,
                      ),
                    ),
                    Text(
                      context.l10n.assetNumberUpdateRequired,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
              ],
            ),
            const Divider(),
            const SizedBox(height: Insets.gutter / 2),
          ],
        ),
      ),
    );
  }
}
