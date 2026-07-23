import 'package:json_annotation/json_annotation.dart';

enum PrintForTicketDirections {
  @JsonValue('INWARD')
  inward,
  @JsonValue('OUTWARD')
  outward,
  @JsonValue('INWARD_AND_OUTWARD')
  inwardAndOutward,
}

enum TicketPrintType {
  @JsonValue('TRADER')
  trader,
  @JsonValue('EMR')
  emr,
  @JsonValue('BOL')
  bol,
}

enum RoundingOption {
  noRounding,
  roundUp,
  roundDown;
}

enum LeadSource {
  @JsonValue('NONE')
  none,
  @JsonValue('SCRAP_CAR_COMPARISON')
  scrapCarComparison,
  @JsonValue('CAR_TAKE_BACK')
  carTakeBack,
  @JsonValue('AUCTION')
  auction,
  @JsonValue('EMR_VEHICLE_RECYCLING')
  emrVehicleRecycling,
  @JsonValue('B2B')
  b2b
}

enum HwcnLevel {
  @JsonValue('OFF')
  off,
  @JsonValue('WARN')
  warn,
  @JsonValue('ENFORCE')
  enforce
}

enum ShowWeightMode {
  @JsonValue('PAID_WEIGHT_ONLY')
  paidWeightOnly,
  @JsonValue('TARE_AND_WEIGHT_DEDUCTION')
  tareAndWeightDeduction,
  @JsonValue('FULL_WEIGHT_DETAILS')
  fullWeightDetails
}
