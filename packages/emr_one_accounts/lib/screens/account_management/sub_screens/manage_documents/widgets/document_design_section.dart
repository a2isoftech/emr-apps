import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class DocumentDesignSection extends StatelessWidget {
  const DocumentDesignSection({required this.controller, super.key});

  final ManageDocumentsController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DocumentTypesSection(controller: controller),
        const SizedBox(height: Insets.gutter),
        ValueListenableBuilder<KeyValuePair<Enum$IdentificationType, String>?>(
          valueListenable: controller.selectedDocumentType,
          builder: (_, selectedType, ___) {
            return controller.shouldShowDocumentSubType
                ? EmrPickerFormField<
                    KeyValuePair<Enum$IdentificationSubType, String>
                  >(
                    key: ValueKey(selectedType?.key),
                    labelText: context.l10n.documentSubType,
                    items: (String _) =>
                    controller.documentSubTypes('',context),
                    itemTitleText: (item) => item.value,
                    binding: controller.selectedDocumentSubType,
                    validator: Validators.required,
                  )
                : const SizedBox.shrink();
          },
        ),
        const SizedBox(height: Insets.gutter),
        _DocumentFilePicker(controller: controller),
        const SizedBox(height: Insets.gutter),
        DocumentPreviewSection(controller: controller),
        const SizedBox(height: Insets.gutter),
        ExtractedInformationSection(controller: controller),
      ],
    );
  }
}

class _DocumentFilePicker extends StatelessWidget {
  const _DocumentFilePicker({required this.controller});

  final ManageDocumentsController controller;

  @override
  Widget build(BuildContext context) {
    return EmrFilePickerFormField(
      labelText: context.l10n.uploadDocument,
      binding: controller.pickedFile,
      extensions: const [
        ...EmrFilePickerFormFieldFileExtensions.pictures,
        ...EmrFilePickerFormFieldFileExtensions.pdf,
      ],
      validator: (value) {
        if (value != null && value.isNotEmpty) return null;
        if (controller.isEditMode &&
            controller.existingDocumentSasUrl.value != null) {
          return null;
        }
        return Validators.required(value);
      },
    );
  }
}
