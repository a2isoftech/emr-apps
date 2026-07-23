import 'package:json_annotation/json_annotation.dart';

part 'asset_review_skip_detail.g.dart';

@JsonSerializable()
class AssetReviewSkipDetail {
  AssetReviewSkipDetail({
    required this.reasonCode,
    required this.reasonText,
    this.comments,
  });

  factory AssetReviewSkipDetail.fromJson(Map<String, dynamic> json) =>
      _$AssetReviewSkipDetailFromJson(json);

  final String reasonCode;

  final String reasonText;

  final String? comments;

  Map<String, dynamic> toJson() => _$AssetReviewSkipDetailToJson(this);
}
