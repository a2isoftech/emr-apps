import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:signals/signals_flutter.dart';

class EmrCalendarMonthView extends StatelessWidget {
  /// Display a monthly calendar.
  const EmrCalendarMonthView({
    required this.controller,
    super.key,
  });

  final EmrCalendarMonthViewController controller;

  static const int daysInWeek = 7;

  static const int rowsInCalendar = 6;

  @override
  Widget build(BuildContext context) {
    final emrCalendarTheme = Theme.of(context).extension<EmrCalendarTheme>()!;

    final locale = Localizations.localeOf(context);
    final headerText = DateFormat.yMMMM(locale.toString())
        .format(controller.visibleMonth.watch(context));

    final shortWeekdays =
        DateFormat(null, locale.toString()).dateSymbols.SHORTWEEKDAYS;

    final daysOfWeek = [
      shortWeekdays[1],
      shortWeekdays[2],
      shortWeekdays[3],
      shortWeekdays[4],
      shortWeekdays[5],
      shortWeekdays[6],
      shortWeekdays[0],
    ];

    return MultiProvider(
      providers: [
        Provider<EmrCalendarViewController>(create: (context) => controller),
        Provider<EmrCalendarMonthViewController>(
          create: (context) => controller,
        ),
      ],
      child: Column(
        children: [
          // Header row which allows the user to navigate between months.
          Row(
            children: [
              IconButton(
                onPressed: controller.previousMonth,
                icon: const Icon(Icons.navigate_before_rounded),
              ),
              IconButton(
                onPressed: controller.nextMonth,
                icon: const Icon(Icons.navigate_next_rounded),
              ),
              Text(
                headerText,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          // Days of the week.
          Row(
            children: [
              for (final day in daysOfWeek)
                Expanded(
                  child: Text(
                    day,
                    textAlign: TextAlign.center,
                  ),
                ),
            ],
          ),
          // Calendar days.
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final cellWidth = constraints.maxWidth / daysInWeek;
                final cellHeight =
                    controller.displayMode == EmrCalendarDisplayMode.compact
                        ? emrCalendarTheme.monthViewCompactCellHeight
                        : (constraints.maxHeight / rowsInCalendar).clamp(
                            emrCalendarTheme.monthViewCellMinimumHeight,
                            double.infinity,
                          );

                return SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      for (var row = 0; row < rowsInCalendar; row++)
                        Row(
                          children: [
                            for (var column = 0; column < daysInWeek; column++)
                              SizedBox(
                                width: cellWidth,
                                height: cellHeight,
                                child: EmrCalendarMonthViewCell(
                                  date: _dateForCell(row, column),
                                  visibleMonth: controller.visibleMonth.value,
                                  isSelected: _dateForCell(row, column) ==
                                      controller.selectedDate.watch(context),
                                ),
                              ),
                          ],
                        ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  DateTime _dateForCell(int row, int column) {
    final firstOfMonthIndex = controller.visibleMonth.value.weekday - 1;

    return controller.visibleMonth.value.add(
      Duration(
        days: (row * daysInWeek) + column - firstOfMonthIndex,
      ),
    );
  }
}
