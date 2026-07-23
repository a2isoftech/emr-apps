import 'package:emr_core_api/emr_core_api.dart';
import 'package:json_annotation/json_annotation.dart';

part 'inspection_details.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class InspectionDetails {
  InspectionDetails({
    required this.inspectionMedia,
  });

  factory InspectionDetails.fromJson(Map<String, dynamic> json) =>
      _$InspectionDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$InspectionDetailsToJson(this);

  List<InventoryMediaAsset> inspectionMedia;
}
