import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EmrCalendarEventItem extends StatelessWidget {
  /// Display a event in an [EmrCalendarMonthView] or [EmrCalendarAgendaView].
  const EmrCalendarEventItem({
    required this.event,
    super.key,
  });

  final EmrCalendarEvent<dynamic> event;

  @override
  Widget build(BuildContext context) {
    final calendarViewController = context.read<EmrCalendarViewController>();
    final emrCalendarTheme = Theme.of(context).extension<EmrCalendarTheme>()!;

    return GestureDetector(
      onTap: calendarViewController.onEventTapped != null
          ? () => calendarViewController.onEventTapped!(context, event)
          : null,
      child: SizedBox(
        height: calendarViewController is EmrCalendarAgendaViewController
            ? emrCalendarTheme.agendaViewItemHeight
            : emrCalendarTheme.monthViewItemHeight,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: event.colour ?? EmrColours.primaryGreen,
            borderRadius:
                BorderRadius.circular(emrCalendarTheme.monthViewItemRadius),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Insets.gutter / 2),
            child: Row(
              children: [
                Expanded(
                  child: FittedBox(
                    alignment: Alignment.centerLeft,
                    fit: BoxFit.scaleDown,
                    child: Text(event.title),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
