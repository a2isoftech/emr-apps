import 'package:json_annotation/json_annotation.dart';

part 'instructions_to_move_depot_total_model.g.dart';

@JsonSerializable()
class InstructionsToMoveDepotTotalModel {
  InstructionsToMoveDepotTotalModel({
    required this.depot,
    required this.tonnesToMove,
    required this.loadsToMove,
    required this.remainingTonnesToMove,
    required this.remainingLoadsToMove,
  });

  // Connect the generated [_$InstructionsToMoveDepotTotalModelFromJson]
  //function to the `fromJson` factory.
  factory InstructionsToMoveDepotTotalModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$InstructionsToMoveDepotTotalModelFromJson(json);

  /// Connect the generated [_$InstructionsToMoveDepotTotalModelToJson]
  /// function to the `toJson` method.
  Map<String, dynamic> toJson() =>
      _$InstructionsToMoveDepotTotalModelToJson(this);

  String depot;
  double tonnesToMove;
  double loadsToMove;
  double remainingTonnesToMove;
  double remainingLoadsToMove;
}
