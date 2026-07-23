import 'package:emr_account_registration/signup.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({
    required this.journeyController,
    required this.uploadedDocumentDetails,
    super.key,
  });
  final JourneyController journeyController;
  final UploadedDocumentDetailsModel? uploadedDocumentDetails;

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  late final TextEditingController textEditingController;

  void get value {}

  @override
  void initState() {
    super.initState();
    widget.journeyController.documentService.ocrDetectedExpirationDate =
        widget.uploadedDocumentDetails?.dateOfExpiration;
    textEditingController = TextEditingController()
      ..text = widget.uploadedDocumentDetails?.dateOfExpiration != null
          ? DateFormat(
              'yyyy-MM-dd',
            ).format(widget.uploadedDocumentDetails!.dateOfExpiration!)
          : '';
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
        TextFormField(
          controller: textEditingController,
          mouseCursor: SystemMouseCursors.click,
          onTap: () {
            showDatePicker(
              context: context,
              initialDate:
                  widget.uploadedDocumentDetails?.dateOfExpiration ??
                  DateTime.now(),
              firstDate: DateTime(1900),
              lastDate: DateTime(9999),
              cancelText: context.l10n.cancel,
              currentDate: DateTime.now(),
              locale: Localizations.localeOf(context),
            ).then((value) {
              widget.journeyController.dataBinding.setDocumentExpiryDate(
                value,
                widget.uploadedDocumentDetails,
              );
              textEditingController.text = value.toString().substring(0, 10);
            });
          },
          readOnly: true,
          validator: (value) => (value ?? '').isEmpty
              ? context.l10n.enterExpiryDate
              : DateTime.parse(value!).isBefore(DateTime.now())
              ? context.l10n.selectFutureDate
              : null,
        ),
      ],
    );
  }
}
