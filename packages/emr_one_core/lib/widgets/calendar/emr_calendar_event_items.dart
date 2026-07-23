import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EmrCalendarEventItems extends StatelessWidget {
  /// Display a dot for each event in an [EmrCalendarMonthView] cell.
  const EmrCalendarEventItems({
    required this.events,
    super.key,
  });

  final List<EmrCalendarEvent<dynamic>> events;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final emrCalendarTheme = Theme.of(context).extension<EmrCalendarTheme>()!;
    final calendarController = context.read<EmrCalendarMonthViewController>();

    return GestureDetector(
      onTap: calendarController.displayMode == EmrCalendarDisplayMode.full &&
              calendarController.onMoreEventsTapped != null
          ? () => calendarController.onMoreEventsTapped!(events)
          : null,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: calendarController.displayMode == EmrCalendarDisplayMode.full
              ? theme.colorScheme.surfaceContainerHighest
              : null,
          borderRadius:
              BorderRadius.circular(emrCalendarTheme.monthViewItemRadius),
        ),
        child: SizedBox(
          height:
              calendarController.displayMode == EmrCalendarDisplayMode.compact
                  ? emrCalendarTheme.monthViewCompactItemHeight
                  : emrCalendarTheme.monthViewItemHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < events.length; i++)
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: emrCalendarTheme.monthViewItemsDotPadding,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: events[i].colour ?? EmrColours.primaryGreen,
                      shape: BoxShape.circle,
                    ),
                    child: SizedBox(
                      height: emrCalendarTheme.monthViewItemsDotSize,
                      width: emrCalendarTheme.monthViewItemsDotSize,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
