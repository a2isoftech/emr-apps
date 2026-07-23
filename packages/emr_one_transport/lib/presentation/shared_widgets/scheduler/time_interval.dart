import 'dart:math';

import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/time_interval_dot.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/time_interval_label.dart';
import 'package:flutter/material.dart';

class TimeIntervalWidget extends StatelessWidget {
  const TimeIntervalWidget({
    required this.startTime,
    required this.is24HourFormat,
    this.width = Constants.schedulerCellWidth, // Fixed column width
    this.dotRadius = 3.0, // Uniform dot size
    this.hourDotColor = TransportAppColors
        .timIntervalHourDotColor, // Default color for hour dots
    this.nonHourDotColor = Colors.grey, // Default color for non-hour dots
    this.granularity = const Duration(minutes: 15), // Interval granularity
    super.key,
  });

  final TimeOfDay startTime;
  final bool is24HourFormat;
  final double width; // Fixed column width
  final double dotRadius; // Uniform dot size
  final Color hourDotColor; // Color for hour dots
  final Color nonHourDotColor; // Color for non-hour dots
  final Duration granularity; // Granularity for intervals (default: 15 minutes)

  @override
  Widget build(BuildContext context) {
    final timeIntervals = _generateTimeIntervals(
      startTime: startTime,
      is24HourFormat: is24HourFormat,
    );
    final hourTimeIntervals =
        timeIntervals.where((interval) => interval.isHour).toList();
    return ColoredBox(
      color: TransportAppColors.emptyCellColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: timeIntervals.asMap().entries.map((entry) {
              final colWidth = entry.key == 0 ? width - 3 : width;
              return TimeIntervalDot(
                timeInterval: entry.value,
                width: colWidth,
              );
            }).toList(),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: hourTimeIntervals.asMap().entries.map((entry) {
              return TimeIntervalLabel(
                timeInterval: entry.value,
                width: entry.key == 0 ? (width * 4) - 20 : width * 4,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  List<TimeInterval> _generateTimeIntervals({
    required TimeOfDay startTime,
    required bool is24HourFormat,
  }) {
    final intervals = <TimeInterval>[];

    var currentHour = startTime.hour;
    var currentMinute = startTime.minute;

    for (var i = 0; i < 96; i++) {
      // Generate label for hourly intervals
      var label = '';
      final isHour = currentMinute == 0;

      if (isHour) {
        if (is24HourFormat) {
          label = currentHour < 10 ? '0$currentHour:00' : '$currentHour:00';
        } else {
          final period = currentHour < 12 ? 'AM' : 'PM';
          final formattedHour = currentHour % 12 == 0 ? 12 : currentHour % 12;
          label = '$formattedHour:00 $period';
        }
      }

      // Add the interval
      intervals.add(TimeInterval(isHour: isHour, label: label));

      // Increment time by granularity
      currentMinute += granularity.inMinutes;
      if (currentMinute >= 60) {
        currentMinute %= 60;
        currentHour = (currentHour + 1) % 24;
      }
    }

    return intervals;
  }

  Color getRandomColor() {
    final random = Random();
    return Color.fromARGB(
      255, // Alpha value (255 for fully opaque)
      random.nextInt(256), // Red (0-255)
      random.nextInt(256), // Green (0-255)
      random.nextInt(256), // Blue (0-255)
    );
  }
}

class TimeInterval {
  TimeInterval({required this.isHour, this.label = ''});
  final bool isHour;
  final String label;
}
