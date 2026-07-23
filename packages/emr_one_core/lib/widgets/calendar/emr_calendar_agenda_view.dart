import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:signals/signals_flutter.dart';

class EmrCalendarAgendaView extends StatelessWidget {
  /// A view that displays a list of events for a selected date.
  const EmrCalendarAgendaView({
    required this.controller,
    super.key,
    this.innerPadding,
  });

  /// The controller for the agenda view.
  final EmrCalendarAgendaViewController controller;

  /// Padding that is applied to the scrollable content of the agenda view.
  final EdgeInsetsGeometry? innerPadding;

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context);
    final shortWeekdays =
        DateFormat(null, locale.toString()).dateSymbols.SHORTWEEKDAYS;
    final weekday = controller.selectedDate.watch(context).weekday;
    final dayOfWeek = shortWeekdays[weekday == 7 ? 0 : weekday];
    final theme = Theme.of(context);
    final emrCalendarTheme = Theme.of(context).extension<EmrCalendarTheme>()!;

    const itemPadding = EdgeInsets.only(
      top: Insets.gutter,
      right: Insets.gutter / 2,
    );

    return MultiProvider(
      providers: [
        Provider<EmrCalendarViewController>(create: (context) => controller),
        Provider<EmrCalendarAgendaViewController>(
          create: (context) => controller,
        ),
      ],
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // A column showing the selected day and date.
          SizedBox(
            width: emrCalendarTheme.agendaViewDateColumnWidth,
            child: Column(
              children: [
                const SizedBox(height: Insets.gutter),
                Text(
                  dayOfWeek,
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  controller.selectedDate.watch(context).day.toString(),
                  style: theme.textTheme.displaySmall,
                ),
              ],
            ),
          ),
          // A scrollable list of events for the selected day.
          Expanded(
            child: SingleChildScrollView(
              padding: innerPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  for (final event in controller.events.value)
                    Padding(
                      padding: itemPadding,
                      child: EmrCalendarEventItem(event: event),
                    ),
                  // When there aren't any events for the selected day,
                  // we display a message.
                  if (controller.events.value.isEmpty)
                    Padding(
                      padding: itemPadding,
                      child: EmrCalendarEventItem(
                        event: EmrCalendarEvent(
                          context.l10n.noEvents,
                          controller.selectedDate.value,
                          colour: theme.colorScheme.surfaceContainerHighest,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
