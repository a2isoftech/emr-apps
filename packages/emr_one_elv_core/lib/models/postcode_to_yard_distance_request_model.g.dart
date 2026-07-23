// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postcode_to_yard_distance_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostcodeToYardDistanceRequestModel _$PostcodeToYardDistanceRequestModelFromJson(
  Map<String, dynamic> json,
) => PostcodeToYardDistanceRequestModel(
  postcode: json['postcode'] as String,
  yardCodes: (json['yardCodes'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$PostcodeToYardDistanceRequestModelToJson(
  PostcodeToYardDistanceRequestModel instance,
) => <String, dynamic>{
  'postcode': instance.postcode,
  'yardCodes': instance.yardCodes,
};
