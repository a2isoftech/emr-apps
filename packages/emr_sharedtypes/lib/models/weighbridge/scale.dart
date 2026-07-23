import 'package:emr_sharedtypes/models/weighbridge/weighbridge.dart';
import 'package:json_annotation/json_annotation.dart';

part 'scale.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class Scale {
  Scale({
    required this.name,
    required this.url,
    required this.scaleNumber,
    required this.cameras,
    required this.assetCode,
  });

  factory Scale.fromJson(Map<String, dynamic> json) => _$ScaleFromJson(json);

  Map<String, dynamic> toJson() => _$ScaleToJson(this);

  String name;
  String url;
  int scaleNumber;
  String assetCode;
  List<Camera> cameras;
}
