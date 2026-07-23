// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_loads_filter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LiveLoadsFilterModel _$LiveLoadsFilterModelFromJson(
        Map<String, dynamic> json) =>
    LiveLoadsFilterModel(
      search: json['search'] == null
          ? null
          : LiveLoadsSearchModel.fromJson(
              json['search'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LiveLoadsFilterModelToJson(
        LiveLoadsFilterModel instance) =>
    <String, dynamic>{
      'search': instance.search,
    };
