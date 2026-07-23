import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_door_access/screens/schedules/add_new/add_new.dart';
import 'package:flutter/material.dart';

class EventCard extends StatefulWidget {
  const EventCard({
    required this.controller,
    required this.event,
    required this.index,
    required this.onRemove,
    super.key,
  });

  final ScheduleEventInput event;
  final int index;
  final VoidCallback onRemove;
  final ManageScheduleController controller;

  @override
  State<EventCard> createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  Future<void> pickDate({required bool isStart}) async {
    final selected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1970),
      lastDate: DateTime(2100),
    );

    if (selected != null) {
      if (isStart) {
        widget.event.startDate = selected;
      } else {
        widget.event.endDate = selected;
      }
      widget.controller.notifyListenersInternal();
    }
  }

  Future<void> pickTime({required bool isStart}) async {
    final selected = await showTimePicker(
      context: context,
      initialTime: const TimeOfDay(hour: 8, minute: 0),
    );

    if (selected != null) {
      if (isStart) {
        widget.event.startTime = selected;
      } else {
        widget.event.endTime = selected;
      }
      widget.controller.notifyListenersInternal();
    }
  }

  final days = ['MO', 'TU', 'WE', 'TH', 'FR', 'SA', 'SU'];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.symmetric(vertical: Insets.gutter / 2),
      child: Padding(
        padding: const EdgeInsets.all(Insets.gutter),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Title + Delete Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Event ${widget.index + 1}',
                  style: theme.textTheme.headlineSmall,
                ),
                IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red),
                  onPressed: widget.onRemove,
                ),
              ],
            ),

            /// Date/Time Row
            Row(
              children: [
                /// Start Date
                Expanded(
                  child: Column(
                    children: [
                      const Text('Start Date'),
                      IconButton(
                        icon: const Icon(Icons.calendar_month),
                        onPressed: () => pickDate(isStart: true),
                        tooltip: 'Pick Start Date',
                      ),
                      Text(
                        widget.event.startDate == null
                            ? 'Not set'
                            : widget.event.startDate!
                                  .toIso8601String()
                                  .substring(0, 10),
                      ),
                    ],
                  ),
                ),

                /// Start Time
                Expanded(
                  child: Column(
                    children: [
                      const Text('Start Time'),
                      IconButton(
                        icon: const Icon(Icons.access_time),
                        onPressed: () => pickTime(isStart: true),
                        tooltip: 'Pick Start Time',
                      ),
                      Text(
                        widget.event.startTime == null
                            ? 'Not set'
                            : widget.event.startTime!.format(context),
                      ),
                    ],
                  ),
                ),

                /// End Date
                Expanded(
                  child: Column(
                    children: [
                      const Text('End Date'),
                      IconButton(
                        icon: const Icon(Icons.calendar_month),
                        onPressed: () => pickDate(isStart: false),
                        tooltip: 'Pick End Date',
                      ),
                      Text(
                        widget.event.endDate == null
                            ? 'Not set'
                            : widget.event.endDate!.toIso8601String().substring(
                                0,
                                10,
                              ),
                      ),
                    ],
                  ),
                ),

                /// End Time
                Expanded(
                  child: Column(
                    children: [
                      const Text('End Time'),
                      IconButton(
                        icon: const Icon(Icons.access_time),
                        onPressed: () => pickTime(isStart: false),
                        tooltip: 'Pick End Time',
                      ),
                      Text(
                        widget.event.endTime == null
                            ? 'Not set'
                            : widget.event.endTime!.format(context),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: Insets.gutter / 2),
            const Text('Days of Week'),

            /// Days Checkbox
            Wrap(
              children: days.map((day) {
                final selected = widget.event.daysOfWeek.contains(day);
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Checkbox(
                      value: selected,
                      onChanged: (v) {
                        if (v ?? false) {
                          widget.event.daysOfWeek.add(day);
                        } else {
                          widget.event.daysOfWeek.remove(day);
                        }
                        widget.controller.notifyListenersInternal();
                      },
                    ),
                    Text(day),
                    const SizedBox(width: Insets.gutter / 2),
                  ],
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
