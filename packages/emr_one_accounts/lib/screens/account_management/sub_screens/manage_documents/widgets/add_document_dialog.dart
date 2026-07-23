import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class AddDocumentDialog extends StatelessWidget {
  const AddDocumentDialog({required this.controller, super.key});

  final ManageDocumentsController controller;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: SizedBox(
      width: MediaQuery.of(context).size.width * 0.65,
      child: Theme(
        data: Theme.of(context).copyWith(
          inputDecorationTheme: Theme.of(context).inputDecorationTheme
              .copyWith(filled: true, fillColor:
              Theme.of(context).colorScheme.surface),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: Insets.gutter),
            EmrPickerFormField<Contact>(
              labelText: context.l10n.contact,
              items: controller.contactItems,
              itemTitleText: (item) =>
                  '${item.firstName ?? ''} ${item.lastName ?? ''}'.trim(),
              binding: controller.selectedContact,
              enabled: ValueNotifier<bool>(!controller.isEditMode),
              validator: Validators.required,
            ),
            const SizedBox(height: Insets.gutter),
            DocumentDesignSection(controller: controller),
          ],
        ),
      ),
    ),
    );
  }
}
