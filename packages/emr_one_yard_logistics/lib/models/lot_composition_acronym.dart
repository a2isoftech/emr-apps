import 'package:json_annotation/json_annotation.dart';

part 'lot_composition_acronym.g.dart';

@JsonSerializable()
class LotCompositionAcronym {
  LotCompositionAcronym({
    required this.key,
    required this.value,
  });

  factory LotCompositionAcronym.fromJson(Map<String, dynamic> json) =>
      _$LotCompositionAcronymFromJson(json);

  final String key;
  final String value;

  Map<String, dynamic> toJson() => _$LotCompositionAcronymToJson(this);
}
