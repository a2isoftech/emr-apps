import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_accounts/screens/account_management/sub_screens/account_details/widgets/document_view_dialog.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DocumentsDetails extends EmrTabBarVerticalViewCard {
  DocumentsDetails(
    BuildContext context, {
    required Account account,
    required void Function() onRefresh,
    required super.title,
    super.key,
  }) : super(
         child: Builder(
           builder: (context) {
             final manageDocumentsController =
                 context.read<ManageDocumentsController>();
             manageDocumentsController.setAccount(account);
             return DocumentsGrid(
               controller: manageDocumentsController,
               onView: (DocumentGridItem item) {
                 _showViewDocumentDialog(context, item);
               },
               onEdit: (DocumentGridItem item) {
                 _showEditDocumentDialog(
                   context,
                   onRefresh,
                   manageDocumentsController,
                   item,
                 );
               },
               onDelete: (
                 DocumentGridItem item, {
                 required bool success,
                 required String error,
               }) async {
                 if (!success) {
                   await EmrModal.showMessageBar(
                     context,
                     error.isNotEmpty
                         ? error
                         : context.l10n.anErrorOccurredTryAgain,
                     messageType: MessageBarTypes.error,
                   );
                   return;
                 }
                 manageDocumentsController.refreshGrid();
                 if (context.mounted) {
                   await EmrModal.showMessageBar(
                     context,
                     context.l10n.documentDeleteSuccess,
                   );
                 }
               },
             );
           },
         ),
         actions: {
           CardAddActionIntent: CardAddAction(
             context,
             createIntent: (context) => CardAddActionIntent(context: context),
             onAction: () {
               _showAddDocumentDialog(
                 context,
                 onRefresh,
                  context.read<ManageDocumentsController>(),
               );
             },
           ),
         },
       );

  static void _showAddDocumentDialog(
    BuildContext context,
    void Function() onRefresh,
    ManageDocumentsController controller,
  ) {
    controller.prepareForAddDocument();

    EmrDialog.modal<void>(
      context,
      titleText: context.l10n.uploadDocument,
      acceptLabel: context.l10n.save,
      builder: (_) => AddDocumentDialog(controller: controller),
      onAccept: () async {
        final isFormValid =
            controller.formKey.currentState?.validate() ?? true;

        if (!isFormValid) {
          return;
        }

        if (controller.isReadingDocument.value) {
          await EmrModal.showMessageBar(
            context,
            context.l10n.extractionInProgress,
            messageType: MessageBarTypes.error,
          );
          return;
        }

        if (controller.readError.value != null &&
            controller.readError.value!.isNotEmpty) {
          final docSubTypeName =
              controller.selectedDocumentSubType.value?.value;
          await EmrModal.showMessageBar(
            context,
            docSubTypeName != null
                ? context.l10n
                    .unableToExtractDocumentType(docSubTypeName)
                : context.l10n.invalidDocumentUpload,
            messageType: MessageBarTypes.error,
          );
          return;
        }

        final (success, error) = await controller.save(context);

        if (!success) {
          await EmrModal.showMessageBar(
            context,
            error.isNotEmpty ? error : context.l10n.anErrorOccurredTryAgain,
            messageType: MessageBarTypes.error,
          );
          return;
        }

        controller.refreshGrid();
        AccountDetailsController.forceLoad = true;
        if (context.mounted) {
           context.read<AccountDetailsController>().refreshScreen();
          context.pop();
          await EmrModal.showMessageBar(
            context,
            context.l10n.msgDocumentUploaded,
          );
        }
      },
      onCancel: () {
          controller.reset();
          Navigator.of(context).pop();
        },
    );
  }

  static void _showEditDocumentDialog(
    BuildContext context,
    void Function() onRefresh,
    ManageDocumentsController controller,
    DocumentGridItem item,
  ) {
    controller.prepareForEditDocument(item, context);

    EmrDialog.modal<void>(
      context,
      titleText: context.l10n.uploadDocument,
      acceptLabel: context.l10n.save,
      builder: (_) => AddDocumentDialog(controller: controller),
      onAccept: () async {
        final isFormValid =
            controller.formKey.currentState?.validate() ?? true;

        if (!isFormValid) {
          return;
        }

        if (controller.isReadingDocument.value) {
          await EmrModal.showMessageBar(
            context,
            context.l10n.extractionInProgress,
            messageType: MessageBarTypes.error,
          );
          return;
        }

        if (controller.readError.value != null &&
            controller.readError.value!.isNotEmpty) {
          final docSubTypeName =
              controller.selectedDocumentSubType.value?.value;
          await EmrModal.showMessageBar(
            context,
            docSubTypeName != null
                ? context.l10n
                    .unableToExtractDocumentType(docSubTypeName)
                : context.l10n.invalidDocumentUpload,
            messageType: MessageBarTypes.error,
          );
          return;
        }

        final (success, error) = await controller.save(context);

        if (!success) {
          await EmrModal.showMessageBar(
            context,
            error.isNotEmpty ? error : context.l10n.anErrorOccurredTryAgain,
            messageType: MessageBarTypes.error,
          );
          return;
        }

        controller.refreshGrid();
        if (context.mounted) {
          context.pop();
          await EmrModal.showMessageBar(
            context,
            context.l10n.updatedSuccessfully,
          );
        }
      },
      onCancel: () {
          controller.reset();
          Navigator.of(context).pop();
        },
    );
  }

  static void _showViewDocumentDialog(
    BuildContext context,
    DocumentGridItem item,
  ) {
    showDialog<void>(
      context: context,
      builder: (_) => Dialog(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(Insets.gutter),
              child: DocumentViewDialog(item: item),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: IconButton(
                icon: const Icon(Icons.close),
                tooltip: context.l10n.close,
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            Positioned(
              top: 8,
              left: 16,
              child: Text(
                context.l10n.previewDocument,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
