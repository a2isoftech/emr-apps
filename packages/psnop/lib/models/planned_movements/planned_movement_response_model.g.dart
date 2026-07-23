// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planned_movement_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlannedMovementResponseModel _$PlannedMovementResponseModelFromJson(
        Map<String, dynamic> json) =>
    PlannedMovementResponseModel(
      plannedMovements: (json['plannedMovements'] as List<dynamic>)
          .map((e) => PlannedMovements.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PlannedMovementResponseModelToJson(
        PlannedMovementResponseModel instance) =>
    <String, dynamic>{
      'plannedMovements': instance.plannedMovements,
    };
