enum LeadSourceEnum {
  none('None'),
  carTakeBack('Car Take Back'),
  scrapCarComparison('Scrap Car Comparison'),
  auction('Auction'),
  emrVehicleRecycling('EMR Vehicle Recycling'),
  b2b('B2B');

  const LeadSourceEnum(this.label);

  final String label;

  static String getLabel(String value) => switch (value) {
        'none' => none.label,
        'cartakeback' => carTakeBack.label,
        'scrapcarcomparison' => scrapCarComparison.label,
        'auction' => auction.label,
        'emrvehiclerecycling' => emrVehicleRecycling.label,
        'b2b' => b2b.label,
        _ => value,
      };
}

LeadSourceEnum leadSourceFromJson(String? value) {
  switch (value) {
    case 'SCRAP_CAR_COMPARISON':
      return LeadSourceEnum.scrapCarComparison;
    case 'CAR_TAKE_BACK':
      return LeadSourceEnum.carTakeBack;
    case 'AUCTION':
      return LeadSourceEnum.auction;
    case 'EMR_VEHICLE_RECYCLING':
      return LeadSourceEnum.emrVehicleRecycling;
    case 'B2B':
      return LeadSourceEnum.b2b;
    case 'NONE':
    default:
      return LeadSourceEnum.none;
  }
}

String leadSourceToJson(LeadSourceEnum? type) {
  switch (type) {
    case LeadSourceEnum.scrapCarComparison:
      return 'SCRAP_CAR_COMPARISON';
    case LeadSourceEnum.carTakeBack:
      return 'CAR_TAKE_BACK';
    case LeadSourceEnum.auction:
      return 'AUCTION';
    case LeadSourceEnum.emrVehicleRecycling:
      return 'EMR_VEHICLE_RECYCLING';
    case LeadSourceEnum.b2b:
      return 'B2B';
    case LeadSourceEnum.none:
      return 'NONE';
    case null:
      return 'NONE';
  }
}
