import 'dart:core';

import 'package:json_annotation/json_annotation.dart';

part 'user_managed_hauliers.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class UserManagedHauliers {
  UserManagedHauliers(
    this.accountId, {
    this.haulierCode,
    this.haulierName,
    this.isMyManagedHaulier,
  });

  factory UserManagedHauliers.fromJson(Map<String, dynamic> json) =>
      _$UserManagedHauliersFromJson(json);

  String accountId;
  String? haulierCode;
  String? haulierName;
  bool? isMyManagedHaulier;

  Map<String, dynamic> toJson() => _$UserManagedHauliersToJson(this);
}
