// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinationResponseModel _$DestinationResponseModelFromJson(
        Map<String, dynamic> json) =>
    DestinationResponseModel(
      id: json['id'] as String,
      movementType: json['movementType'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$DestinationResponseModelToJson(
        DestinationResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'movementType': instance.movementType,
      'name': instance.name,
    };
