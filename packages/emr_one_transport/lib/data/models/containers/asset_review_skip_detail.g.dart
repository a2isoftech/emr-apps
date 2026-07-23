// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_review_skip_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssetReviewSkipDetail _$AssetReviewSkipDetailFromJson(
        Map<String, dynamic> json) =>
    AssetReviewSkipDetail(
      reasonCode: json['reasonCode'] as String,
      reasonText: json['reasonText'] as String,
      comments: json['comments'] as String?,
    );

Map<String, dynamic> _$AssetReviewSkipDetailToJson(
        AssetReviewSkipDetail instance) =>
    <String, dynamic>{
      'reasonCode': instance.reasonCode,
      'reasonText': instance.reasonText,
      'comments': instance.comments,
    };
