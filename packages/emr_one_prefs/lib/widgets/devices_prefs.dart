import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/controllers/controllers.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_prefs/widgets/widgets.dart';
import 'package:emr_one_prefs/widgets/yard_device_row.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DevicesPrefs extends StatelessWidget {
  const DevicesPrefs({super.key});

  @override
  Widget build(BuildContext context) {
    final settingsController =
        Provider.of<BaseSettingsController>(context) as SettingsController;
    final appConfig = Provider.of<AppConfig>(context);
    final userInfoService = Provider.of<UserInfoService>(context);
    final enabledColour = Theme.of(context).colorScheme.onSurface;
    final disabledColour = Color.fromARGB(
      80,
      (enabledColour.r * 255).toInt(),
      (enabledColour.g * 255).toInt(),
      (enabledColour.b * 255).toInt(),
    );

    if (appConfig.isWeb) {
      return Row(
        children: [
          SizedBox(
            width: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _items(
                settingsController,
                enabledColour,
                disabledColour,
                appConfig,
                userInfoService,
              ),
            ),
          ),
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _items(
        settingsController,
        enabledColour,
        disabledColour,
        appConfig,
        userInfoService,
      ),
    );
  }

  List<Widget> _items(
    SettingsController settingsController,
    Color enabledColour,
    Color disabledColour,
    AppConfig appConfig,
    UserInfoService userInfoService,
  ) {
    return [
      Padding(
        padding: const EdgeInsets.all(Insets.gutter),
        child: YardDeviceRow(
          settingsController: settingsController,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(Insets.gutter),
        child: VersionRow(),
      ),
    ];
  }
}
