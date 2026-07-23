import 'package:flutter/material.dart';

class ScheduleEventInput {
  DateTime? startDate;
  TimeOfDay? startTime;
  DateTime? endDate;
  TimeOfDay? endTime;
  List<String> daysOfWeek = [];
}
