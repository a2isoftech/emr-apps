import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class PartTypeMapper {
  static String getCategory(Enum$PartType partType, BuildContext context) {
    switch (partType) {
      case Enum$PartType.ALLOY_WHEEL:
      case Enum$PartType.STEEL_WHEEL:
      case Enum$PartType.CATALYTIC_CONVERTER:
      case Enum$PartType.BATTERY:
        return context.l10n.scrapParts;
      case Enum$PartType.AIRBAG:
      case Enum$PartType.UNKNOWN:
      case Enum$PartType.FUEL:
      case Enum$PartType.ENGINE_OIL:
      case Enum$PartType.SUSPENSION_OIL:
      case Enum$PartType.BRAKE_FLUID:
      case Enum$PartType.AIR_CON_GAS:
      case Enum$PartType.COOLANT_ANTIFREEZE:
      case Enum$PartType.OIL_FILTER:
      case Enum$PartType.OTHER:
        return context.l10n.depollutants;
      case Enum$PartType.$unknown:
      case Enum$PartType.CAR_BODY:
      case Enum$PartType.CHROME_WHEEL:
        throw UnimplementedError();
    }
  }
}
