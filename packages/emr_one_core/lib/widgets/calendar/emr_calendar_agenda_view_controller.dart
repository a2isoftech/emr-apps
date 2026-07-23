import 'package:emr_one_core/emr_one_core.dart';
import 'package:signals/signals.dart';

class EmrCalendarAgendaViewController extends EmrCalendarViewController {
  /// A controller for use with [EmrCalendarAgendaView].
  EmrCalendarAgendaViewController({
    super.onEventTapped,
  });

  /// The currently selected date.
  Signal<DateTime> selectedDate = signal(DateTime.now().dateOnly);

  /// The events to display in the events list.
  Signal<List<EmrCalendarEvent<dynamic>>> events = signal([]);
}
