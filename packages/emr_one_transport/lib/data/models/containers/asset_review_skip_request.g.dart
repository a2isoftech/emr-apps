// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_review_skip_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssetReviewSkipRequest _$AssetReviewSkipRequestFromJson(
        Map<String, dynamic> json) =>
    AssetReviewSkipRequest(
      jobNumber: (json['jobNumber'] as num).toInt(),
      jobContainerGuid: json['jobContainerGuid'] as String,
      reasonCode: json['reasonCode'] as String,
      reasonText: json['reasonText'] as String,
      comments: json['comments'] as String?,
    );

Map<String, dynamic> _$AssetReviewSkipRequestToJson(
        AssetReviewSkipRequest instance) =>
    <String, dynamic>{
      'jobNumber': instance.jobNumber,
      'jobContainerGuid': instance.jobContainerGuid,
      'reasonCode': instance.reasonCode,
      'reasonText': instance.reasonText,
      'comments': instance.comments,
    };
