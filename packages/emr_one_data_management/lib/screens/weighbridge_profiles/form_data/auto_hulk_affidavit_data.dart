import 'package:emr_one_data_management/screens/weighbridge_profiles/form_data/product_data.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class AutoHulkAffidavitData {
  AutoHulkAffidavitData({bool? enabled, List<ProductData>? productData})
    : enabled = ValueNotifier(enabled ?? false),
      productData = ValueNotifier(productData ?? []);

  AutoHulkAffidavitData.fromAutoHulkAffidavit(AutoHulkAffidavit data)
    : enabled = ValueNotifier(data.enabled),
      productData = ValueNotifier(
        data.allowedProducts.map(ProductData.fromProduct).toList(),
      );

  AutoHulkAffidavit toAutoHulkAffidavit() {
    return AutoHulkAffidavit(
      enabled: enabled.value,
      allowedProductIds: productData.value.map((x) => x.id.value).toList(),
      allowedProducts: productData.value
          .map(
            (x) => Product(
              id: x.id.value,
              code: x.code.value,
              description: x.description.value,
            ),
          )
          .toList(),
    );
  }

  late final ValueNotifier<bool> enabled;
  late final ValueNotifier<List<ProductData>> productData;
}
