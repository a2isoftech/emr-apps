import 'dart:core';

import 'package:json_annotation/json_annotation.dart';

part 'user_preference_thirdparty_haulier_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class UserPreferenceThirdPartyHaulierRequest {
  UserPreferenceThirdPartyHaulierRequest(
    this.accountId, {
    required this.haulierCode,
    required this.haulierName,
    required this.isSelected,
  });

  factory UserPreferenceThirdPartyHaulierRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$UserPreferenceThirdPartyHaulierRequestFromJson(json);

  String accountId;
  String haulierCode;
  String haulierName;
  bool isSelected;

  Map<String, dynamic> toJson() =>
      _$UserPreferenceThirdPartyHaulierRequestToJson(this);
}
