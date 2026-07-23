import 'package:emr_sharedtypes/constants.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class AdjustTag {
  AdjustTag(
    this.tagName,
    this.tagDelta,
    this.startDate,
    this.endDate,
  );
  ValueUomPair tagDelta;
  String tagName;
  DateTime? startDate;
  DateTime? endDate;
}
