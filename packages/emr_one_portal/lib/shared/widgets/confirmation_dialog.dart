import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

Future<bool?> showConfirmationDialog({
  required BuildContext context,
  required String message,
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
          TextButton(
            child: Text(context.l10n.cancel),
            onPressed: () {
              context.pop(false);
            },
          ),
          ElevatedButton(
            child: Text(context.l10n.ok),
            onPressed: () {
              context.pop(true);
            },
          ),
        ],
      );
    },
  );
}
