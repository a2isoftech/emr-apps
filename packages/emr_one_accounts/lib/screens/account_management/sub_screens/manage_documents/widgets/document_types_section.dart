import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';


class DocumentTypesSection extends StatelessWidget {
  const DocumentTypesSection({required this.controller, super.key});

  final ManageDocumentsController controller;

  @override
  Widget build(BuildContext context) {
    return EmrPickerFormField<KeyValuePair<Enum$IdentificationType, String>>(
      labelText: context.l10n.documentType,
      items: (String _) => controller.documentTypes('', context),
      itemTitleText: (item) => item.value,
      binding: controller.selectedDocumentType,
      validator: (item) => item == null
          ? context.l10n.selectADocumentType
          : null,
      autovalidateMode: AutovalidateMode.disabled,
      mode: EmrPickerMode.dropdown,
      enabled: ValueNotifier<bool>(!controller.isEditMode),
    );
  }
}
