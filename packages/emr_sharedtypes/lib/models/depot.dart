import 'package:json_annotation/json_annotation.dart';

part 'depot.g.dart';

@JsonSerializable()
class Depot {
  const Depot(
    this.code,
    this.name, {
    this.yardCode,
    this.gradeType,
    this.id,
    this.cmpCode,
  });

  factory Depot.any() => const Depot(
        'ANY',
        'ANY',
        yardCode: 'ANY',
        gradeType: 'ANY',
      );

  factory Depot.empty() => const Depot(
        '',
        '',
      );

  factory Depot.fromJson(Map<String, dynamic> json) => _$DepotFromJson(json);

  Map<String, dynamic> toJson() => _$DepotToJson(this);

  final String? id;

  final String code;

  final String name;

  final String? yardCode;

  final String? gradeType;

  final String? cmpCode;
}
