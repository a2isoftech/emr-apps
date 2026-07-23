import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class RecordDeleter extends StatelessWidget {
  const RecordDeleter({
    required this.controller,
    required this.onDelete,
    required this.entityName,
    this.onPreDelete,
    this.showIcon = false,
    this.disableIcon = false,
    this.tooltipForDisableIcon = '',
    super.key,
  });

  final AccountManagementBaseController controller;
  final void Function({required bool success, required String error}) onDelete;
  final String entityName;
  final VoidCallback? onPreDelete;
  final bool showIcon;
  final bool disableIcon;
  final String tooltipForDisableIcon;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: controller,
      builder: (context, _) {
        return showIcon
            ? Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: Insets.gutter * 2,
                    height: Insets.gutter * 2,
                    child: disableIcon
                        ? Tooltip(
                            message: tooltipForDisableIcon,
                            child: Icon(
                              Icons.delete,
                              size: Insets.gutter * 1.5,
                              color: Theme.of(context).disabledColor,
                            ),
                          )
                        : Stack(
                            alignment: Alignment.center,
                            children: [
                              IconButton(
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(),
                                visualDensity: VisualDensity.compact,
                                icon: Icon(
                                  Icons.delete,
                                  size: Insets.gutter * 1.5,
                                  color: controller.isProcessing()
                                      ? Theme.of(
                                          context,
                                        ).colorScheme.onErrorContainer
                                      : Theme.of(context).colorScheme.error,
                                ),
                                onPressed: controller.isProcessing()
                                    ? null
                                    : () => _openConfirmDeleteDialog(context),
                              ),
                              if (controller.isProcessing())
                                const SizedBox(
                                  width: Insets.gutter * 2,
                                  height: Insets.gutter * 2,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                  ),
                                ),
                            ],
                          ),
                  ),
                ],
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
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.error,
                    ),
                    onPressed: () => _openConfirmDeleteDialog(context),
                    child: Text(context.l10n.delete),
                  ),
                ],
              );
      },
    );
  }

  void _openConfirmDeleteDialog(BuildContext context) {
    final navigator = Navigator.of(context);

    EmrDialog.modal<void>(
      context,
      titleText: context.l10n.confirmDelete,
      acceptLabel: context.l10n.delete,
      isDanger: true,
      builder: (_) => _buildDialogMessage(context),
      onAccept: () async {
        await _executeDelete();
        navigator.pop();
      },
    );
  }

  Widget _buildDialogMessage(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Insets.gutter,
        vertical: Insets.gutter,
      ),
      child: Text(
        context.l10n.deleteEntityAccountMessage(entityName),
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }

  Future<void> _executeDelete() async {
    onPreDelete?.call();

    final (success, error) = await controller.delete();

    AccountDetailsController.forceLoad = true;

    onDelete(success: success, error: error);
  }
}
