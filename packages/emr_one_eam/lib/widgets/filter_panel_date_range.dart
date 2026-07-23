import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FilterPanelDateRange extends StatefulWidget {
  const FilterPanelDateRange({
    required this.title,
    required this.min,
    required this.max,
    super.key,
  });

  final String title;
  final int? min;
  final int? max;

  @override
  State<FilterPanelDateRange> createState() => _FilterPanelDateRangeState();
}

class _FilterPanelDateRangeState extends State<FilterPanelDateRange> {
  @override
  Widget build(BuildContext context) {
    final activeLocale = Localizations.localeOf(context);

    final minDate = widget.min == null
        ? null
        : DateFormat.yMd(activeLocale.toString()).format(
            DateTime.fromMillisecondsSinceEpoch(
              widget.min!,
            ),
          );

    final maxDate = widget.max == null
        ? null
        : DateFormat.yMd(activeLocale.toString()).format(
            DateTime.fromMillisecondsSinceEpoch(
              widget.max!,
            ),
          );

    return Column(
      children: [
        Row(
          children: [
            Text(
              widget.title,
              style: EmrOneConstants.kSmallestHeadingTextStyle,
            ),
          ],
        ),
        const SizedBox(height: Insets.gutter / 2),
        Row(
          children: [
            Text(
              '${context.l10n.startDateUppercase}:',
              style: EmrOneConstants.kOpenSans12BoldTextStyle,
            ),
          ],
        ),
        const SizedBox(height: Insets.gutter / 2),
        TextFormField(
          readOnly: true,
          decoration: InputDecoration(
            isDense: true,
            contentPadding: const EdgeInsets.all(2),
            prefixIcon: const Icon(Icons.calendar_month),
            hintText: context.l10n.startDate,
            suffixIcon: IconButton(
              onPressed: () async {
                // widget.controller.setDateRange(
                //   null,
                //   widget.controller.epochMax,
                // );

                setState(() {});
              },
              icon: const Icon(Icons.close),
            ),
          ),
          controller: TextEditingController(
            text: minDate,
          ),
          onTap: () async {
            final pickedDate = await showDatePicker(
              context: context,
              initialDate: widget.min == null
                  ? DateTime.now()
                  : DateTime.fromMillisecondsSinceEpoch(
                      widget.min!,
                    ),
              firstDate: DateTime(2001),
              lastDate: DateTime(9999),
            );

            if (pickedDate != null) {
              // widget.controller.setDateRange(
              //   DateTime.utc(pickedDate.year,
              //pickedDate.month, pickedDate.day)
              //       .millisecondsSinceEpoch,
              //   widget.controller.epochMax,
              // );

              setState(() {});
            }
          },
        ),
        const SizedBox(height: Insets.gutter / 2),
        Row(
          children: [
            Text(
              '${context.l10n.endDateUppercase}:',
              style: EmrOneConstants.kOpenSans12BoldTextStyle,
            ),
          ],
        ),
        const SizedBox(height: Insets.gutter / 2),
        TextFormField(
          readOnly: true,
          decoration: InputDecoration(
            isDense: true,
            contentPadding: const EdgeInsets.all(2),
            hintText: context.l10n.endDate,
            prefixIcon: const Icon(Icons.calendar_month),
            suffixIcon: IconButton(
              onPressed: () async {
                // widget.controller.setDateRange(
                //   widget.controller.epochMin,
                //   null,
                // );

                setState(() {});
              },
              icon: const Icon(Icons.close),
            ),
          ),
          controller: TextEditingController(
            text: maxDate,
          ),
          onTap: () async {
            final pickedDate = await showDatePicker(
              context: context,
              initialDate: widget.max == null
                  ? DateTime.now()
                  : DateTime.fromMillisecondsSinceEpoch(
                      widget.max!,
                    ),
              firstDate: DateTime(2001),
              lastDate: DateTime(9999),
            );

            if (pickedDate != null) {
              // widget.controller.setDateRange(
              //   widget.controller.epochMin,
              //   DateTime.utc(pickedDate.year,
              //pickedDate.month, pickedDate.day)
              //       .millisecondsSinceEpoch,
              // );

              setState(() {});
            }
          },
        ),
        const SizedBox(height: Insets.gutter / 2),
      ],
    );
  }
}
