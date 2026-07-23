import 'dart:async';

import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/src/widgets/modals/emr_modal_buttons.dart';
import 'package:emr_one_core/src/widgets/modals/emr_modal_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

enum EmrDialogButton {
  accept,
  cancel,
}

/// Helper functions for showing dialogs with pre-defined buttons.
class EmrDialog {
  /// Show a modal dialog with custom content and buttons.
  /// `acceptLabel` defaults to 'Save' and both buttons pop the dialog, but
  /// custom handlers can be provided.
  static Future<T?> modal<T>(
    BuildContext context, {
    required String titleText,
    required Widget Function(BuildContext) builder,
    Future<void> Function()? onAccept,
    void Function()? onCancel,
    String? acceptLabel,
    DialogMode dialogMode = DialogMode.auto,
    bool isDanger = false,
    Set<EmrDialogButton> buttons = const {
      EmrDialogButton.cancel,
      EmrDialogButton.accept,
    },
  }) {
    // By default make both buttons pop the dialog if no handlers are provided.
    onAccept ??= () async => Navigator.of(context).pop();
    onCancel ??= () => Navigator.of(context).pop();

    acceptLabel ??= context.l10n.save;

    final appConfig = Provider.of<AppConfig>(context, listen: false);
    final isFullScreen = dialogMode == DialogMode.auto
        ? !appConfig.isWeb
        : (dialogMode == DialogMode.fullScreen);
    final isAccepting = ValueNotifier<bool>(false);

    final modalBody = isFullScreen
        ? Flexible(
            child: Center(
              child: Row(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(Insets.gutter),
                      child: builder(context),
                    ),
                  ),
                ],
              ),
            ),
          )
        : Flexible(
            child: Row(
              children: [
                SingleChildScrollView(
                  padding: const EdgeInsets.all(Insets.gutter),
                  child: builder(context),
                ),
              ],
            ),
          );

    Future<void> acceptHandler() async {
      isAccepting.value = true;

      try {
        await onAccept?.call();
      } on Exception catch (ex, trace) {
        EmrLogger.error(
          'Exception occurred during dialog: $titleText',
          error: ex,
          stackTrace: trace,
        );
        if (context.mounted) {
          unawaited(
            EmrDialog.ok(
              context,
              titleText: 'Unhandled Exception',
              contentText: '$ex\n$trace',
            ),
          );
        }
      }

      isAccepting.value = false;
    }

    if (isFullScreen) {
      return showCupertinoDialog(
        context: context,
        builder: (context) => Theme(
          data: Theme.of(context),
          child: SafeArea(
            child: DefaultTextStyle(
              style: Theme.of(context).textTheme.bodyMedium!,
              child: ColoredBox(
                color: Theme.of(context).colorScheme.surface,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: EmrModalTitle(
                            title: titleText,
                            isAccepting: isAccepting,
                          ),
                        ),
                      ],
                    ),
                    modalBody,
                    EmrModalButtons(
                      onCancel: (buttons.contains(EmrDialogButton.cancel))
                          ? onCancel
                          : null,
                      onAccept: (buttons.contains(EmrDialogButton.accept))
                          ? acceptHandler
                          : null,
                      isAccepting: isAccepting,
                      acceptLabel: acceptLabel!,
                      isDanger: isDanger,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }

    return _show<T?>(
      context,
      title: Text(titleText),
      content: const SizedBox(),
      builder: (context) {
        return Dialog(
          child: IntrinsicWidth(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: EmrModalTitle(
                        title: titleText,
                        isAccepting: isAccepting,
                      ),
                    ),
                  ],
                ),
                modalBody,
                EmrModalButtons(
                  onCancel: (buttons.contains(EmrDialogButton.cancel))
                      ? onCancel
                      : null,
                  onAccept: (buttons.contains(EmrDialogButton.accept))
                      ? acceptHandler
                      : null,
                  isAccepting: isAccepting,
                  acceptLabel: acceptLabel!,
                  isDanger: isDanger,
                ),
              ],
            ),
          ),
        );
      },
      actions: [],
    );
  }

  /// Show a dialog with an OK button.
  static Future<void> ok(
    BuildContext context, {
    required String titleText,
    String contentText = '',
    void Function()? onOk,
  }) =>
      _show<void>(
        context,
        title: Text(titleText),
        content: Text(contentText),
        actions: [
          _DialogAction(
            context.l10n.ok,
            () {
              Navigator.of(context, rootNavigator: true).pop();
              onOk?.call();
            },
          ),
        ],
      );

  /// Show a dialog with Cancel and OK buttons.
  static Future<void> cancelOk(
    BuildContext context, {
    required String titleText,
    String contentText = '',
    void Function()? onCancel,
    void Function()? onOk,
  }) =>
      _show<void>(
        context,
        title: Text(titleText),
        content: Text(contentText),
        actions: [
          _DialogAction(
            context.l10n.cancel,
            () {
              Navigator.of(context, rootNavigator: true).pop();
              onCancel?.call();
            },
          ),
          _DialogAction(
            context.l10n.ok,
            () {
              Navigator.of(context, rootNavigator: true).pop();
              onOk?.call();
            },
          ),
        ],
      );

  /// Show a dialog with No and Yes buttons.
  static Future<void> noYes(
    BuildContext context, {
    required String titleText,
    String contentText = '',
    void Function()? onNo,
    void Function()? onYes,
  }) =>
      _show<void>(
        context,
        title: Text(titleText),
        content: Text(contentText),
        actions: [
          _DialogAction(
            context.l10n.no,
            () {
              Navigator.of(context, rootNavigator: true).pop();
              onNo?.call();
            },
          ),
          _DialogAction(
            context.l10n.yes,
            () {
              Navigator.of(context, rootNavigator: true).pop();
              onYes?.call();
            },
          ),
        ],
      );

  /// Show a dialog with no buttons to display text while awaiting an api
  /// response.
  static Future<void> busy(
    BuildContext context, {
    required String titleText,
  }) =>
      _show<void>(
        context,
        title: Center(
          child: Text(
            titleText,
            textAlign: TextAlign.center,
          ),
        ),
        content: const SizedBox(
          height: 40,
          width: 40,
          child: Center(child: CircularProgressIndicator()),
        ),
        actions: [],
      );

  static Future<void> t2DeepLink(
    BuildContext context,
    String trade2Url,
  ) =>
      _show<void>(
        context,
        title: Center(
          child: Text(context.l10n.psnopTrade2Access),
        ),
        content: Text(context.l10n.psnopTrade2AccessDetails),
        actions: [
          _DialogAction(
            context.l10n.cancel,
            () {
              Navigator.of(context, rootNavigator: true).pop();
            },
          ),
          _DialogAction(
            context.l10n.ok,
            () {
              launchUrl(
                Uri.parse(trade2Url),
                webOnlyWindowName: '_blank',
              );
              Navigator.of(context, rootNavigator: true).pop();
            },
          ),
        ],
      );

  static Future<T?> _show<T>(
    BuildContext context, {
    required Widget title,
    required Widget? content,
    required List<_DialogAction> actions,
    IconData? icon,
    Widget Function(BuildContext)? builder,
  }) {
    final textTheme = Theme.of(context).textTheme;

    return showDialog<T>(
      context: context,
      builder: builder ??
          (_) => AlertDialog(
                icon: icon != null
                    ? Center(
                        child: Icon(
                          icon,
                          color: textTheme.bodyMedium!.color,
                        ),
                      )
                    : null,
                title: title,
                titleTextStyle: textTheme.titleLarge,
                content: content,
                actions: actions
                    .map(
                      (e) => FilledButton(
                        onPressed: e.onPressed,
                        child: Text(e.text),
                      ),
                    )
                    .toList(),
              ),
      barrierDismissible: false,
    );
  }
}

class _DialogAction {
  _DialogAction(this.text, this.onPressed);

  final String text;

  final void Function() onPressed;
}
