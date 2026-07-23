import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:emr_one_transport/data/models/scheduler/vor_schedule.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/angled_lines_painter.dart';
import 'package:flutter/material.dart';

class SchedulerVorCell extends StatelessWidget {
  const SchedulerVorCell({required this.vor, super.key});
  final VorSchedule vor;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final textColor = theme.brightness == Brightness.dark
        ? TransportAppColors.whiteTextColor
        : TransportAppColors.greyTextColor;
    final bgColor = theme.brightness == Brightness.dark
        ? TransportAppColors.greyCardBg
        : TransportAppColors.vorCellColor;

    return ColoredBox(
      color: bgColor,
      child: Stack(
        children: [
          Positioned.fill(
            child: CustomPaint(
              painter: AngledLinesPainter(
                strokeAngle: 120,
                strokeColor: TransportAppColors.vorCellStrokeColor,
                strokeGap: Constants.schedulerCellWidth / 3,
                strokeWidth: 3,
              ),
            ),
          ),
          Center(
            child: ColoredBox(
              color: Theme.of(context).colorScheme.surface,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: Insets.gutter / 2,
                ),
                child: Text(
                  vor.reason,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: textColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
