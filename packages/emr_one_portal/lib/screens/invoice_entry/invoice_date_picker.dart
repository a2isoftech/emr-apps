import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class InvoiceDatePicker extends StatefulWidget {
  const InvoiceDatePicker({
    required this.controller,
    required this.invoiceValidator,
    super.key,
  });

  final InvoiceEntryController controller;
  final InvoiceValidator invoiceValidator;

  @override
  State<InvoiceDatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<InvoiceDatePicker> {
  late final TextEditingController textEditingController;
  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController(
      text: (widget.controller.model.invoiceDate == null
          ? ''
          : DateFormat('dd MMM yyyy').format(
              widget.controller.model.invoiceDate ?? DateTime.now(),
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
        const Padding(
          padding: EdgeInsets.only(
            top: Insets.gutter / 2,
            bottom: Insets.gutter / 4,
          ),
          child: FormLabel(
            'Invoice Date',
            mandatory: true,
          ),
        ),
        TextFormField(
          key: const Key('invoicedate'),
          decoration: const InputDecoration(hintText: ''),
          controller: textEditingController,
          mouseCursor: SystemMouseCursors.click,
          onChanged: (val) {
            widget.controller.newInvoiceDate(DateTime.parse(val));
            textEditingController.text = val;
          },
          onTap: () {
            showDatePicker(
              context: context,
              initialDate:
                  widget.controller.model.invoiceDate ?? DateTime.now(),
              firstDate: DateTime.now().subtract(const Duration(days: 60)),
              lastDate: DateTime(2100),
              cancelText: context.l10n.cancel,
              currentDate: DateTime.now(),
              locale: Localizations.localeOf(context),
            ).then((val) {
              textEditingController.text = DateFormat('dd MMM yyyy').format(
                val ?? DateTime.now(),
              );
              widget.controller.newInvoiceDate(val);
            });
          },
          readOnly: true,
          validator: widget.invoiceValidator.validateInvoiceDate,
        ),
      ],
    );
  }
}
