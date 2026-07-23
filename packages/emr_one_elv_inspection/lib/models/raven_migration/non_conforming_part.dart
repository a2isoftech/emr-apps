import 'package:emr_one_elv_inspection/enums/non_conforming_part_enum.dart';
import 'package:emr_sharedtypes/models/media_asset.dart';
import 'package:json_annotation/json_annotation.dart';

part 'non_conforming_part.g.dart';

@JsonSerializable()
class NonConformingPart {
  NonConformingPart({
    required this.partKey,
    required this.partName,
    required this.partPhotos,
  });

  factory NonConformingPart.fromJson(Map<String, dynamic> json) =>
      _$NonConformingPartFromJson(json);

  Map<String, dynamic> toJson() => _$NonConformingPartToJson(this);

  String partKey;
  @JsonKey(
    name: 'partName',
    fromJson: nonConformingPartEnumFromJson,
    toJson: nonConformingPartEnumToJson,
  )
  NonConformingPartEnum partName;
  List<MediaAsset> partPhotos;
}
