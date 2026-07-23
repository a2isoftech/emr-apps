// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'depot_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DepotResponseModel _$DepotResponseModelFromJson(Map<String, dynamic> json) =>
    DepotResponseModel(
      depotName: json['depotName'] as String,
      depotNumber: json['depotNumber'] as String,
      depotShortName: json['depotShortName'] as String,
      territoryCode: json['territoryCode'] as String,
    );

Map<String, dynamic> _$DepotResponseModelToJson(DepotResponseModel instance) =>
    <String, dynamic>{
      'depotNumber': instance.depotNumber,
      'depotName': instance.depotName,
      'depotShortName': instance.depotShortName,
      'territoryCode': instance.territoryCode,
    };
