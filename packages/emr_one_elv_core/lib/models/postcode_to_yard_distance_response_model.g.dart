// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postcode_to_yard_distance_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostcodeToYardDistanceResponseModel
_$PostcodeToYardDistanceResponseModelFromJson(Map<String, dynamic> json) =>
    PostcodeToYardDistanceResponseModel(
      geometricDistanceInKM: (json['geometricDistanceInKM'] as num).toDouble(),
      drivingDistanceInKM: (json['drivingDistanceInKM'] as num).toDouble(),
      geometricDistanceInMiles: (json['geometricDistanceInMiles'] as num)
          .toDouble(),
      drivingDistanceInMiles: (json['drivingDistanceInMiles'] as num)
          .toDouble(),
      yardCode: json['yardCode'] as String,
    );

Map<String, dynamic> _$PostcodeToYardDistanceResponseModelToJson(
  PostcodeToYardDistanceResponseModel instance,
) => <String, dynamic>{
  'geometricDistanceInKM': instance.geometricDistanceInKM,
  'drivingDistanceInKM': instance.drivingDistanceInKM,
  'geometricDistanceInMiles': instance.geometricDistanceInMiles,
  'drivingDistanceInMiles': instance.drivingDistanceInMiles,
  'yardCode': instance.yardCode,
};
