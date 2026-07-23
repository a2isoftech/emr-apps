import 'package:emr_one_elv_core/models/models.dart';
import 'package:emr_one_elv_core/models/quote_models/active_quote.dart';
import 'package:flutter/material.dart';

extension $ActiveQuote on ActiveQuote {
  double getCatValue() {
    return catValue ?? 0.0;
  }

  bool hasTechemetCatConverter() => hasTechemetCat ?? false;
}

extension $VehicleDescription on VehicleDetail {
  String getSummary(ElvTerritory activeTerritory, BuildContext context) {
    final identitifierTitle = activeTerritory.vehicleIdentifierTitle(context);
    final identifier = this.identifier(activeTerritory);

    return ['$make $model ($year)', '$identitifierTitle: $identifier']
        .where((element) => element.isNotEmpty)
        .join(' ');
  }

  String getSubSummary() {
    return [
      fuelType,
      transmission,
      variant,
      bodyType,
      if (year != null) '$year' else '',
      if (engineSize != null) '$engineSize' else '',
    ].where((element) => (element ?? '').isNotEmpty).join(' ');
  }

  String getMMY() {
    return ['$make $model ($year)']
        .where((element) => element.isNotEmpty)
        .join(' ');
  }
}
