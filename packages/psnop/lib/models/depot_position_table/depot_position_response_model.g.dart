// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'depot_position_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DepotPositionResponseModel _$DepotPositionResponseModelFromJson(
        Map<String, dynamic> json) =>
    DepotPositionResponseModel(
      grandTotal:
          GrandTotalModel.fromJson(json['grandTotal'] as Map<String, dynamic>),
      regionPositionModels: (json['regionPositionModels'] as List<dynamic>)
          .map((e) => RegionPositionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DepotPositionResponseModelToJson(
        DepotPositionResponseModel instance) =>
    <String, dynamic>{
      'grandTotal': instance.grandTotal,
      'regionPositionModels': instance.regionPositionModels,
    };
