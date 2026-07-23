import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_core/validators/validators.dart';
import 'package:emr_one_core/widgets/widgets.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CWStartEndSelect extends StatelessWidget {
  const CWStartEndSelect({required this.controller, super.key});

  final ContractController controller;

  @override
  Widget build(BuildContext context) {
    final activeLocale = Localizations.localeOf(context);

    return Column(
      children: [
        FormHeadingRow(
          key: controller.dateSelectKey,
          headings: [
            '${context.l10n.startDate}:',
            '${context.l10n.endDate}:',
          ],
          icons: const [
            Icons.calendar_month,
            Icons.calendar_month,
          ],
        ),
        FormRow(
          children: [
            TextFormField(
              readOnly: true,
              onTap: () async {
                final pickedDate = await showDatePicker(
                  context: context,
                  initialDate: controller.model!.startDate,
                  firstDate: DateTime.now(),
                  lastDate: DateTime(9999),
                );

                controller.setStartDate(
                  pickedDate ?? controller.model!.startDate,
                );

                // Move the end date if it's before the start date.
                if (controller.model!.endDate.millisecondsSinceEpoch <
                    controller.model!.startDate.millisecondsSinceEpoch) {
                  controller.model!.endDate =
                      controller.model!.startDate.add(const Duration(days: 1));
                }
              },
              controller: TextEditingController(
                text: DateFormat.yMd(activeLocale.toString())
                    .format(controller.model!.startDate),
              ),
              validator: Validators.required,
            ),
            TextFormField(
              readOnly: true,
              onTap: () async {
                final pickedDate = await showDatePicker(
                  context: context,
                  initialDate: controller.model!.endDate,
                  firstDate:
                      controller.model!.startDate.add(const Duration(days: 1)),
                  lastDate: DateTime(9999),
                );

                controller.setEndDate(pickedDate ?? controller.model!.endDate);
              },
              controller: TextEditingController(
                text: DateFormat.yMd(activeLocale.toString())
                    .format(controller.model!.endDate),
              ),
              validator: Validators.required,
            ),
          ],
        ),
      ],
    );
  }
}
