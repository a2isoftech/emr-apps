import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'territory.g.dart';

@JsonSerializable()
class Territory extends Equatable {
  const Territory(
    this.code,
    this.name,
    this.depots, {
    this.id,
    this.active,
    this.uomId,
    this.currencyCode,
    this.defaultCompanyId,
    this.defaultCompany,
  });

  factory Territory.fromJson(Map<String, dynamic> json) =>
      _$TerritoryFromJson(json);

  Map<String, dynamic> toJson() => _$TerritoryToJson(this);

  final String? id;

  final String code;

  final String name;

  final List<Depot>? depots;

  final bool? active;

  final String? defaultCompanyId;

  final int? uomId;

  final String? currencyCode;

  final Company? defaultCompany;

  @override
  List<Object?> get props => [code];
}
