import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'haulier.g.dart';

@JsonSerializable()
class Haulier {
  Haulier({
    this.accountNo,
    this.isManagedHaulier,
    this.isThirdPartyHaulier,
    this.name,
    this.loads,
  }) {
    loads = loads ?? ValueNotifier<int?>(1);
  }

  factory Haulier.fromJson(Map<String, dynamic> json) =>
      _$HaulierFromJson(json);

  Map<String, dynamic> toJson() => _$HaulierToJson(this);

  final String? accountNo;
  final String? name;
  final bool? isManagedHaulier;
  final bool? isThirdPartyHaulier;
  @JsonKey(includeFromJson: false, includeToJson: false)
  ValueNotifier<int?>? loads;
}
