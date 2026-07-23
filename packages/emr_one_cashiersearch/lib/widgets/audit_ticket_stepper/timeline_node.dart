import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimelineNode extends StatelessWidget {
  const TimelineNode({
    required this.title,
    required this.status,
    this.dateTime,
    this.suggestion,
    super.key,
    this.child,
    this.showConnector = true,
  });

  final String title;
  final TimelineStatus status;
  final DateTime? dateTime;
  final Widget? child;
  final String? suggestion;
  final bool showConnector;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            _icon(),

            if (showConnector)
              Container(width: 2, height: 80, color: Colors.grey.shade300),
          ],
        ),
        const SizedBox(width: Insets.gutter / 2),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(bottom: Insets.gutter),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title, style: Theme.of(context).textTheme.titleMedium),
                    if (dateTime != null)
                      Text(
                        DateFormat.yMEd(
                          Localizations.localeOf(context).toString(),
                        ).add_jms().format(dateTime!),
                      ),
                  ],
                ),
                if (suggestion != null)
                  Text(
                    suggestion!,
                    style: TextStyle(color: Colors.orange.shade800),
                  ),

                if (child != null) ...[
                  const SizedBox(height: Insets.gutter / 2),
                  child!,
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _icon() {
    switch (status) {
      case TimelineStatus.success:
        return const Icon(Icons.check_circle, color: Colors.green, size: 24);
      case TimelineStatus.error:
        return const Icon(Icons.cancel, color: Colors.red, size: 24);
      case TimelineStatus.warning:
        return const Icon(Icons.warning, color: Colors.orange, size: 24);
      case TimelineStatus.pending:
        return const Icon(Icons.hourglass_top, color: Colors.blue, size: 24);
      case TimelineStatus.notStarted:
        return const Icon(
          Icons.radio_button_unchecked,
          color: Colors.grey,
          size: 24,
        );
    }
  }
}
