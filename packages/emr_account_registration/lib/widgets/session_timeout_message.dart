import 'package:emr_account_registration/widgets/shared_widgets.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class SessionTimeoutMessage extends StatelessWidget {
  const SessionTimeoutMessage({
    super.key,
    required this.title,
    required this.message,
    this.icon = Icons.timer_off,
  });

  final String title;
  final String message;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        verticalSpacer(),
        Icon(
          icon,
          size: Insets.gutter * 4,
          color: theme.colorScheme.error,
        ),
        verticalSpacer(),
        Text(
          title,
          style: theme.textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        verticalSpacer(),
        Text(
          message,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyMedium,
        ),
      ],
    );
  }
}