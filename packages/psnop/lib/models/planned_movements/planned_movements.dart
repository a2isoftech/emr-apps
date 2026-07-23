import 'package:json_annotation/json_annotation.dart';

part 'planned_movements.g.dart';

@JsonSerializable()
class PlannedMovements {
  PlannedMovements({
    required this.ref,
    required this.depot,
    required this.grade,
    required this.heap,
    required this.destination,
    required this.party,
    required this.contract,
    required this.transport,
    required this.priority,
    required this.onHold,
    required this.tonnes,
    required this.loads,
    required this.dueFrom,
    required this.dueTo,
    required this.requestedDate,
    required this.transportStatus,
    required this.transportPlanId,
    required this.type,
    required this.comments,
  });

  /// Connect the generated [_$PlannedMovementsFromJson] function to
  /// the `fromJson` factory.
  factory PlannedMovements.fromJson(Map<String, dynamic> json) =>
      _$PlannedMovementsFromJson(json);

  /// Connect the generated [_$PlannedMovementsToJson] function to
  /// the `toJson` method.
  Map<String, dynamic> toJson() => _$PlannedMovementsToJson(this);

  int ref;
  String depot;
  String grade;
  String heap;
  String? destination;
  String? party;
  String? contract;
  String? transport;
  int? priority;
  bool? onHold;
  double tonnes;
  int? loads;
  DateTime? dueFrom;
  DateTime? dueTo;
  DateTime? requestedDate;
  String? transportStatus;
  int? transportPlanId;
  String type;
  String? comments;

  //extensions for UI
  @JsonKey(includeFromJson: false, includeToJson: false)
  bool selected = false;
}
