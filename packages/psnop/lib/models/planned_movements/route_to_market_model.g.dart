// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_to_market_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteToMarketModel _$RouteToMarketModelFromJson(Map<String, dynamic> json) =>
    RouteToMarketModel(
      originDepot: json['originDepot'] as String?,
      destinationDepot: json['destinationDepot'] as String?,
      grade: json['grade'] as String?,
      numberOfLoads: (json['numberOfLoads'] as num?)?.toInt(),
      weightPerLoad: (json['weightPerLoad'] as num?)?.toDouble(),
      movementDate: json['movementDate'] == null
          ? null
          : DateTime.parse(json['movementDate'] as String),
      comments: json['comments'] as String?,
    );

Map<String, dynamic> _$RouteToMarketModelToJson(RouteToMarketModel instance) =>
    <String, dynamic>{
      'originDepot': instance.originDepot,
      'destinationDepot': instance.destinationDepot,
      'grade': instance.grade,
      'numberOfLoads': instance.numberOfLoads,
      'weightPerLoad': instance.weightPerLoad,
      'movementDate': instance.movementDate?.toIso8601String(),
      'comments': instance.comments,
    };
