import 'package:collection/collection.dart';
import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signals/signals_flutter.dart';

class EmrCalendarMonthViewCell extends StatefulWidget {
  /// Display a single day in an [EmrCalendarMonthView].
  const EmrCalendarMonthViewCell({
    required this.date,
    required this.visibleMonth,
    super.key,
    this.isSelected = false,
  });

  final DateTime date;

  final DateTime visibleMonth;

  final bool isSelected;

  @override
  State<EmrCalendarMonthViewCell> createState() =>
      _EmrCalendarMonthViewCellState();
}

class _EmrCalendarMonthViewCellState extends State<EmrCalendarMonthViewCell> {
  late final Signal<bool> _isHighlighted = signal(false);

  @override
  Widget build(BuildContext context) {
    final dateIsInCurrentMonth =
        (widget.date.month == widget.visibleMonth.month);

    final theme = Theme.of(context);
    final emrCalendarTheme = Theme.of(context).extension<EmrCalendarTheme>()!;

    if (!dateIsInCurrentMonth) {
      return DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            width: emrCalendarTheme.monthViewCellBorderWidth,
            color: theme.dividerColor,
          ),
          color: theme.colorScheme.surfaceContainerHighest.withAlpha(102),
        ),
      );
    }

    final calendarController = context.read<EmrCalendarMonthViewController>();
    final dayEvents = calendarController.events.value
        .where((event) {
          return event.start.dateOnly == widget.date.dateOnly;
        })
        .sortedBy((event) => event.start)
        .toList();

    final dateTextPadding =
        calendarController.displayMode == EmrCalendarDisplayMode.compact
            ? emrCalendarTheme.monthViewCompactDateTextPadding
            : emrCalendarTheme.monthViewDateTextPadding;

    // MouseRegion is used to detect hover events when [displayMode] is [full].
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: calendarController.displayMode == EmrCalendarDisplayMode.full
          ? (event) => _isHighlighted.value = true
          : null,

      onExit: calendarController.displayMode == EmrCalendarDisplayMode.full
          ? (event) => _isHighlighted.value = false
          : null,
      // GestureDetector is used to detect click events.
      child: GestureDetector(
        onTap: () => calendarController.selectedDate.value = widget.date,
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
              // Make the border thicker if the cell is selected or hovered.
              width: (widget.isSelected || _isHighlighted.watch(context))
                  ? emrCalendarTheme.monthViewCellBorderWidthSelected
                  : emrCalendarTheme.monthViewCellBorderWidth,
              // Highlight the cell if it is selected or hovered.
              color: widget.isSelected
                  ? EmrColours.primaryGreen
                  : _isHighlighted.watch(context)
                      ? EmrColours.primaryGreen.withAlpha(128)
                      : theme.dividerColor,
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: calendarController.displayMode ==
                        EmrCalendarDisplayMode.compact
                    ? EdgeInsets.only(top: dateTextPadding)
                    : EdgeInsets.symmetric(vertical: dateTextPadding),
                child: EmrCalendarMonthViewCellDateHeader(
                  date: widget.date,
                  textPadding: EdgeInsets.all(dateTextPadding),
                ),
              ),
              Expanded(
                child: LayoutBuilder(
                  builder: (
                    BuildContext context,
                    BoxConstraints constraints,
                  ) {
                    // Determine how many items will fit in the cell.
                    // When there are too many items, we show
                    // [EmrCalendarEventItems]
                    const itemPadding = EdgeInsets.only(
                      left: 4,
                      right: 4,
                      bottom: 4,
                    );

                    final height = constraints.maxHeight;

                    var eventsToShow = <EmrCalendarEvent<dynamic>>[];
                    var remainingEvents = <EmrCalendarEvent<dynamic>>[];

                    if (calendarController.displayMode ==
                        EmrCalendarDisplayMode.full) {
                      final itemsThatFit = (height /
                              (emrCalendarTheme.monthViewItemHeight +
                                  itemPadding.vertical))
                          .floor();

                      final eventsToShowCount = dayEvents.length > itemsThatFit
                          ? itemsThatFit - 1
                          : itemsThatFit;

                      eventsToShow = dayEvents.take(eventsToShowCount).toList();

                      remainingEvents = dayEvents.sublist(
                        eventsToShow.length,
                      );
                    }

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Full mode lists the event items.
                        if (calendarController.displayMode ==
                            EmrCalendarDisplayMode.full) ...[
                          for (final event in eventsToShow)
                            Padding(
                              padding: itemPadding,
                              child: EmrCalendarEventItem(
                                event: event,
                              ),
                            ),
                          if (remainingEvents.isNotEmpty)
                            Padding(
                              padding: itemPadding,
                              child: EmrCalendarEventItems(
                                events: remainingEvents,
                              ),
                            ),
                        ],
                        // Compact mode show a single item with dots.
                        if (calendarController.displayMode ==
                                EmrCalendarDisplayMode.compact &&
                            dayEvents.isNotEmpty)
                          Padding(
                            padding: EdgeInsets.zero,
                            child: EmrCalendarEventItems(
                              // Show a maximum of 3 events because space
                              // is limited in compact mode.
                              events: dayEvents.take(3).toList(),
                            ),
                          ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
