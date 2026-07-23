import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class DataManagementUtility {
  static Future<void> infoDialogWidget(
    BuildContext context, {
    required String title,
    required String message,
    Future<void> Function()? onAccept,
    void Function()? onCancel,
    bool? isDanger = false,
  }) {
    return EmrDialog.modal<void>(
      context,
      titleText: title,
      builder: (context) => Center(
        child: Text(
          message,
          softWrap: true,
          overflow: TextOverflow.ellipsis,
          maxLines: 3,
        ),
      ),
      acceptLabel: context.l10n.ok,
      isDanger: isDanger ?? false,
      onAccept: () async {
        await onAccept?.call();
        if (!context.mounted) return;
        context.pop();
      },
      onCancel: () async {
        onCancel?.call();
        context.pop();
      },
    );
  }
}
