import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/models/yards/device_info.dart';
import 'package:emr_one_prefs/prefs_constants.dart';
import 'package:flutter/material.dart';

class YardDeviceRow extends StatefulWidget {
  const YardDeviceRow({
    required this.settingsController,
    super.key,
  });

  final SettingsController settingsController;

  @override
  State<YardDeviceRow> createState() => _YardDeviceRowState();
}

class _YardDeviceRowState extends State<YardDeviceRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: Insets.gutter / 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.l10n.preferredDevicesForYard(
                    widget.settingsController.yardCode() ?? '',
                  ),
                  style: EmrOneConstants.kSmallHeadingTextStyle.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                EmrPickerFormField<DeviceInfo>(
                  labelText: context.l10n.remittancePrinter,
                  items: (query) async {
                    return widget.settingsController.allowedYardDevicesByYard(
                      'devices/${widget.settingsController.territory}/${widget.settingsController.yardCode()}',
                      PrefsConstants.remittancePrinterDevice,
                    );
                  },
                  itemTitleText: (device) => device.name,
                  itemSubtitleText: (device) => device.name,
                  binding: widget.settingsController.remittancePrinter,
                ),
                EmrPickerFormField<DeviceInfo>(
                  labelText: context.l10n.chequePrinter,
                  items: (query) async {
                    return widget.settingsController.allowedYardDevicesByYard(
                      'devices/${widget.settingsController.territory}/${widget.settingsController.yardCode()}',
                      PrefsConstants.chequePrinterDevice,
                    );
                  },
                  itemTitleText: (device) => device.name,
                  itemSubtitleText: (device) => device.name,
                  binding: widget.settingsController.chequePrinter,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
