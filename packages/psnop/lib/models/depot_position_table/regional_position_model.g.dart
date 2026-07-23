// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regional_position_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegionPositionModel _$RegionPositionModelFromJson(Map<String, dynamic> json) =>
    RegionPositionModel(
      regionTotal: RegionGroupedTotalModel.fromJson(
          json['regionTotal'] as Map<String, dynamic>),
      depotPositionSummary: (json['depotPositionSummary'] as List<dynamic>)
          .map((e) =>
              DepotPositionSummaryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RegionPositionModelToJson(
        RegionPositionModel instance) =>
    <String, dynamic>{
      'regionTotal': instance.regionTotal,
      'depotPositionSummary': instance.depotPositionSummary,
    };
