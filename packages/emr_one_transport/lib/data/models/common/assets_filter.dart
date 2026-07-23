import 'package:json_annotation/json_annotation.dart';

part 'assets_filter.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class AssetsFilter {
  AssetsFilter({
    this.yardCodes,
    this.conditions,
    this.statuses,
    this.assetTypes,
    this.haulierCodes,
  });

  factory AssetsFilter.fromJson(Map<String, dynamic> json) =>
      _$AssetsFilterFromJson(json);

  Map<String, dynamic> toJson() => _$AssetsFilterToJson(this);

  List<String>? yardCodes;
  List<String>? conditions;
  List<String>? statuses;
  List<String>? assetTypes;
  List<String>? haulierCodes;
}
