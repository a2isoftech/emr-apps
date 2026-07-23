import 'dart:typed_data';

import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';

class DocumentPreviewSection extends StatelessWidget {
  const DocumentPreviewSection({required this.controller, super.key});

  final ManageDocumentsController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ValueListenableBuilder<XFile?>(
          valueListenable: controller.pickedFile,
          builder: (context, file, _) {
            return ValueListenableBuilder<String?>(
              valueListenable: controller.existingDocumentSasUrl,
              builder: (context, existingSasUrl, __) {

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          context.l10n.previewDocument,
                          style: Theme.of(context).textTheme.labelLarge,
                        )
                      ],
                    ),
                    const SizedBox(height: Insets.gutter / 2),
                    EmrTabBarVerticalViewCard(
                      title: context.l10n.previewDocument,
                      maxHeight: Insets.gutter * 15,
                      child: file != null
                          ? Padding(
                              padding: const EdgeInsets.all(Insets.gutter),
                              child: FutureBuilder<List<int>>(
                                future: file.readAsBytes(),
                                builder: (context, snapshot) {
                                  if (snapshot.connectionState !=
                                      ConnectionState.done) {
                                    return const SizedBox(
                                      height: Insets.gutter * 30,
                                      child: Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                    );
                                  }

                                  if (snapshot.data == null ||
                                      snapshot.data!.isEmpty) {
                                    return SizedBox(
                                      height: Insets.gutter * 30,
                                      child: Center(
                                        child: Text(context.l10n.noUploads),
                                      ),
                                    );
                                  }

                                  final extension = file.name
                                      .split('.')
                                      .last
                                      .toLowerCase();
                                  if (extension == 'pdf') {
                                    return const SizedBox(
                                      height: Insets.gutter * 10,
                                      child: Center(
                                        child: Icon(
                                          Icons.picture_as_pdf,
                                          size: Insets.gutter * 4,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    );
                                  }

                                  return SizedBox(
                                    height: Insets.gutter * 10,
                                    width: double.infinity,
                                    child: GestureDetector(
                                      onTap: () => showImageViewer(
                                        context,
                                        MemoryImage(snapshot.data!
                                        as Uint8List),
                                      ),
                                      child: Image.memory(
                                        snapshot.data! as Uint8List,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            )
                          : (existingSasUrl?.isNotEmpty ?? false)
                          ? Padding(
                              padding: const EdgeInsets.all(Insets.gutter),
                              child: SizedBox(
                                height: Insets.gutter * 10,
                                width: double.infinity,
                                child:
                                    (existingSasUrl!.toLowerCase().contains(
                                      '.pdf',
                                    ))
                                    ? const Center(
                                        child: Icon(
                                          Icons.picture_as_pdf,
                                          size: Insets.gutter * 4,
                                          color: Colors.grey,
                                        ),
                                      )
                                    : GestureDetector(
                                        onTap: () => showImageViewer(
                                          context,
                                          NetworkImage(existingSasUrl),
                                        ),
                                        child: Image.network(
                                          existingSasUrl,
                                          fit: BoxFit.contain,
                                          errorBuilder: (_, __, ___) => Center(
                                            child: Text(context.l10n.noUploads),
                                          ),
                                        ),
                                      ),
                              ),
                            )
                          : SizedBox(
                              height: Insets.gutter * 10,
                              width: double.infinity,
                              child: Center(
                                child: Text(context.l10n.noUploads),
                              ),
                            ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ],
    );
  }
}
