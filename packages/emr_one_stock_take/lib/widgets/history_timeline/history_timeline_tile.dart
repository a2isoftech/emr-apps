import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/models/history_timeline_model.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';

class HistoryTimelineTile extends StatelessWidget {
  const HistoryTimelineTile({
    required this.event,
    this.isFirst = false,
    this.isLast = false,
    this.groupHeader,
    super.key,
  });
  final HistoryTimelineModel event;
  final bool isFirst;
  final bool isLast;
  final String? groupHeader;
  static const double firstColumnWidth = 100;
  static const double middleColumnWidth = 20;
  static const double indicatorSize = 20;
  static const double connectorThickness = 2;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(right: Insets.gutter),
      child: Column(
        children: [
          if (groupHeader != null) _buildGroupHeader(context, theme),
          _buildMainRow(context, theme),
          _buildDetails(theme),
        ],
      ),
    );
  }

  // Builds the group header row with date and vertical connector.
  Widget _buildGroupHeader(BuildContext context, ThemeData theme) {
    return TimelineRow(
      first: Text(
        event.dateTime!.asyMMMd(Localizations.localeOf(context)),
        style: theme.textTheme.titleSmall?.copyWith(
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.right,
      ),
      middle: isFirst
          ? null
          : Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: HistoryTimelineTile.connectorThickness,
                height: HistoryTimelineTile.middleColumnWidth,
                color: EmrStatusChip.positiveColor,
              ),
            ),
    );
  }

  // Builds the main row with time, indicator circle, and title.
  Widget _buildMainRow(BuildContext context, ThemeData theme) {
    final eoBrandTheme = Theme.of(context).extension<EOBrandTheme>()!;
    return Padding(
      padding: const EdgeInsetsGeometry.symmetric(vertical: Insets.gutter / 4),
      child: TimelineRow(
        first: Padding(
          padding: const EdgeInsets.only(right: Insets.gutter / 2),
          child: Text(
            event.dateTime?.asTime(Localizations.localeOf(context)) ?? '',
            style: theme.textTheme.labelLarge,
            textAlign: TextAlign.right,
          ),
        ),
        middle: _buildStatusIndicator(theme, eoBrandTheme),
        last: Padding(
          padding: const EdgeInsets.only(left: Insets.gutter / 2),
          child: Text(
            event.title,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.labelLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Color _getColor(ThemeData theme) {
    switch (event.statusType) {
      case StatusType.information:
        return theme.colorScheme.onSurface;
      case StatusType.positive:
        return EmrStatusChip.positiveColor;
      case StatusType.negative:
        return EmrStatusChip.negativeColor;
      case StatusType.warning:
        return EmrStatusChip.warningColor;
    }
  }

  Widget _buildStatusIndicator(ThemeData theme, EOBrandTheme eOBrandTheme) {
    final isCompleted = event.dateTime != null;
    return Container(
      height: HistoryTimelineTile.middleColumnWidth,
      width: HistoryTimelineTile.middleColumnWidth,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isCompleted ? _getColor(theme) : Colors.transparent,
        border: Border.all(
          color: isCompleted ? _getColor(theme) : theme.colorScheme.onSurface,
        ),
      ),
      child: isCompleted
          ? Icon(
              switch (event.statusType) {
                StatusType.information => Icons.circle_outlined,
                StatusType.positive => Icons.check,
                StatusType.negative => Icons.close,
                StatusType.warning => Icons.priority_high,
              },
              size: Insets.gutter,
              color: eOBrandTheme.onCtaColour,
            )
          : null,
    );
  }

  // Builds the subtitle, comments, and vertical connector line.
  Widget _buildDetails(ThemeData theme) {
    final isCompleted = event.dateTime != null;
    return IntrinsicHeight(
      child: TimelineRow(
        middle: !isLast
            ? Center(
                child: Container(
                  width: HistoryTimelineTile.connectorThickness,
                  color: isCompleted
                      ? _getColor(theme)
                      : theme.colorScheme.onSurface,
                ),
              )
            : null,
        last: Padding(
          padding: const EdgeInsets.only(
            left: Insets.gutter / 2,
            bottom: Insets.gutter,
          ),
          child: event.dateTime != null
              ? Column(
                  spacing: Insets.gutter / 2,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if ((event.userName ?? '').isNotEmpty)
                      Text(
                        event.userName!,
                        style: theme.textTheme.bodyMedium,
                      ),
                    if ((event.subtitle ?? '').isNotEmpty)
                      Text(
                        event.subtitle!,
                        style: theme.textTheme.bodyMedium,
                      ),
                    if ((event.comments ?? '').isNotEmpty)
                      Text(
                        event.comments!,
                        style: theme.textTheme.bodyMedium,
                      ),
                  ],
                )
              : const SizedBox(
                  height: Insets.gutter * 2,
                ),
        ),
      ),
    );
  }
}

class TimelineRow extends StatelessWidget {
  const TimelineRow({
    super.key,
    this.first,
    this.middle,
    this.last,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  });
  final Widget? first;
  final Widget? middle;
  final Widget? last;
  final CrossAxisAlignment crossAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        SizedBox(
          width: HistoryTimelineTile.firstColumnWidth,
          child: first,
        ),
        SizedBox(
          width: HistoryTimelineTile.middleColumnWidth,
          child: middle,
        ),
        Expanded(
          child: last ?? const SizedBox.shrink(),
        ),
      ],
    );
  }
}
