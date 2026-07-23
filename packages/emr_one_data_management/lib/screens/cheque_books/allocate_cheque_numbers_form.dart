import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/cheque_books/cheque_books_exports.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class AllocateChequeNumbersForm extends StatefulWidget {
  const AllocateChequeNumbersForm({
    required this.formKey,
    required this.model,
    required this.territory,
    required this.remaining,
    super.key,
  });

  final GlobalKey<FormState> formKey;

  final AllocateChequeNumbersFormData model;

  final Territory territory;

  final int remaining;

  @override
  State<AllocateChequeNumbersForm> createState() =>
      _AllocateChequeNumbersFormState();
}

class _AllocateChequeNumbersFormState extends State<AllocateChequeNumbersForm> {
  @override
  Widget build(BuildContext context) {
    const width = 400.0;

    return SizedBox(
      width: width,
      child: Form(
        key: widget.formKey,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: EmrPickerFormField(
                    labelText: context.l10n.yard,
                    items: (query) => context.coreApi.referenceData
                        .yards(query, territories: [widget.territory]),
                    itemTitleText: (item) => item.name,
                    itemSubtitleText: (item) => item.yardCode,
                    binding: widget.model.yard,
                    validator: Validators.required,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                // Without the SizedBox we get overflow errors.
                SizedBox(
                  width: width,
                  child: EmrTextFormField(
                    labelText: context.l10n.numberOfChequesToAllocate,
                    binding: widget.model.blockSize,
                    validator: (value) => Validators.join([
                      Validators.required(value),
                      Validators.integer(value, min: 1, max: widget.remaining),
                    ]),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
