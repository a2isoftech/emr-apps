import 'package:emr_one_core/widgets/calendar/calendar.dart';
import 'package:flutter/widgets.dart';

abstract class EmrCalendarViewController {
  /// A base controller class for the calendar.
  /// [EmrCalendarMonthViewController] and [EmrCalendarAgendaViewController]
  /// both extend this class.
  EmrCalendarViewController({this.onEventTapped});

  /// A callback that is called when an event is tapped.
  void Function(BuildContext context, EmrCalendarEvent<dynamic> event)?
      onEventTapped;
}
