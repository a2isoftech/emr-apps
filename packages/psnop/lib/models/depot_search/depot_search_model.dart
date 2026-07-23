import 'package:json_annotation/json_annotation.dart';

part 'depot_search_model.g.dart';

@JsonSerializable()
class DepotSearchModel {
  DepotSearchModel({
    required this.depotRegionNames,
    required this.depotNos,
    required this.gradeGroups,
    required this.grades,
    required this.gradeTypes,
    required this.ignoreZeroHeaps,
    required this.weeks,
  });

  /// Connect the generated [_$DepotSearchModelFromJson] function to
  /// the `fromJson` factory.
  factory DepotSearchModel.fromJson(Map<String, dynamic> json) =>
      _$DepotSearchModelFromJson(json);

  DepotSearchModel.fromMap(Map<String, List<String>> map)
      : depotRegionNames = map['depotRegionNames'] ?? [],
        depotNos = map['depotNos'] ?? [],
        gradeGroups = map['gradeGroups'],
        grades = map['grades'],
        gradeTypes = map['gradeTypes'],
        ignoreZeroHeaps = map['ignoreZeroHeaps']?.last.toLowerCase() == 'true',
        weeks = int.tryParse(map['weeks']?.last ?? '2') ?? 2;

  /// Connect the generated [_$DepotSearchModelToJson] function to
  /// the `toJson` method.
  Map<String, dynamic> toJson() => _$DepotSearchModelToJson(this);

  List<String> depotRegionNames;
  List<String> depotNos;
  List<String>? gradeGroups;
  List<String>? grades;
  List<String>? gradeTypes;
  bool ignoreZeroHeaps;
  int weeks;
}
