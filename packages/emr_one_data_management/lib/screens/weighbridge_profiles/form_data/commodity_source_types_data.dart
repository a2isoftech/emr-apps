import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/widgets.dart';

class CommoditySourceTypesData {
  CommoditySourceTypesData({
    String? id,
    String? commoditySourceTypeName,
    String? commoditySourceTypeDescription,
  }) {
    this.id = ValueNotifier(id);
    this.commoditySourceTypeName = ValueNotifier(commoditySourceTypeName);
    this.commoditySourceTypeDescription =
        ValueNotifier(commoditySourceTypeDescription);
  }
  CommoditySourceTypesData.fromCommoditySourceTypes(
    CommoditySourceTypes commoditySourceType,
  )   : id = ValueNotifier(commoditySourceType.id),
        commoditySourceTypeName =
            ValueNotifier(commoditySourceType.commoditySourceTypeName),
        commoditySourceTypeDescription =
            ValueNotifier(commoditySourceType.commoditySourceTypeDescription);

  CommoditySourceTypes? toCommoditySourceTypes() => CommoditySourceTypes(
        id: id.value ?? '',
        commoditySourceTypeName: commoditySourceTypeName.value,
        commoditySourceTypeDescription: commoditySourceTypeDescription.value,
      );

  late final ValueNotifier<String?> id;
  late final ValueNotifier<String?> commoditySourceTypeName;
  late final ValueNotifier<String?> commoditySourceTypeDescription;
}
