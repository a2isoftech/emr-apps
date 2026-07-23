import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Helper functions for showing dialogs with pre-defined buttons.
class ElvDialog {
  //action dialog
  static Future<void> action(
    BuildContext context, {
    required String titleText,
    required Widget content,
    void Function()? onOk,
    List<DialogAction>? actions,
  }) =>
      _show<void>(
        context,
        title: Center(
          child: Text(
            titleText,
          ),
        ),
        content: content,
        actions: actions,
      );

  static Future<T?> _show<T>(
    BuildContext context, {
    required Widget title,
    required Widget content,
    List<DialogAction>? actions,
    FaIconData? icon,
  }) {
    final textTheme = Theme.of(context).textTheme;

    return showDialog<T>(
      context: context,
      builder: (_) => AlertDialog(
        icon: icon != null
            ? Center(
                child: FaIcon(
                  icon,
                  color: textTheme.bodyMedium!.color,
                ),
              )
            : null,
        title: title,
        titleTextStyle: textTheme.titleLarge,
        content: content,
        actions: actions
            ?.map(
              (e) => TextButton(
                onPressed: e.onPressed,
                child: Text(e.text),
              ),
            )
            .toList(),
      ),
    );
  }
}

class DialogAction {
  DialogAction(this.text, this.onPressed);

  final String text;

  final void Function() onPressed;
}
