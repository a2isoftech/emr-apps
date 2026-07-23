import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class DateWithTimeWidget extends StatefulWidget {
  const DateWithTimeWidget({
    required this.dateTimeNotifier,
    super.key,
    this.label,
    this.hint,
    this.dateValidator,
    this.timeValidator,
    this.enabled = true,
  });
  final ValueNotifier<DateTime?> dateTimeNotifier;
  final String? label;
  final String? hint;
  final String? Function(String?)? dateValidator;
  final String? Function(String?)? timeValidator;
  final bool enabled;
  @override
  State<DateWithTimeWidget> createState() => _DateWithTimeWidgetState();
}

class _DateWithTimeWidgetState extends State<DateWithTimeWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: EmrDateFormField(
            validator: widget.dateValidator,
            binding: widget.dateTimeNotifier,
            labelText: widget.label ?? '',
            hintText: widget.hint,
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
        ),
        const SizedBox(width: Insets.gutter),
        Expanded(
          child: Localizations.override(
            context: context,
            locale: const Locale('de', 'DE'),
            child: EmrTimeFormField(
              labelText: context.l10n.time,
              hintText: '',
              binding: widget.dateTimeNotifier,
              validator: widget.timeValidator,
              autovalidateMode: AutovalidateMode.onUserInteraction,
            ),
          ),
        ),
      ],
    );
  }
}
