import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class VCalendarViewer {
  static void show(BuildContext context, String vcalString) {
    final formatted = _formatVCalendar(vcalString);
    showDialog<void>(
      context: context,
      builder: (context) {
        final theme = Theme.of(context);
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Insets.gutter),
          ),
          child: Padding(
            padding: const EdgeInsets.all(Insets.gutter),
            child: SizedBox(
              width: 350,
              height: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('VCALENDAR', style: theme.textTheme.headlineMedium),
                  const SizedBox(height: Insets.gutter),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        padding: const EdgeInsets.all(Insets.gutter),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          formatted,
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: Insets.gutter),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('Close'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Auto-indents BEGIN/END structured VCALENDAR text
  static String _formatVCalendar(String input) {
    final lines = input.replaceAll(r'\r\n', '\n').split('\n');
    final buffer = StringBuffer();
    var indentLevel = 0;
    for (var line in lines) {
      line = line.trim();
      if (line.isEmpty) continue;

      if (line.startsWith('END:')) {
        indentLevel = (indentLevel - 1).clamp(0, 50);
      }

      buffer.writeln("${"  " * indentLevel}$line");

      if (line.startsWith('BEGIN:')) {
        indentLevel++;
      }
    }
    return buffer.toString();
  }
}
