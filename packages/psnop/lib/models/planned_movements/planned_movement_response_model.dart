import 'package:json_annotation/json_annotation.dart';
import 'package:psnop/models/planned_movements/planned_movements.dart';

part 'planned_movement_response_model.g.dart';

@JsonSerializable()
class PlannedMovementResponseModel {
  PlannedMovementResponseModel({
    required this.plannedMovements,
  });

  factory PlannedMovementResponseModel.empty() => PlannedMovementResponseModel(
        plannedMovements: [],
      );

  /// Connect the generated [_$PlannedMovementResponseModelFromJson] function
  /// to the `fromJson`factory.
  factory PlannedMovementResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PlannedMovementResponseModelFromJson(json);

  /// Connect the generated [_$PlannedMovementResponseModelToJson] function
  /// to the `toJson` method.
  Map<String, dynamic> toJson() => _$PlannedMovementResponseModelToJson(this);

  List<PlannedMovements> plannedMovements;
}
