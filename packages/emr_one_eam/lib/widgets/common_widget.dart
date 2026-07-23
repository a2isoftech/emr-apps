import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_eam/common/colors.dart';
import 'package:emr_one_eam/common/constants.dart';
import 'package:emr_one_eam/models/message_type.dart';
import 'package:flutter/material.dart';

Future<bool?> showConfirmationDialog({
  required BuildContext context,
  required String message,
  List<Widget>? actionButtons,
}) {
  return showDialog<bool>(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return AlertDialog(
        elevation: 20,
        title: Text(context.l10n.confirmation),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      message,
                      softWrap: false,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis, // new
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: <Widget>[
          if (actionButtons != null) ...[
            ...actionButtons,
          ],
          ElevatedButton(
            child: Text(context.l10n.no),
            onPressed: () {
              context.pop(false);
            },
          ),
          ElevatedButton(
            child: Text(context.l10n.yes),
            onPressed: () {
              context.pop(true);
            },
          ),
        ],
      );
    },
  );
}

SnackBar appSnackBarMessage(String message, MessageTypes messageTypes) {
  return SnackBar(
    content: Row(
      children: [
        if (messageTypes == MessageTypes.error)
          const Icon(
            Icons.error_outline_outlined,
            color: EmrColours.primaryWhite,
            size: 20,
          )
        else if (messageTypes == MessageTypes.information)
          const Icon(
            Icons.info_outline_rounded,
            color: EmrColours.primaryWhite,
            size: 20,
          )
        else
          const Icon(
            Icons.done_outline_rounded,
            color: EmrColours.primaryWhite,
            size: 20,
          ),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            message,
            style:
                const TextStyle(fontSize: 16, color: EmrColours.primaryWhite),
          ),
        ),
      ],
    ),
    backgroundColor: messageTypes == MessageTypes.error
        ? EamAppColors.error
        : messageTypes == MessageTypes.information
            ? EmrColours.secondaryCyan
            : EmrColours.primaryGreen,
    duration: const Duration(seconds: 5),
    behavior: SnackBarBehavior.floating,
  );
}

Future<void> showWidgetDialog({
  required BuildContext context,
  required Widget widget,
  required String title,
  double? widgetWidth,
  double? widgetHeight,
}) {
  return showDialog<void>(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return AlertDialog(
        elevation: 20,
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: widgetHeight ?? 500,
                    width: widgetWidth ?? 1000,
                    child: widget,
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}

Future<void> showMessageDialog({
  required BuildContext context,
  required MessageType messageType,
  required String message,
}) {
  return showDialog<void>(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return AlertDialog(
        elevation: 20,
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              _getMessageIcon(messageType),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _getMessageText(context, messageType),
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      message,
                      softWrap: false,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis, // new
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: <Widget>[
          Center(
            child: ElevatedButton(
              child: Text(context.l10n.ok),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      );
    },
  );
}

Icon _getMessageIcon(MessageType messageType) {
  return switch (messageType) {
    MessageType.success => Icon(
        Icons.check_circle_rounded,
        size: 200,
        color: EamAppColors.success,
      ),
    MessageType.error => Icon(
        Icons.error,
        size: 200,
        color: EamAppColors.error,
      ),
    MessageType.warning => Icon(
        Icons.warning,
        size: 200,
        color: EamAppColors.inProgress,
      ),
    MessageType.information => Icon(
        Icons.info,
        size: 200,
        color: EamAppColors.information,
      )
  };
}

String _getMessageText(BuildContext context, MessageType messageType) {
  return switch (messageType) {
    MessageType.success => context.l10n.success,
    MessageType.error => context.l10n.error,
    MessageType.warning => context.l10n.warning,
    MessageType.information => context.l10n.information
  };
}
