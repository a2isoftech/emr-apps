import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class MessageBar extends StatelessWidget {
  const MessageBar({
    required this.text,
    required this.messageBarType,
    this.barColor,
    super.key,
  });
  final String text;
  final MessageBarType messageBarType;
  final Color? barColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    Color messageBarColor;
    switch (messageBarType) {
      case MessageBarType.error:
        messageBarColor = Colors.redAccent;
      case MessageBarType.info:
        messageBarColor = Colors.yellow;
      case MessageBarType.success:
        messageBarColor = Colors.green;
      case MessageBarType.warning:
        messageBarColor = Colors.orange;
    }

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Insets.gutter,
        vertical: Insets.gutter / 2,
      ),
      decoration: BoxDecoration(
        color: barColor ?? messageBarColor,
        borderRadius: BorderRadius.circular(Insets.gutter),
      ),
      child: Row(
        children: [
          const Icon(Icons.warning, color: Colors.white),
          horizontalSpacer(),
          Flexible(
            child: Text(text, style: theme.textTheme.labelLarge!.bold()),
          ),
        ],
      ),
    );
  }
}

enum MessageBarType { info, warning, success, error }
