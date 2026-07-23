import 'package:json_annotation/json_annotation.dart';

part 'containers.g.dart';
@JsonSerializable(fieldRename: FieldRename.none)
class Containers {
  Containers({
    this.typeId,
    this.assetNumber,
    this.containerType,
  });

  factory Containers.fromJson(Map<String, dynamic> json) =>
_$ContainersFromJson(json);

Map<String, dynamic> toJson() => _$ContainersToJson(this);

  String? containerType;
  String? assetNumber;
  int? typeId;
}
