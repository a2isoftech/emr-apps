import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class ManualLocationUpdate {
  ManualLocationUpdate({
    required this.locationId,
    this.weights = const [],
  });
  String locationId;
  List<ManualWeight> weights;
}

class ManualWeight {
  ManualWeight({
    required this.id,
    required this.title,
    this.audited,
    this.grossWeight,
  });
  int id;
  String title;
  UomValue? grossWeight;
  Audited? audited;
}

class Audited {
  Audited({
    this.userInfoId,
    this.userName,
    this.at,
  });

  String? userInfoId;
  String? userName;
  DateTime? at;
}
