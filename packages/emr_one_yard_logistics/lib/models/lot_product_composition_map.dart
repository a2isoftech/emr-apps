import 'package:emr_one_yard_logistics/models/lot_product_inner_map.dart';
import 'package:emr_one_yard_logistics/models/lot_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'lot_product_composition_map.g.dart';

@JsonSerializable()
class LotProductCompositionMap {
  LotProductCompositionMap({
    required this.outerValue,
    required this.outerValueAcronym,
    required this.innerCompositions,
    this.supportedLotTypes = const <LotType>[],
  });

  factory LotProductCompositionMap.fromJson(Map<String, dynamic> json) =>
      _$LotProductCompositionMapFromJson(json);

  final String outerValue;
  final String outerValueAcronym;
  final List<LotProductInnerMap> innerCompositions;
  final List<LotType> supportedLotTypes;

  Map<String, dynamic> toJson() => _$LotProductCompositionMapToJson(this);
}
