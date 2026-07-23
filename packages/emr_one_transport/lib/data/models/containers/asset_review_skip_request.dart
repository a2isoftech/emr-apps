import 'package:json_annotation/json_annotation.dart';

part 'asset_review_skip_request.g.dart';

@JsonSerializable()
class AssetReviewSkipRequest {
  AssetReviewSkipRequest({
    required this.jobNumber,
    required this.jobContainerGuid,
    required this.reasonCode,
    required this.reasonText,
    this.comments,
  });

  factory AssetReviewSkipRequest.fromJson(Map<String, dynamic> json) =>
      _$AssetReviewSkipRequestFromJson(json);
  final int jobNumber;

  final String jobContainerGuid;

  final String reasonCode;

  final String reasonText;

  final String? comments;

  Map<String, dynamic> toJson() => _$AssetReviewSkipRequestToJson(this);
}
