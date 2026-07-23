import 'dart:typed_data';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/models/dropped_file.dart';
import 'package:emr_one_crm/screens/party/widgets/dropzone_widget.dart';
import 'package:flutter/material.dart';

class PartyDocumentIdentificationUploadDropZone extends StatelessWidget {
  const PartyDocumentIdentificationUploadDropZone({
    required this.imageUploadNotifier,
    required this.onFileUpload,
    required this.isFileValid,
    super.key,
  });

  final ValueNotifier<bool> isFileValid;
  final void Function(DroppedFile) onFileUpload;
  final ValueNotifier<Uint8List?> imageUploadNotifier;
  SnackBar failureSnackBar(String message) {
    return SnackBar(
      content: Row(
        children: [
          const Icon(
            Icons.done_outline_rounded,
            color: Colors.white,
            size: 20,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              'Document was not uploaded: $message',
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.red,
      duration: const Duration(seconds: 5),
      behavior: SnackBarBehavior.floating,
    );
  }

  @override
  Widget build(BuildContext context) {
    const errorColor = Color(0xffB00020);
    return Column(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(Insets.gutter),
            child: Column(
              children: [
                Text(
                  context.l10n.imageUpload,
                  style: EmrOneConstants.kTinyHeadingTextStyle,
                ),
                const SizedBox(
                  height: Insets.gutter,
                ),
                Expanded(
                  child: ValueListenableBuilder(
                    valueListenable: isFileValid,
                    builder: (context, value, child) {
                      return DropZoneWidget(
                        imageUploadNotifier: imageUploadNotifier,
                        onDroppedFile: onFileUpload,
                        color: value
                            ? Theme.of(context).colorScheme.onSurface
                            : errorColor,
                        hasError: !value,
                        onError: (errorMessage) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            failureSnackBar(errorMessage),
                          );
                          isFileValid.value = false;
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        ValueListenableBuilder(
          valueListenable: isFileValid,
          builder: (context, value, child) {
            return Container(
              margin: const EdgeInsets.only(
                left: Insets.gutter,
                bottom: Insets.gutter,
              ),
              alignment: Alignment.centerLeft,
              child: Text(
                context.l10n.partyDocumentUploadHint,
                style: TextStyle(
                  color: (value ? Colors.black : errorColor),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
