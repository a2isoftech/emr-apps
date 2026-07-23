import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/time_interval.dart';
import 'package:flutter/material.dart';

class TimeIntervalDot extends StatelessWidget {
  const TimeIntervalDot({
    required this.timeInterval,
    required this.width,
    this.hourDotColor = TransportAppColors
        .timIntervalHourDotColor, // Default color for hour dots
    this.nonHourDotColor = Colors
        .grey, // Default color for non-hour dots // Color for non-hour dots
    this.dotRadius = 3.0,
    super.key,
  });
  final double dotRadius;
  final double width;
  final TimeInterval timeInterval;
  final Color hourDotColor; // Color for hour dots
  final Color nonHourDotColor; // Color for non-hour dots

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 10, // Fixed height for the dot container
      alignment: Alignment.centerLeft,
      child: CircleAvatar(
        radius: dotRadius,
        backgroundColor: timeInterval.isHour ? hourDotColor : nonHourDotColor,
      ),
    );
  }
}
