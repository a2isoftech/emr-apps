import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/time_interval.dart';
import 'package:flutter/material.dart';

class TimeIntervalLabel extends StatelessWidget {
  const TimeIntervalLabel({
    required this.timeInterval,
    required this.width,
    super.key,
  });
  final double width;
  final TimeInterval timeInterval;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 20, // Fixed height for the label container
      alignment: Alignment.centerLeft,
      child: timeInterval.label.isNotEmpty
          ? Text(
              timeInterval.label,
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: TransportAppColors.darkBg,
                    fontWeight: FontWeight.bold,
                  ),
              textAlign: TextAlign.center,
            )
          : const SizedBox(
              height: 12, // Placeholder for alignment if there's no label
            ),
    );
  }
}
