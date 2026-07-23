import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class LocationSnapshotModel {
  LocationSnapshotModel({
    this.snapshotDate,
    this.snapshotCount,
    this.snapshotRate,
    this.snapshotValue,
    this.snapshotWeight,
    this.unpricedWeight,
    this.snapshotDeltaWeight,
    this.unpricedDeltaWeight,
  });
  DateTime? snapshotDate;
  UomValue? snapshotWeight;
  UomValue? snapshotDeltaWeight;
  int? snapshotCount;
  UomValue? snapshotRate;
  double? snapshotValue;
  UomValue? unpricedWeight;
  UomValue? unpricedDeltaWeight;

  UomValue get totalWeight {
    final total = (snapshotWeight?.value ?? 0) +
        (snapshotDeltaWeight?.value ?? 0) +
        (unpricedWeight?.value ?? 0) +
        (unpricedDeltaWeight?.value ?? 0);
    return UomValue.weight(total, snapshotWeight?.uom ?? Uom.mt);
  }
}
