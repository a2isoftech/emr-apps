enum InspectionImageEnum {
  unknown,
  frontPhoto,
  rearPhoto,
  vinPhoto,
  v5LogBook,
  battery,
  lpgTank,
  rubbish,
  catalyticConverter,
}

String inspectionImageToJson(InspectionImageEnum type) {
  switch (type) {
    case InspectionImageEnum.unknown:
      return 'UNKNOWN';
    case InspectionImageEnum.frontPhoto:
      return 'FRONT_PHOTO';
    case InspectionImageEnum.rearPhoto:
      return 'REAR_PHOTO';
    case InspectionImageEnum.vinPhoto:
      return 'VIN_PHOTO';
    case InspectionImageEnum.v5LogBook:
      return 'V5_LOG_BOOK';
    case InspectionImageEnum.battery:
      return 'BATTERY';
    case InspectionImageEnum.lpgTank:
      return 'LPGTANK';
    case InspectionImageEnum.rubbish:
      return 'RUBBISH';
    case InspectionImageEnum.catalyticConverter:
      return 'CATALYTIC_CONVERTER';
  }
}
