import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class HelpPopup extends StatelessWidget {
  const HelpPopup({
    required this.clickable,
    this.popup,
    this.helpMessage,
    this.title,
    this.addPopupIndication = true,
    super.key,
  });

  final Widget clickable;
  final Widget? popup;
  final String? helpMessage;
  final String? title;
  final bool addPopupIndication;

  void _showHelpPopup(BuildContext context, ThemeData theme) {
    showDialog<AlertDialog>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title ?? context.l10n.help),
          content:
              popup ??
              Text(
                helpMessage ?? '',
                style: theme.textTheme.labelMedium?.bold(),
              ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(context.l10n.close),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          _showHelpPopup(context, theme);
        },
        child: addPopupIndication
            ? Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: Insets.gutter / 4,
                children: [clickable, const Icon(Icons.open_in_new, size: 16)],
              )
            : clickable,
      ),
    );
  }
}
