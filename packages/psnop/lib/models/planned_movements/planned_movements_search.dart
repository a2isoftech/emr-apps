import 'package:json_annotation/json_annotation.dart';
import 'package:psnop/models/depot_search/depot_search_model.dart';

part 'planned_movements_search.g.dart';

@JsonSerializable()
class PlannedMovementsSearchModel extends DepotSearchModel {
  PlannedMovementsSearchModel({
    required super.weeks,
    required this.contract,
    required this.destinations,
    required super.depotNos,
    required super.depotRegionNames,
    required this.dueTo,
    required this.dueFrom,
    required super.ignoreZeroHeaps,
    required this.movementType,
    required this.transportStatus,
    required this.parties,
    required this.transport,
    required this.refs,
    required this.priority,
    required this.weight,
    required this.heaps,
    required this.transportPlanId,
    required this.requestedDate,
    super.gradeGroups,
    super.grades,
    super.gradeTypes,
  });

  PlannedMovementsSearchModel.fromMap(super.map)
      : contract = map['contract'],
        destinations = map['destinations'],
        dueTo = DateTime.tryParse(['dueTo'].last),
        dueFrom = DateTime.tryParse(['dueFrom'].last),
        movementType = map['movementType'],
        transportStatus = map['transportStatus'],
        parties = map['parties'],
        transport = map['transport']?.last,
        refs = map['refs'] as List<int>?,
        priority = int.tryParse(map['priority']?.last ?? ''),
        weight = double.tryParse(map['weight']?.last ?? ''),
        heaps = map['heaps'],
        transportPlanId = int.tryParse(map['transportPlanId']?.last ?? ''),
        requestedDate = DateTime.tryParse(['requestedDate'].last),
        super.fromMap();

  /// Connect the generated [_$PlannedMovementsSearchModelFromJson] function to
  /// the `fromJson` factory.
  factory PlannedMovementsSearchModel.fromJson(Map<String, dynamic> json) =>
      _$PlannedMovementsSearchModelFromJson(json);

  /// Connect the generated [_$PlannedMovementsSearchModelToJson] function to
  /// the `toJson` method.
  @override
  Map<String, dynamic> toJson() => _$PlannedMovementsSearchModelToJson(this);

  DateTime? dueTo;
  DateTime? dueFrom;
  List<String>? contract;
  List<String>? destinations;
  List<String>? movementType;
  List<String>? transportStatus;
  List<String>? parties;
  String? transport;
  List<int>? refs;
  int? priority;
  double? weight;
  List<String>? heaps;
  int? transportPlanId;
  DateTime? requestedDate;
}
