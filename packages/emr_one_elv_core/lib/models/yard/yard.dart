import 'package:emr_one_elv_core/models/yard/yard_models.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

Yard? yardFromApi(ApiYard? apiYard) {
  if (apiYard == null) return null;
  return Yard(
    yardCode: apiYard.code,
    name: apiYard.name,
    shortName: apiYard.name,
  );
}

YardExtension yardExtentionFromApi(ApiYard apiYard) {
  return YardExtension(
    yard: Yard(
      yardCode: apiYard.code,
      name: apiYard.name,
      shortName: apiYard.name,
    ),
    drivingDistance: apiYard.drivingDistance,
    geodeticDistance: apiYard.geodeticDistance,
  );
}

class YardExtension {
  YardExtension({
    required this.drivingDistance,
    required this.geodeticDistance,
    required this.yard,
  });
  final Distance? drivingDistance;
  final Distance? geodeticDistance;
  final Yard yard;
}
