import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_prefs/widgets/devices_prefs.dart';
import 'package:emr_one_prefs/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PrefsScreen extends StatelessWidget {
  const PrefsScreen({required this.appConfig, super.key});

  final AppConfig appConfig;

  @override
  Widget build(BuildContext context) {
    if (appConfig.isWeb) {
      return TabbedScreenWrapper(
        screenHeaderText: context.l10n.settings.toUpperCase(),
        currentIndex: 0,
        tabSummaries: getTabs(context),
      );
    }

    return const GeneralPrefs();
  }
}

List<TabbedScreenTabSummary> getTabs(BuildContext context) {
  return [
    TabbedScreenTabSummary(
      tab: const GeneralPrefs(),
      label: context.l10n.general,
    ),
    TabbedScreenTabSummary(
      tab: const DevicesPrefs(),
      label: context.l10n.myDevices,
    ),
  ];
}
