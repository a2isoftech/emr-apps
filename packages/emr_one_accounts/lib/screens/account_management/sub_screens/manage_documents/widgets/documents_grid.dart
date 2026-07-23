import 'dart:math';

import 'package:emr_core_api/extensions/identification_subtype_extension.dart';
import 'package:emr_core_api/extensions/identification_type_extension.dart';
import 'package:emr_core_api/services/account_service.dart';
import 'package:emr_one_accounts/constants.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DocumentsGrid extends StatefulWidget {
  const DocumentsGrid({
    required this.controller,
    required this.onView,
    required this.onEdit,
    required this.onDelete,
    super.key,
  });

  final ManageDocumentsController controller;
  final void Function(DocumentGridItem item) onView;
  final void Function(DocumentGridItem item) onEdit;
  final void Function(
    DocumentGridItem item, {
    required bool success,
    required String error,
  }) onDelete;

  @override
  State<DocumentsGrid> createState() => _DocumentsGridState();
}

class _DocumentsGridState extends State<DocumentsGrid> {
  final Map<String, ManageDocumentsController> _deleteControllers = {};

  ManageDocumentsController _getDeleteController(DocumentGridItem item) {
    final key =
        '${item.contactId}_${item.identification.type}'
        '_${item.identification.subType}';
    return _deleteControllers.putIfAbsent(
      key,
      () => ManageDocumentsController(
        coreApiService: widget.controller.coreApiService,
        mediaService: widget.controller.mediaService,
      ),
    );
  }

  @override
  void dispose() {
    for (final c in _deleteControllers.values) {
      c.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context).toString();
    return ValueListenableBuilder<List<DocumentGridItem>>(
      valueListenable: widget.controller.gridController.data,
      builder: (context, documents, _) {
        final height = documents.isEmpty
            ? accountGridEmptyHeight
            : min(documents.length + 1, accountGridMaxVisibleRows)
            * accountGridRowHeight;

        return SizedBox(
          height: height,
          child: EmrGrid<DocumentGridItem>(
      controller: widget.controller.gridController,
      alternateBackgroundRowColour: true,
      pinnedRowCount: 1,
      rowHeight: (rowIndex) => accountGridRowHeight,
      noRecordsMessage: Text(context.l10n.noDocumentsFound),
      columns: [
        EmrGridColumn(
          headerBuilder: () => EmrGridHeader(text: context.l10n.contactName),
          cellBuilder: (item) => Text(item.contactName),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrGridHeader(text: context.l10n.documentType),
          cellBuilder: (item) => Text(
            AccountService.mapToIdentificationType(item.documentType)
                .displayString(context),
          ),
        ),
        EmrGridColumn(
          headerBuilder: () =>
              EmrGridHeader(text: context.l10n.documentSubType),
          cellBuilder: (item) => Text(
            AccountService.mapToIdentificationSubType(item.subType)
                .displayString(context),
          ),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrGridHeader(text: context.l10n.expiryDate),
          cellBuilder: (item) => Text(
            item.expiryDate != null
                ? DateFormat.yMd(locale).format(item.expiryDate!)
                : '',
          ),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrGridHeader(text: context.l10n.uploadDate),
          cellBuilder: (item) => Text(
            item.uploadDate != null
                ? DateFormat.yMd(locale).format(item.uploadDate!)
                : '',
          ),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrGridHeader(text: context.l10n.status),
          cellBuilder: (item) => EmrStatusChip(
            text: item.isExpired
                ? context.l10n.expired
                : context.l10n.active,
            statusType: item.isExpired
                ? StatusType.negative
                : StatusType.positive,
          ),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrGridHeader(text: context.l10n.actions),
          cellBuilder: (item) {
            final deleteController = _getDeleteController(item);
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.visibility,
                  size: Insets.gutter  + 4),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  visualDensity: VisualDensity.compact,
                  onPressed: () => widget.onView(item),
                ),
                const SizedBox(width: Insets.gutter / 2),
                IconButton(
                  icon: const Icon(Icons.edit, size: Insets.gutter + 4),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  visualDensity: VisualDensity.compact,
                  onPressed: () => widget.onEdit(item),
                ),
                const SizedBox(width: Insets.gutter / 2),
                RecordDeleter(
                  controller: deleteController,
                  entityName: context.l10n.document,
                  showIcon: true,
                  onPreDelete: () {
                    deleteController.account = widget.controller.account;
                    deleteController.document = item;
                  },
                  onDelete: ({required bool success, required String error}) {
                    widget.onDelete(item, success: success, error: error);
                  },
                ),
              ],
            );
          },
        ),
      ],
    ),
        );
      },
    );
  }
}
