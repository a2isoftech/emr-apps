import 'package:json_annotation/json_annotation.dart';

part 'save_container_asset_number.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class SaveContainerAssetNumber {
  SaveContainerAssetNumber(
    this.jobNumber,
    this.containerGuid,
    this.assetNumber,
  );

  factory SaveContainerAssetNumber.fromJson(Map<String, dynamic> json) =>
      _$SaveContainerAssetNumberFromJson(json);

  Map<String, dynamic> toJson() => _$SaveContainerAssetNumberToJson(this);

  final int jobNumber;
  final String containerGuid;
  final String assetNumber;
}
