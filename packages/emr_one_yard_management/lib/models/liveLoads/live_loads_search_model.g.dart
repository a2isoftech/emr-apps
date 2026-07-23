// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_loads_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LiveLoadsSearchModel _$LiveLoadsSearchModelFromJson(
        Map<String, dynamic> json) =>
    LiveLoadsSearchModel(
      yard: json['yard'] as String?,
      customer: json['customer'] as String?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      status: json['status'] as String?,
      search: json['search'] as String?,
    );

Map<String, dynamic> _$LiveLoadsSearchModelToJson(
        LiveLoadsSearchModel instance) =>
    <String, dynamic>{
      'yard': instance.yard,
      'customer': instance.customer,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'status': instance.status,
      'search': instance.search,
    };
