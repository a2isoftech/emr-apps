import 'dart:async';

import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class ThemeRow extends StatelessWidget {
  const ThemeRow({
    required this.settingsController,
    required this.enabledColour,
    required this.disabledColour,
    super.key,
  });

  final SettingsController settingsController;
  final Color enabledColour;
  final Color disabledColour;

  @override
  Widget build(BuildContext context) {
    final currentThemeMode = settingsController.themeMode;

    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.l10n.theme.toUpperCase(),
              style: EmrOneConstants.kSmallestHeadingTextStyle,
            ),
            Text(
              context.l10n.themeSubtext,
              style: EmrOneConstants.kSmallSubtleTextStyle,
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () async {
            _trackThemeChange(context, 'system');
            unawaited(settingsController.updateThemeMode(ThemeMode.system));
          },
          icon: const Icon(Icons.contrast),
          color: currentThemeMode == ThemeMode.system
              ? enabledColour
              : disabledColour,
        ),
        IconButton(
          onPressed: () async {
            _trackThemeChange(context, 'light');
            unawaited(settingsController.updateThemeMode(ThemeMode.light));
          },
          icon: const Icon(Icons.light_mode_sharp),
          color: currentThemeMode == ThemeMode.light
              ? enabledColour
              : disabledColour,
        ),
        IconButton(
          onPressed: () async {
            _trackThemeChange(context, 'dark');
            unawaited(settingsController.updateThemeMode(ThemeMode.dark));
          },
          icon: const Icon(Icons.dark_mode_outlined),
          color: currentThemeMode == ThemeMode.dark
              ? enabledColour
              : disabledColour,
        ),
      ],
    );
  }

  void _trackThemeChange(BuildContext context, String mode) {
    context.trackEvent(
      EmrOneCoreTelemetry.kThemeChange,
      params: {
        'mode': mode,
      },
    );
  }
}
