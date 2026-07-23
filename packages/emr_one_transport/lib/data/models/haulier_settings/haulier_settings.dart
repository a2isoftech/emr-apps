import 'dart:core';

import 'package:json_annotation/json_annotation.dart';

part 'haulier_settings.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class HaulierSettings {
  HaulierSettings(
    this.accountId, {
    this.accountNo,
    this.name,
    this.isManagedHaulier,
    this.isThirdPartyHaulier,
  });

  factory HaulierSettings.fromJson(Map<String, dynamic> json) =>
      _$HaulierSettingsFromJson(json);

  String accountId;
  String? accountNo;
  String? name;
  bool? isManagedHaulier;
  bool? isThirdPartyHaulier;

  Map<String, dynamic> toJson() => _$HaulierSettingsToJson(this);
}
