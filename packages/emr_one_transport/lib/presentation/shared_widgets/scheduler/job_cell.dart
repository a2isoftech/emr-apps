import 'dart:math' as math;

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/helpers/string_helper.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_job.dart';
import 'package:emr_one_transport/data/models/user_preferences/scheduler_preference.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/percentage_fill_container.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/half_chain_link.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/job_type_box.dart';
import 'package:flutter/material.dart';

class JobCell extends StatelessWidget {
  const JobCell({
    required this.schedulerPreference,
    required this.job,
    required this.groupedJobPosition,
    super.key,
    this.isDragging = false,
  });
  static const double _iconSlotWidth = Constants.fontSizeXL;
  final SchedulerJob job;
  final bool isDragging;
  final GroupedJobPosition groupedJobPosition;
  final SchedulerPreference schedulerPreference;
  @override
  Widget build(BuildContext context) {
    var textColor = Theme.of(context).colorScheme.onSurface;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    if (job.jobStatus == StringConstants.abandonedApiValue) {
      textColor = Colors.white;
      if (isDark) {
        textColor = Colors.black;
      }
    }

    if (job.jobStatus == StringConstants.scheduledApiValue &&
        DateTime.now().isAfter(job.scheduledDate.toLocal()) &&
        isDark) {
      textColor = Colors.black;
    }

    return Opacity(
      opacity: isDragging ? Constants.opacityOfJobCellsWhileDragging : 1,
      child: Material(
        elevation: isDragging ? 10.0 : 0.0,
        child: PercentageFillContainer(
          percentage: _getProgressBarValue(),
          color: _getProgressColor().foreground,
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    _buildLeftLink(),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: Insets.gutter / 4,
                          left: Insets.gutter / 4,
                          right: Insets.gutter / 4,
                        ),
                        child: _buildCellContent(context, textColor),
                      ),
                    ),
                    _buildRightLink(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCellContent(BuildContext context, Color textColor) {
    if (job.duration == 15) {
      return _smallCell(context, textColor);
    } else if (job.duration == 30) {
      return _mediumCell(context, textColor);
    } else {
      return _largeCell(context, textColor);
    }
  }

  Widget _smallCell(BuildContext context, Color jobNumberColor) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildJobType(),
        _buildJobNumberSmall(context, jobNumberColor),
      ],
    );
  }

  Widget _mediumCell(BuildContext context, Color jobNumberColor) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            _buildJobType(),
            Expanded(child: _buildJobNumberSmall(context, jobNumberColor)),
          ],
        ),
        _buildAddress(context, jobNumberColor),
      ],
    );
  }

  Widget _largeCell(BuildContext context, Color textColor) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            _buildJobType(),
            const SizedBox(width: Insets.gutter / 4),
            _buildJobNumber(context, textColor),
            const SizedBox(width: Insets.gutter / 4),
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final icons = _buildIcons();
                  final maxVisibleIcons = math.min(
                    icons.length,
                    (constraints.maxWidth / _iconSlotWidth).floor(),
                  );

                  return Row(
                    children: [
                      Expanded(child: _buildCustomerName(context, textColor)),
                      if (maxVisibleIcons > 0)
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: icons.take(maxVisibleIcons).toList(),
                        ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
        _buildAddress(context, textColor),
      ],
    );
  }

  Widget _buildAddress(BuildContext context, Color textColor) {
    return Text(
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      textAlign: TextAlign.left,
      StringHelper.getUserPreferredDataFromJob(job, schedulerPreference),
      style: Theme.of(context).textTheme.labelMedium!.copyWith(
        color: textColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildLeftLink() {
    if (groupedJobPosition == GroupedJobPosition.middle ||
        groupedJobPosition == GroupedJobPosition.last) {
      return const HalfChainLink();
    } else {
      return const SizedBox.shrink();
    }
  }

  Widget _buildRightLink() {
    return (groupedJobPosition == GroupedJobPosition.middle ||
            groupedJobPosition == GroupedJobPosition.first)
        ? Transform.rotate(angle: math.pi, child: const HalfChainLink())
        : const SizedBox.shrink();
  }

  ColorPair _getProgressColor() {
    final now = DateTime.now();

    final hasStarted = job.startedDateTime != null;
    final hasFinished = job.finishedDateTime != null;

    final isPastScheduledTime = now.isAfter(job.scheduledDate.toLocal());

    final isJobAbandoned = job.jobStatus == StringConstants.abandonedApiValue;

    if (isJobAbandoned) {
      return ColorPair(
        TransportAppColors.abandonedJobCellColor,
        TransportAppColors.whiteTextColor,
      );
    }
    if (hasFinished) {
      return ColorPair(
        TransportAppColors.progressBarGreenFg,
        TransportAppColors.progressBarGreenBg,
      );
    }

    if (!hasStarted && isPastScheduledTime) {
      return ColorPair(
        TransportAppColors.jobPastBg,
        TransportAppColors.jobPastBg,
      );
    }

    if (job.delays != null && job.delays!.isNotEmpty) {
      return ColorPair(
        TransportAppColors.progressBarDelayFg,
        TransportAppColors.progressBarDelayBg,
      );
    }

    if (hasStarted) {
      return ColorPair(
        TransportAppColors.progressBarGreenFg,
        TransportAppColors.progressBarGreenBg,
      );
    }

    return ColorPair(Colors.transparent, Colors.transparent);
  }

  bool isWithinDuration(
    DateTime startDateTime,
    DateTime endDateTime,
    int durationInMinutes,
  ) {
    // Calculate the actual duration between start and end time
    final actualDuration = endDateTime.difference(startDateTime);

    // Convert the given duration from minutes to a Duration object
    final setDuration = Duration(minutes: durationInMinutes);

    // Check if the actual duration is within the set duration
    return actualDuration <= setDuration;
  }

  Widget _buildJobNumber(BuildContext context, Color textColor) {
    return Text(
      textAlign: TextAlign.left,
      maxLines: 1,
      job.jobNumber.toString(),
      style: Theme.of(context).textTheme.labelSmall!.copyWith(
        color: textColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildJobNumberSmall(BuildContext context, Color textColor) {
    return Text(
      textAlign: TextAlign.right,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      job.jobNumber.toString(),
      style: Theme.of(context).textTheme.labelSmall!.copyWith(
        color: textColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Text _buildCustomerName(BuildContext context, Color textColor) {
    return Text(
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      textAlign: TextAlign.left,
      job.customerName,
      style: Theme.of(context).textTheme.labelSmall!.copyWith(
        color: textColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildJobType() {
    return JobTypeBox(jobType: jobTypeFromApiValue(job.jobType));
  }

  List<Widget> _buildIcons() {
    return [
      if (job.isContainerImageProcessingRequired)
        const Icon(
          Icons.flag,
          size: Constants.fontSizeXL,
          color: TransportAppColors.calypso,
        ),
      if (job.driverEvents?.any((e) => e.contains('DELAY')) ?? false)
        const Icon(
          Icons.warning_amber_outlined,
          size: Constants.fontSizeXL,
          color: TransportAppColors.warningColor,
        ),
      if (job.isLocked ?? false)
        const Icon(
          Icons.lock_outline,
          size: Constants.fontSizeXL,
          color: TransportAppColors.timIntervalHourDotColor,
        ),
      if (job.provisionalCost == null ||
          job.provisionalCost!.finalRate == null ||
          job.provisionalCost!.finalRate! <= 0)
        const Icon(
          Icons.attach_money,
          size: Constants.fontSizeXL,
          color: TransportAppColors.warningColor,
        ),
    ];
  }

  double _getProgressBarValue() {
    if (job.jobStatus == StringConstants.scheduledApiValue &&
        DateTime.now().isAfter(job.scheduledDate.toLocal())) {
      return 1;
    }
    if (job.jobStatus == StringConstants.completedApiValue ||
        job.jobStatus == StringConstants.abandonedApiValue) {
      return 1;
    }
    return job.jobProgressPercentage / 100;
  }
}

class ColorPair {
  ColorPair(this.foreground, this.background);
  final Color foreground;
  final Color background;
}
