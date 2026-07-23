import 'dart:core';

import 'package:json_annotation/json_annotation.dart';

part 'user_thirdparty_hauliers.g.dart';
@JsonSerializable(fieldRename: FieldRename.none)
class UserThirdPartyHauliers {
  UserThirdPartyHauliers(
    this.accountId,{
    this.haulierCode,
    this.haulierName,
    this.isMyThirdPartyHaulier,
  });

  factory UserThirdPartyHauliers.fromJson(Map<String, dynamic> json) =>
  _$UserThirdPartyHauliersFromJson(json);

  String accountId;
  String? haulierCode;
  String? haulierName;
  bool? isMyThirdPartyHaulier;

  Map<String, dynamic> toJson() => _$UserThirdPartyHauliersToJson(this);
}
