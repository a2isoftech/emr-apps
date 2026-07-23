import 'package:emr_one_data_management/screens/screens.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/foundation.dart';

class ElvSettingsData {
  ElvSettingsData({
    ProductData? product,
    InventoryLocation? location,
    List<LeadSource>? enforceELVInspectionForLeadSources,
  })  : product = ValueNotifier(product),
        location = ValueNotifier(location),
        enforceELVInspectionForLeadSources =
            ValueNotifier(enforceELVInspectionForLeadSources ?? []);

  ElvSettingsData.fromElvSettings(ElvSettings elvSettings)
      : product = ValueNotifier(
          elvSettings.product != null
              ? ProductData.fromProduct(elvSettings.product!)
              : null,
        ),
        location = ValueNotifier(elvSettings.location),
        enforceELVInspectionForLeadSources =
            ValueNotifier(elvSettings.enforceELVInspectionForLeadSources ?? []);

  ElvSettings toElvSettings() {
    return ElvSettings(
      productId: product.value?.id.value,
      locationId: location.value?.id,
      enforceELVInspectionForLeadSources:
          enforceELVInspectionForLeadSources.value,
    );
  }

  late final ValueNotifier<ProductData?> product;
  late final ValueNotifier<InventoryLocation?> location;
  late final ValueNotifier<List<LeadSource>> enforceELVInspectionForLeadSources;
}
