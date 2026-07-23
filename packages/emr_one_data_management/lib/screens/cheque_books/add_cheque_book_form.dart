import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/cheque_books/add_cheque_book_form_data.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class AddChequeBookForm extends StatefulWidget {
  const AddChequeBookForm({
    required this.formKey,
    required this.model,
    required this.yard,
    required this.bank,
    super.key,
  });

  final GlobalKey<FormState> formKey;

  final AddChequeBookFormData model;

  final Yard yard;

  final CompanyBankAccount bank;

  @override
  State<AddChequeBookForm> createState() => _AddChequeBookFormState();
}

class _AddChequeBookFormState extends State<AddChequeBookForm> {
  @override
  Widget build(BuildContext context) {
    const width = 400.0;
    final yardName = ValueNotifier<String?>(widget.yard.name);
    final bankCode = ValueNotifier<String?>(widget.bank.code);

    return SizedBox(
      width: width,
      child: Form(
        key: widget.formKey,
        child: Column(
          children: [
            SizedBox(
              width: width,
              child: EmrTextFormField(
                binding: yardName,
                labelText: context.l10n.yard,
                enabled: ValueNotifier<bool>(false),
              ),
            ),
            SizedBox(
              width: width,
              child: EmrTextFormField(
                binding: bankCode,
                labelText: context.l10n.bankCode,
                enabled: ValueNotifier<bool>(false),
              ),
            ),
            SizedBox(
              width: width,
              child: EmrTextFormField(
                labelText: context.l10n.startNumber,
                binding: widget.model.startNumber,
                validator: Validators.required,
              ),
            ),
            SizedBox(
              width: width,
              child: EmrTextFormField(
                labelText: context.l10n.uniqueNumbers,
                binding: widget.model.uniqueNumbers,
                suffix: Tooltip(
                  message: context.l10n.uniqueNumbersToolTip,
                  child: const Icon(Icons.info),
                ),
                validator: Validators.required,
                maxLines: 6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
