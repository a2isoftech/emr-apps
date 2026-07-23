import 'package:json_annotation/json_annotation.dart';

part 'haulier.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class Haulier {
  Haulier({
    required this.code,
    required this.name,
    this.isManaged = false,
    this.isThirdParty = false,
  });

  factory Haulier.fromJson(Map<String, dynamic> json) =>
      _$HaulierFromJson(json);

  Map<String, dynamic> toJson() => _$HaulierToJson(this);

  String code;
  String name;
  bool isManaged;
  bool isThirdParty;
}
