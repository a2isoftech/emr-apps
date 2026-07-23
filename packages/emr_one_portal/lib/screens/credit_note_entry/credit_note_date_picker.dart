import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CreditNoteDatePicker extends StatefulWidget {
  const CreditNoteDatePicker({
    required this.controller,
    required this.creditNoteValidator,
    super.key,
  });
  final CreditNoteValidator creditNoteValidator;

  final CreditNoteEntryController controller;

  @override
  State<CreditNoteDatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<CreditNoteDatePicker> {
  late final TextEditingController textEditingController;
  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController(
      text: (widget.controller.model.creditNoteDate == null
          ? ''
          : DateFormat('dd MMM yyyy').format(
              widget.controller.model.creditNoteDate ?? DateTime.now(),
            )),
    );
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: Insets.gutter / 2,
            bottom: Insets.gutter / 4,
          ),
          child: FormLabel(
            context.l10n.creditNoteDate,
            mandatory: true,
          ),
        ),
        TextFormField(
          key: const Key(PortalStrings.creditNotedate),
          decoration: const InputDecoration(hintText: ''),
          controller: textEditingController,
          mouseCursor: SystemMouseCursors.click,
          onChanged: (val) {
            widget.controller.newCreditNoteDate(DateTime.parse(val));
            textEditingController.text = val;
          },
          onTap: () {
            showDatePicker(
              context: context,
              initialDate:
                  widget.controller.model.creditNoteDate ?? DateTime.now(),
              firstDate: DateTime.now().subtract(const Duration(days: 60)),
              lastDate: DateTime(2100),
              cancelText: context.l10n.cancel,
              currentDate: DateTime.now(),
              locale: Localizations.localeOf(context),
            ).then((val) {
              textEditingController.text = DateFormat('dd MMM yyyy').format(
                val ?? DateTime.now(),
              );
              widget.controller.newCreditNoteDate(val);
            });
          },
          readOnly: true,
          validator: widget.creditNoteValidator.validateCreditNoteDate,
        ),
      ],
    );
  }
}
