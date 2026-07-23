import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/material.dart';

class ManageScheduleController extends DoorAccessBaseController {
  ManageScheduleController({required this.doorAccessService});

  final DoorAccessService doorAccessService;
  ScheduleInput? _scheduleInput;
  String _accessControllerId = '';

  @override
  void reset() {
    processing = false;
  }

  void notifyListenersInternal() {
    notifyListeners();
  }

  void init(ScheduleInput scheduleInput, String accessControllerId) {
    _accessControllerId = accessControllerId;
    _scheduleInput = scheduleInput;
  }

  void addEvent() {
    _scheduleInput!.events.add(ScheduleEventInput());
    notifyListeners();
  }

  void removeEvent(int index) {
    _scheduleInput!.events.removeAt(index);
    notifyListeners();
  }

  String formatDateTime(DateTime date, TimeOfDay time) {
    // convert time to HH:mm:ss string
    final hh = time.hour.toString().padLeft(2, '0');
    final mm = time.minute.toString().padLeft(2, '0');

    // seconds always appended as :00
    const ss = '00';

    return "${date.year.toString().padLeft(4, '0')}"
        "${date.month.toString().padLeft(2, '0')}"
        "${date.day.toString().padLeft(2, '0')}T"
        '$hh$mm$ss';
  }

  String buildICalendar(ScheduleInput schedule) {
    final buffer = StringBuffer();

    buffer.writeln('BEGIN:VCALENDAR');
    buffer.writeln('PRODID:');
    buffer.writeln('VERSION:2.0');

    for (final ev in schedule.events) {
      // safety checks
      if (ev.startDate == null ||
          ev.startTime == null ||
          ev.endDate == null ||
          ev.endTime == null) {
        continue; // skip incomplete event
      }

      final start = formatDateTime(ev.startDate!, ev.startTime!);
      final end = formatDateTime(ev.endDate!, ev.endTime!);

      buffer.writeln('BEGIN:VEVENT');
      buffer.writeln('DTSTART:$start');
      buffer.writeln('DTEND:$end');

      final byDay = ev.daysOfWeek.join(',');
      buffer.writeln('RRULE:FREQ=WEEKLY;BYDAY=$byDay');
      buffer.writeln('END:VEVENT');
    }

    buffer.writeln('END:VCALENDAR');

    return buffer.toString();
  }

  @override
  Future<(bool, String)> update() async {
    if ((_scheduleInput?.scheduleName ?? '').isEmpty ||
        (_scheduleInput?.token ?? '').isEmpty ||
        (_scheduleInput?.events ?? []).isEmpty) {
      toggleProcessing();
      return (false, 'Invalid schedule data supplied or no events added');
    }

    final ical = buildICalendar(_scheduleInput!);

    final response = await doorAccessService.accessControllersService
        .createSchedule(
          accessControllerId: _accessControllerId,
          definition: ical,
          scheduleName: _scheduleInput!.scheduleName,
          token: _scheduleInput!.token,
        );

    if (response) {
      return (true, '');
    }
    return (false, 'Schedule could not be saved.');
  }
}
