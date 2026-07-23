// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'truck_filter_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TruckFilterState _$TruckFilterStateFromJson(Map<String, dynamic> json) =>
    TruckFilterState(
      selectedYardCodes: (json['selectedYardCodes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$TruckFilterStateToJson(TruckFilterState instance) =>
    <String, dynamic>{
      'selectedYardCodes': instance.selectedYardCodes,
    };
