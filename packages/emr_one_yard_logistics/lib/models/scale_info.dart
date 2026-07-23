import 'package:json_annotation/json_annotation.dart';

part 'scale_info.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class ScaleInfo {
  ScaleInfo({
    required this.yardId,
    required this.alias,
    required this.name,
    required this.url,
    required this.createdByName,
    required this.createdBy,
    required this.id,
    this.assetCode,
  });

  factory ScaleInfo.fromJson(Map<String, dynamic> json) =>
      _$ScaleInfoFromJson(json);

  final String yardId;
  final String alias;
  final String name;
  final String url;
  final String createdByName;
  final String createdBy;
  final String id;
  final String? assetCode;

  Map<String, dynamic> toJson() => _$ScaleInfoToJson(this);
}
