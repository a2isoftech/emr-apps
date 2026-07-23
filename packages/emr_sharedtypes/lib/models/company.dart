import 'package:emr_sharedtypes/models/territory.dart';
import 'package:json_annotation/json_annotation.dart';

part 'company.g.dart';

@JsonSerializable()
class Company {
  Company({
    required this.id,
    this.code = '',
    this.shortName = '',
    this.fullName = '',
    this.territoryCode = '',
    this.territoryId = '',
    this.territory,
    this.active = true,
    this.chequeSignatures = const <String>[],
    this.valueRequiredForTwoSignaturesOnCheque = 999999,
  });

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyToJson(this);

  final String id;
  final bool active;
  final String code;
  final String shortName;
  final String fullName;
  final String territoryCode;
  final String territoryId;
  final Territory? territory;
  final List<String> chequeSignatures;
  final double valueRequiredForTwoSignaturesOnCheque;
}
