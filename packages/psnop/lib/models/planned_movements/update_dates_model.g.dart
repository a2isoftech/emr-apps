// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_dates_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateDatesModel _$UpdateDatesModelFromJson(Map<String, dynamic> json) =>
    UpdateDatesModel(
      plannedMovements: (json['plannedMovements'] as List<dynamic>)
          .map((e) => PlannedMovements.fromJson(e as Map<String, dynamic>))
          .toList(),
      newRequestedDate: DateTime.parse(json['newRequestedDate'] as String),
    );

Map<String, dynamic> _$UpdateDatesModelToJson(UpdateDatesModel instance) =>
    <String, dynamic>{
      'plannedMovements': instance.plannedMovements,
      'newRequestedDate': instance.newRequestedDate.toIso8601String(),
    };
