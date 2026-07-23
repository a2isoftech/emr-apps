import 'package:json_annotation/json_annotation.dart';

part 'techemet_catalytic_converter.g.dart';

@JsonSerializable()
class TechemetCatalyticConverter {
  TechemetCatalyticConverter({required this.sealNo, required this.serial});

  factory TechemetCatalyticConverter.fromJson(Map<String, dynamic> json) =>
      _$TechemetCatalyticConverterFromJson(json);

  Map<String, dynamic> toJson() => _$TechemetCatalyticConverterToJson(this);

  final String sealNo;
  final String serial;
}
