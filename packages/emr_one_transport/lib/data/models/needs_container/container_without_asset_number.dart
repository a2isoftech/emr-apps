import 'package:emr_one_transport/data/models/containers/asset_review_skip_detail.dart';
import 'package:json_annotation/json_annotation.dart';

part 'container_without_asset_number.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class ContainerWithoutAssetNumber {
  ContainerWithoutAssetNumber(
    this.jobNumber,
    this.jobCompletionDate,
    this.containerGuid,
    this.images,
    this.assetNumberReviewSkipDetail,
  );

  factory ContainerWithoutAssetNumber.fromJson(Map<String, dynamic> json) =>
      _$ContainerWithoutAssetNumberFromJson(json);

  Map<String, dynamic> toJson() => _$ContainerWithoutAssetNumberToJson(this);

  final int jobNumber;
  final DateTime jobCompletionDate;
  final String containerGuid;
  final List<String> images;
  final AssetReviewSkipDetail? assetNumberReviewSkipDetail;
  @JsonKey(includeFromJson: false, includeToJson: false)
  String assetNumber = '';
}
