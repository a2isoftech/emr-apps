import 'package:emr_one_data_management/screens/weighbridge_profiles/form_data/form_data.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/foundation.dart';

class EwcControlData {
  EwcControlData({
    bool? enabled,
    bool? enablePartyWasteStream,
    CommoditySourceTypesData? commoditySourceType,
  })  : enabled = ValueNotifier(enabled ?? false),
        enablePartyWasteStream = ValueNotifier(enablePartyWasteStream ?? false),
        commoditySourceType = ValueNotifier(
          commoditySourceType ?? CommoditySourceTypesData(),
        );

  EwcControlData.fromEwcControl(EwcControl control)
      : enabled = ValueNotifier(control.enabled),
        enablePartyWasteStream = ValueNotifier(control.enablePartyWasteStream),
        commoditySourceType = ValueNotifier(
          control.commoditySourceType != null
              ? CommoditySourceTypesData.fromCommoditySourceTypes(
                  control.commoditySourceType!,
                )
              : CommoditySourceTypesData(),
        );

  EwcControl toEwcControl() => EwcControl(
        enabled: enabled.value,
        enablePartyWasteStream: enablePartyWasteStream.value,
        commoditySourceTypeId: commoditySourceType.value?.id.value,
      );

  late final ValueNotifier<bool> enabled;
  late final ValueNotifier<bool> enablePartyWasteStream;
  late final ValueNotifier<CommoditySourceTypesData?> commoditySourceType;
}
