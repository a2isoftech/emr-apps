import 'package:emr_one_data_management/screens/screens.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/foundation.dart';

class CanModeData {
  CanModeData({
    bool? enabled,
    ProductData? product,
    InventoryLocation? location,
  })  : enabled = ValueNotifier(enabled ?? false),
        product = ValueNotifier(product),
        location = ValueNotifier(location);

  CanModeData.fromCanMode(CanMode canMode)
      : enabled = ValueNotifier(canMode.enabled),
        product = ValueNotifier(
          canMode.product != null
              ? ProductData.fromProduct(canMode.product!)
              : null,
        ),
        location = ValueNotifier(canMode.location);

  CanMode toCanMode() {
    return CanMode(
      enabled: enabled.value,
      productId: product.value?.id.value,
      locationId: location.value?.id,
    );
  }

  late final ValueNotifier<bool> enabled;
  late final ValueNotifier<ProductData?> product;
  late final ValueNotifier<InventoryLocation?> location;
}
