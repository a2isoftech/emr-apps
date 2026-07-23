import 'package:emr_core_api/emr_core_api.dart';
import 'package:flutter/widgets.dart';

extension PriceOriginTypeExtensions on Enum$PriceOriginType {
  String displayString(BuildContext context) => switch (this) {
    .DIRT => 'Dirt',
    .FIXED => 'Fixed',
    .GPL => 'GPL',
    .MANUAL => 'Manual',
    .MANUAL_WEIGHBRIDGE => 'Manual Weighbridge',
    .NONE => 'None',
    .PRICE_MATRIX => 'Price Matrix',
    .SPOT => 'Spot',
    .$unknown => '',
  };
}
