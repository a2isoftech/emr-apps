import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExtractedInformationSection extends StatelessWidget {
  const ExtractedInformationSection({required this.controller, super.key});

  final ManageDocumentsController controller;

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context).toString();

    return ValueListenableBuilder<XFile?>(
      valueListenable: controller.pickedFile,
      builder: (context, file, _) {
        return ValueListenableBuilder<String?>(
          valueListenable: controller.existingDocumentSasUrl,
          builder: (context, existingDocumentUrl, __) {
            return ValueListenableBuilder<
              KeyValuePair<Enum$IdentificationType, String>?
            >(
              valueListenable: controller.selectedDocumentType,
              builder: (context, selectedDocumentType, ___) {
                final docType = selectedDocumentType?.key;
                final hasAnyDocument =
                    file != null || (existingDocumentUrl?.isNotEmpty ?? false);
                final hasExtractedPrefill =
                    controller.extractedValidFrom.value != null ||
                    controller.extractedValidTo.value != null ||
                    (controller.extractedIdentificationNumber.value ?? '')
                        .isNotEmpty;
                final shouldShow =
                    (hasAnyDocument || hasExtractedPrefill) &&
                    (docType == Enum$IdentificationType.PHOTO_ID ||
                        docType == Enum$IdentificationType.ADDRESS_ID);

                if (!shouldShow) {
                  return const SizedBox.shrink();
                }

                return ValueListenableBuilder<bool>(
                  valueListenable: controller.isReadingDocument,
                  builder: (context, reading, ____) {
                    if (reading) {
                      return const Padding(
                        padding: EdgeInsets.all(Insets.gutter),
                        child: Center(child: CircularProgressIndicator()),
                      );
                    }

                    return ValueListenableBuilder<String?>(
                      valueListenable: controller.readError,
                      builder: (context, error, _____) {
                        if (error != null) {
                          final docSubTypeName =
                              controller.selectedDocumentSubType.value?.value;
                          return Padding(
                            padding: const EdgeInsets.all(Insets.gutter),
                            child: Text(
                              docSubTypeName != null
                                  ? context.l10n
                                      .unableToExtractDocumentType(
                                        docSubTypeName,
                                      )
                                  : context.l10n.invalidDocumentUpload,
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.error,
                              ),
                            ),
                          );
                        }

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              context.l10n.extractedDetails,
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                            const SizedBox(height: Insets.gutter / 2),
                            EmrTabBarVerticalViewResponsiveColumnsCard(
                              title: context.l10n.extractedDetails,
                              children: [
                                EmrTextFormField<String>(
                                  labelText: context.l10n.validFrom,
                                  binding: ValueNotifier<String?>(
                                    controller.extractedValidFrom.value != null
                                        ? DateFormat.yMd(locale).format(
                                            controller.
                                            extractedValidFrom.value!,
                                          )
                                        : null,
                                  ),
                                  enabled: ValueNotifier(false),
                                ),
                                EmrTextFormField<String>(
                                  labelText: context.l10n.validTo,
                                  binding: ValueNotifier<String?>(
                                    controller.extractedValidTo.value != null
                                        ? DateFormat.yMd(locale).format(
                                            controller.extractedValidTo.value!,
                                          )
                                        : null,
                                  ),
                                  enabled: ValueNotifier(false),
                                ),
                                EmrTextFormField<String>(
                                  labelText: context.l10n.documentNumber,
                                  binding: ValueNotifier<String?>(
                                    controller.
                                    extractedIdentificationNumber.value,
                                  ),
                                  enabled: ValueNotifier(false),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    );
                  },
                );
              },
            );
          },
        );
      },
    );
  }
}
