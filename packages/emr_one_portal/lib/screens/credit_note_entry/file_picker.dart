import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UploadCreditNote extends StatefulWidget {
  const UploadCreditNote({
    required this.mandatory,
    super.key,
  });
  final bool mandatory;
  @override
  State<UploadCreditNote> createState() => _UploadCreditNoteState();
}

class _UploadCreditNoteState extends State<UploadCreditNote> {
  late final TextEditingController textEditingController;
  late final CreditNoteEntryController controller;
  @override
  void initState() {
    super.initState();
    controller = Provider.of<CreditNoteEntryController>(context, listen: false);
    textEditingController =
        TextEditingController(text: controller.model.uploadCreditNote);
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  PlatformFile? file;

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
            context.l10n.uploadCreditNoteTitle,
            mandatory: widget.mandatory,
          ),
        ),
        TextFormField(
          key: const Key(PortalStrings.uploadcreditNote),
          decoration:
              InputDecoration(hintText: context.l10n.chooseaFileToUploadHint),
          controller: textEditingController,
          mouseCursor: SystemMouseCursors.click,
          onTap: () async {
            final allowedExtensions = [PortalStrings.pdf];
            final picked = await FilePicker.platform.pickFiles(
              type: FileType.custom,
              allowedExtensions: allowedExtensions,
            );

            if (picked != null) {
              if (allowedExtensions.contains(
                picked.files.first.extension?.toLowerCase() ??
                    PortalStrings.noextension,
              )) {
                controller.newCreditNoteUploadCreditNote(
                  picked.files.first.name,
                  picked.files.first.bytes,
                );
                textEditingController.text = picked.files.first.name;
              } else {
                if (!context.mounted) return;
                controller.showError(
                  context.l10n.invalidFileTypeMessage(
                    ' ${allowedExtensions.join(' , ')}',
                  ),
                );
              }
            }
          },
          readOnly: true,
          validator: (value) => (value ?? '').isEmpty
              ? context.l10n.uploadCreditNoteMessage
              : null,
        ),
      ],
    );
  }
}
