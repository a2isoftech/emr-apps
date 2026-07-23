import 'package:json_annotation/json_annotation.dart';

part 'commodity_source_types.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class CommoditySourceTypes {
  const CommoditySourceTypes({
    required this.id,
    required this.commoditySourceTypeName,
    required this.commoditySourceTypeDescription,
  });

  factory CommoditySourceTypes.fromJson(Map<String, dynamic> json) =>
      _$CommoditySourceTypesFromJson(json);

  Map<String, dynamic> toJson() => _$CommoditySourceTypesToJson(this);

  final String id;
  final String? commoditySourceTypeName;
  final String? commoditySourceTypeDescription;
}
