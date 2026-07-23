import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/jobs/job_delay.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/delay_widget.dart';
import 'package:flutter/material.dart';

class DelayManagementWidget extends StatelessWidget {
  const DelayManagementWidget({
    required this.delayNotifier,
    required this.onAddDelay,
    required this.onRemoveDelay,
    required this.onUpdateDelay,
    required this.delayReasons,
    super.key,
  });

  final ValueNotifier<List<JobDelay>?> delayNotifier;
  final void Function() onAddDelay;
  final void Function(int) onRemoveDelay;
  final void Function(int, JobDelay) onUpdateDelay;
  final List<ListDetails> delayReasons;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<JobDelay>?>(
      valueListenable: delayNotifier,
      builder: (context, events, child) {
        final activeDelays = (events ?? <JobDelay>[])
            .where((delay) => delay.active)
            .toList();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  context.l10n.delays,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                FilledButton(
                  onPressed: onAddDelay,
                  child: Text(context.l10n.addDelay),
                ),
              ],
            ),
            const SizedBox(height: Insets.gutter),
            if (activeDelays.isEmpty)
              Padding(
                padding: const EdgeInsets.all(16),
                child: Center(child: Text(context.l10n.noDataFound)),
              )
            else
              ...activeDelays.asMap().entries.map((entry) {
                final index = entry.key;
                return JobDelayWidget(
                  key: ValueKey(index),
                  index: index,
                  onUpdate: (updatedDelay) =>
                      onUpdateDelay(index, updatedDelay),
                  onRemove: () => onRemoveDelay(index),
                  delayReasons: delayReasons,
                  delay: activeDelays[index],
                );
              }),
          ],
        );
      },
    );
  }
}
