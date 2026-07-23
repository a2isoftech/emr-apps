import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/jobs/driver_event.dart';
import 'package:emr_one_transport/data/services/date_helper.dart';
import 'package:flutter/material.dart';

class SummaryBanner extends StatelessWidget {
  const SummaryBanner({
    required this.plannedDuration,
    required this.delays,
    this.jobStartedAt,
    this.jobEndedAt,
    super.key,
  });

  final Duration plannedDuration;
  final List<DriverEvent> delays;
  final DateTime? jobStartedAt;
  final DateTime? jobEndedAt;
  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();

    final completedDelays = delays
        .where((d) => d.started != null && d.ended != null)
        .toList();

    final ongoingDelays = delays
        .where((d) => d.started != null && d.ended == null)
        .toList();

    final completedDelayDuration = completedDelays.fold<Duration>(
      Duration.zero,
      (total, delay) => total + delay.ended!.difference(delay.started!),
    );

    final ongoingDelayDuration = ongoingDelays.fold<Duration>(
      Duration.zero,
      (total, delay) => total + now.difference(delay.started!),
    );

    final actualDelayDuration = completedDelayDuration + ongoingDelayDuration;

    Duration? totalJobDuration;
    if (jobStartedAt != null) {
      final effectiveJobEnd = jobEndedAt ?? now;
      totalJobDuration = effectiveJobEnd.difference(jobStartedAt!);
    }

    final overJobDuration = totalJobDuration != null
        ? totalJobDuration - plannedDuration
        : Duration.zero;

    final hasOngoingDelay = ongoingDelays.isNotEmpty;
    final isJobPastPlanned =
        totalJobDuration != null && overJobDuration.inMinutes > 0;

    final hasIssue = hasOngoingDelay || isJobPastPlanned;

    final bannerColor = hasIssue
        ? TransportAppColors.delayBanner
        : TransportAppColors.progressBarGreenFg;

    final formattedPlannedDuration = DateHelper.formatDuration(plannedDuration);
    final formattedActualDelayDuration = DateHelper.formatDuration(
      actualDelayDuration,
    );
    final formattedJobDuration = totalJobDuration != null
        ? DateHelper.formatDuration(totalJobDuration)
        : StringConstants.noData;
    final formattedOverDuration = DateHelper.formatDuration(
      overJobDuration.abs(),
    );

    final totalDelayEvents = completedDelays.length + ongoingDelays.length;

    String bannerText;
    if (hasOngoingDelay) {
      bannerText = context.l10n.delayInProgress;
    } else if (isJobPastPlanned) {
      bannerText = context.l10n.overPlannedTime(formattedOverDuration);
    } else {
      bannerText = context.l10n.onTrack;
    }

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(Insets.gutter),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Insets.gutter / 2),
        border: Border.all(color: bannerColor),
        color: bannerColor.withAlpha(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 6,
            height: 56,
            decoration: BoxDecoration(
              color: bannerColor,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          const SizedBox(width: Insets.gutter),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      hasIssue
                          ? Icons.warning_amber_rounded
                          : Icons.check_circle_outline,
                      size: 20,
                      color: bannerColor,
                    ),
                    const SizedBox(width: Insets.gutter / 2),
                    Expanded(
                      child: Text(
                        bannerText,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: Insets.gutter / 2),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: Insets.gutter / 2,
                  runSpacing: Insets.gutter / 4,
                  children: [
                    Text(
                      '${context.l10n.planned}: $formattedPlannedDuration',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text('•'),
                    Text(
                      jobEndedAt != null
                          ? '${context.l10n.actual}: $formattedJobDuration'
                          : '${context.l10n.elapsed}: $formattedJobDuration',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text('•'),
                    Text(
                      '${context.l10n.delay}: $formattedActualDelayDuration',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text('•'),
                    Text(
                      '$totalDelayEvents ${context.l10n.delayEvents}',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    if (ongoingDelays.isNotEmpty) ...[
                      const Text('•'),
                      Text(
                        '${ongoingDelays.length} ${context.l10n.onGoing}',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: bannerColor,
                        ),
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
