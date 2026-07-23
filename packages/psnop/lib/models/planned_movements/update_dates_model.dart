import 'package:json_annotation/json_annotation.dart';
import 'package:psnop/models/planned_movements/planned_movements.dart';

part 'update_dates_model.g.dart';

@JsonSerializable()
class UpdateDatesModel {
  UpdateDatesModel({
    required this.plannedMovements,
    required this.newRequestedDate,
  });

  factory UpdateDatesModel.empty() => UpdateDatesModel(
        plannedMovements: [],
        newRequestedDate: DateTime.now(),
      );

  /// Connect the generated [_$UpdateDatesModelFromJson] function
  /// to the `fromJson`factory.
  factory UpdateDatesModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateDatesModelFromJson(json);

  /// Connect the generated [_$UpdateDatesModelToJson] function
  /// to the `toJson` method.
  Map<String, dynamic> toJson() => _$UpdateDatesModelToJson(this);

  List<PlannedMovements> plannedMovements;
  DateTime newRequestedDate;
}
