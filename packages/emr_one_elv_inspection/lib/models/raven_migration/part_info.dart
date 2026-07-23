import 'package:emr_one_elv_core/models/enums/enums.dart';
import 'package:json_annotation/json_annotation.dart';

part 'part_info.g.dart';

@JsonSerializable()
class PartInfo {
  PartInfo({required this.partType, required this.partLocation});

  factory PartInfo.fromJson(Map<String, dynamic> json) =>
      _$PartInfoFromJson(json);

  Map<String, dynamic> toJson() => _$PartInfoToJson(this);

  @JsonKey(name: 'partType', fromJson: partTypeFromJson, toJson: partTypeToJson)
  PartTypeEnum partType;
  @JsonKey(
    name: 'partLocation',
    fromJson: partLocationFromJson,
    toJson: partLocationToJson,
  )
  PartLocationEnum partLocation;
}
