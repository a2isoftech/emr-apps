// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_to_market_grid_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteToMarketGridModel _$RouteToMarketGridModelFromJson(
        Map<String, dynamic> json) =>
    RouteToMarketGridModel(
      id: (json['id'] as num).toInt(),
      createdBy: json['createdBy'] as String,
      createdDate: DateTime.parse(json['createdDate'] as String),
      active: json['active'] as bool,
      depotNo: json['depotNo'] as String?,
      grade: json['grade'] as String?,
      route: json['route'] as String?,
      modifiedDate: json['modifiedDate'] == null
          ? null
          : DateTime.parse(json['modifiedDate'] as String),
      effectiveDate: json['effectiveDate'] == null
          ? null
          : DateTime.parse(json['effectiveDate'] as String),
      modifiedBy: json['modifiedBy'] as String?,
      changeHistories: (json['changeHistories'] as List<dynamic>?)
          ?.map((e) => ChangeHistoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RouteToMarketGridModelToJson(
        RouteToMarketGridModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'depotNo': instance.depotNo,
      'grade': instance.grade,
      'route': instance.route,
      'createdDate': instance.createdDate.toIso8601String(),
      'modifiedDate': instance.modifiedDate?.toIso8601String(),
      'effectiveDate': instance.effectiveDate?.toIso8601String(),
      'createdBy': instance.createdBy,
      'modifiedBy': instance.modifiedBy,
      'active': instance.active,
      'changeHistories': instance.changeHistories,
    };
