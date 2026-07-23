import 'dart:core';

import 'package:json_annotation/json_annotation.dart';

part 'user_managed_hauliers_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class UserManagedHauliersRequest {
  UserManagedHauliersRequest(
    this.accountId, {
    this.haulierCode,
    this.haulierName,
    this.isSelected = false,
  });

  factory UserManagedHauliersRequest.fromJson(Map<String, dynamic> json) =>
      _$UserManagedHauliersRequestFromJson(json);

  String accountId;
  String? haulierCode;
  String? haulierName;
  bool isSelected;

  Map<String, dynamic> toJson() => _$UserManagedHauliersRequestToJson(this);
}
