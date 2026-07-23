import 'package:json_annotation/json_annotation.dart';

part 'clone_haulier_info.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class CloneJobHaulierInfo {
  CloneJobHaulierInfo({
    required this.haulierCode,
    required this.haulierTypeId,
    this.assetNumber,
    this.vrm,
  });
  factory CloneJobHaulierInfo.fromJson(Map<String, dynamic> json) =>
      _$CloneJobHaulierInfoFromJson(json);

  Map<String, dynamic> toJson() => _$CloneJobHaulierInfoToJson(this);
  final String? assetNumber;
  final String? vrm;
  final String haulierCode;
  final String haulierTypeId;
}
