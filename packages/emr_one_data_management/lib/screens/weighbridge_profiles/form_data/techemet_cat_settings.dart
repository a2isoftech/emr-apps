import 'package:emr_one_data_management/screens/screens.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/foundation.dart';

class TechemetCatSettingsData {
  TechemetCatSettingsData({
    bool? enabled,
    double? defaultWeight,
    Uom? defaultWeightUom,
    ProductData? defaultProduct,
    InventoryLocation? defaultLocation,
  })  : enabled = ValueNotifier(enabled ?? false),
        defaultWeight = ValueNotifier(defaultWeight),
        defaultWeightUom = ValueNotifier(defaultWeightUom),
        defaultProduct = ValueNotifier(defaultProduct),
        defaultLocation = ValueNotifier(defaultLocation);

  TechemetCatSettingsData.fromTechemetCatSettings(TechemetCatSettings settings)
      : enabled = ValueNotifier(settings.enabled),
        defaultWeight = ValueNotifier(settings.defaultWeight),
        defaultWeightUom = ValueNotifier(settings.defaultWeightUom),
        defaultProduct = ValueNotifier(
          settings.defaultProduct != null
              ? ProductData.fromProduct(settings.defaultProduct!)
              : null,
        ),
        defaultLocation = ValueNotifier(settings.defaultLocation);

  TechemetCatSettings toTechemetCatSettings() {
    return TechemetCatSettings(
      enabled: enabled.value,
      defaultWeight: defaultWeight.value,
      defaultWeightUom: defaultWeightUom.value,
      defaultProductId: defaultProduct.value?.id.value,
      defaultLocationId: defaultLocation.value?.id,
    );
  }

  late final ValueNotifier<bool> enabled;
  late final ValueNotifier<double?> defaultWeight;
  late final ValueNotifier<Uom?> defaultWeightUom;
  late final ValueNotifier<ProductData?> defaultProduct;
  late final ValueNotifier<InventoryLocation?> defaultLocation;
}
