import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/models/yards/device_info.dart';
import 'package:emr_one_core/models/yards/yard_devices.dart';
import 'package:emr_one_prefs/prefs_constants.dart';
import 'package:emr_sharedtypes/models/models.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class YardRow extends StatelessWidget {
  const YardRow({
    required this.settingsController,
    super.key,
  });

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    final userInfoService = Provider.of<UserInfoService>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.l10n.yard.toUpperCase(),
              style: EmrOneConstants.kSmallestHeadingTextStyle
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            Text(
              context.l10n.defaultYard,
              style: EmrOneConstants.kSmallSubtleTextStyle,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: Insets.gutter / 2),
          child: GestureDetector(
            child: Container(
              padding: const EdgeInsets.only(
                left: 4,
                right: 4,
                top: 2,
                bottom: 2,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: const BorderRadius.all(Radius.circular(4)),
              ),
              child: Text(
                settingsController.yardCode() ??
                    userInfoService.userInfo.defaultYard,
                style: EmrOneConstants.kSmallestHeadingTextStyle.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
            onTap: () async {
              final selection = await showSearch<Yard?>(
                context: context,
                delegate: EmrModalSearchDelegate(
                  (query) => Future<List<Yard>>.value(
                    settingsController.allowedYards(query),
                  ),
                  (item) => ListTile(
                    title: Text(item.yardCode),
                    subtitle: Text(item.shortName),
                  ),
                ),
              );

              if (selection != null) {
                await settingsController.updateYardCode(selection.yardCode);

                // make sure YardDevices entry exists (will insert if not found)
                settingsController.updateYardDevices(
                  yardCode: userInfoService.userInfo.defaultYard,
                  chequePrinter: settingsController.chequePrinter.value,
                  remittancePrinter: settingsController.remittancePrinter.value,
                );
                userInfoService.userInfo.defaultYard = selection.yardCode;

                // Read the saved devices for the newly selected yard
                final yardEntry = settingsController.yardDevices.firstWhere(
                  (y) => y.yardCode == selection.yardCode,
                  orElse: () =>
                      YardDevices(yardCode: selection.yardCode, devices: []),
                );

                // Helper to find a DeviceInfo by type in a devices list
                DeviceInfo? findByType(List<DeviceInfo>? list, String type) {
                  if (list == null) return null;
                  for (final d in list) {
                    if (d.type == type) return d;
                  }
                  return null;
                }

                // Assign printers from the stored yard entry
                // (or null if not present)
                settingsController.chequePrinter.value = findByType(
                  yardEntry.devices,
                  PrefsConstants.chequePrinterDevice,
                );
                settingsController.remittancePrinter.value = findByType(
                  yardEntry.devices,
                  PrefsConstants.remittancePrinterDevice,
                );

                await settingsController.loadSettings();
              }
            },
          ),
        ),
      ],
    );
  }
}
