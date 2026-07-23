import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/models/history_timeline_model.dart';
import 'package:emr_one_stock_take/widgets/history_timeline/history_timeline_tile.dart';
import 'package:flutter/material.dart';

class TimelineWidget extends StatelessWidget {
  const TimelineWidget({
    required this.steps,
    super.key,
  });

  final List<HistoryTimelineModel> steps;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(vertical: Insets.gutter / 2),
      itemCount: steps.length,
      itemBuilder: (context, index) {
        final step = steps[index];
        final isFirst = index == 0;
        final isLast = index == steps.length - 1;

        final previousStep = index > 0 ? steps[index - 1] : null;

        final currentDate = step.dateTime?.dateOnly;
        final previousDate = previousStep?.dateTime?.dateOnly;

        final groupHeader = (currentDate != null && currentDate != previousDate)
            ? currentDate.asyMMMd(Localizations.localeOf(context))
            : null;

        return HistoryTimelineTile(
          event: step,
          isFirst: isFirst,
          isLast: isLast,
          groupHeader: groupHeader,
        );
      },
    );
  }
}
