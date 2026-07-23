// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'depots_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DepotsModel _$DepotsModelFromJson(Map<String, dynamic> json) => DepotsModel(
      depotNumber: json['depotNumber'] as String?,
      depotName: json['depotName'] as String?,
      depotShortName: json['depotShortName'] as String?,
      territoryCode: json['territoryCode'] as String?,
    );

Map<String, dynamic> _$DepotsModelToJson(DepotsModel instance) =>
    <String, dynamic>{
      'depotNumber': instance.depotNumber,
      'depotName': instance.depotName,
      'depotShortName': instance.depotShortName,
      'territoryCode': instance.territoryCode,
    };
