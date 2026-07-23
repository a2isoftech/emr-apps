import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';

enum QuoteSourceEnum {
  unknown,
  quickQuote,
  vinScrap,
  quoteMyMotor,
  goGreenMotor,
  motorQuoter,
  emrVehicleRecycling
}

QuoteSourceEnum quoteSourceFromJson(String value) {
  switch (value) {
    case 'QUICK_QUOTE':
      return QuoteSourceEnum.quickQuote;
    case 'VIN_SCRAP':
      return QuoteSourceEnum.vinScrap;
    case 'QUOTE_MY_MOTOR':
      return QuoteSourceEnum.quoteMyMotor;
    case 'GO_GREEN_MOTOR':
      return QuoteSourceEnum.goGreenMotor;
    case 'MOTOR_QUOTER':
      return QuoteSourceEnum.motorQuoter;
    case 'EMR_VEHICLE_RECYCLING':
      return QuoteSourceEnum.emrVehicleRecycling;
    case 'UNKNOWN':
    default:
      return QuoteSourceEnum.unknown;
  }
}

String quoteSourceToJson(QuoteSourceEnum type) {
  switch (type) {
    case QuoteSourceEnum.quickQuote:
      return 'QUICK_QUOTE';
    case QuoteSourceEnum.vinScrap:
      return 'VIN_SCRAP';
    case QuoteSourceEnum.quoteMyMotor:
      return 'QUOTE_MY_MOTOR';
    case QuoteSourceEnum.goGreenMotor:
      return 'GO_GREEN_MOTOR';
    case QuoteSourceEnum.motorQuoter:
      return 'MOTOR_QUOTER';
    case QuoteSourceEnum.emrVehicleRecycling:
      return 'EMR_VEHICLE_RECYCLING';
    case QuoteSourceEnum.unknown:
      return 'UNKNOWN';
  }
}

extension QuoteSourceEnumExtension on QuoteSourceEnum {
  String toReadableString(BuildContext context) {
    switch (this) {
      case QuoteSourceEnum.goGreenMotor:
        return context.l10n.goGreenMotor;
      case QuoteSourceEnum.quickQuote:
        return context.l10n.quickQuote;
      case QuoteSourceEnum.vinScrap:
        return context.l10n.vinScrap;
      case QuoteSourceEnum.quoteMyMotor:
        return context.l10n.quoteMyMotor;
      case QuoteSourceEnum.motorQuoter:
        return context.l10n.motorQuoter;
      case QuoteSourceEnum.emrVehicleRecycling:
        return context.l10n.emrVehicleRecycling;
      case QuoteSourceEnum.unknown:
        return context.l10n.unknown;
    }
  }
}
