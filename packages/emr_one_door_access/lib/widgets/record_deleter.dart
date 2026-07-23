import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/extensions/text_style_extensions.dart';
import 'package:emr_one_door_access/widgets/shared_widgets.dart';
import 'package:flutter/material.dart';

class RecordDeleter extends StatelessWidget {
  const RecordDeleter({
    required this.onDelete,
    required this.entityName,
    this.onPreDelete,
    this.showIcon = false,
    this.isProcessing = false,
    super.key,
  });

  final Future<(bool success, String error)> Function() onDelete;
  final String entityName;
  final VoidCallback? onPreDelete;
  final bool showIcon;
  final bool isProcessing;

  @override
  Widget build(BuildContext context) {
    if (isProcessing) {
      return processingIndicator();
    }

    return showIcon
        ? IconButton(
            icon: const Icon(Icons.delete, color: Colors.red),
            onPressed: () => _openConfirmDeleteDialog(context),
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                context.l10n.confirmDeleteMessage(entityName),
                style: Theme.of(context).textTheme.labelLarge!.bold(),
              ),
              const SizedBox(width: Insets.gutter),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () => _openConfirmDeleteDialog(context),
                child: Text(context.l10n.delete),
              ),
            ],
          );
  }

  void _openConfirmDeleteDialog(BuildContext context) {
    final navigator = Navigator.of(context);

    EmrDialog.modal<void>(
      context,
      titleText: context.l10n.confirmDelete,
      acceptLabel: context.l10n.delete,
      isDanger: true,
      builder: (_) => _buildDialogContent(context),
      onAccept: () async {
        onPreDelete?.call();

        await onDelete();

        navigator.pop();
      },
    );
  }

  Widget _buildDialogContent(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Center(child: _buildDangerIcon()),
        const SizedBox(height: Insets.gutter),
        Center(child: _buildDialogMessage(context)),
      ],
    );
  }

  Widget _buildDangerIcon() {
    return CircleAvatar(
      radius: 32,
      backgroundColor: Colors.red.shade100,
      child: const Icon(Icons.warning_amber_sharp, color: Colors.red, size: 32),
    );
  }

  Widget _buildDialogMessage(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 250),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: context.l10n.areYouSure,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
