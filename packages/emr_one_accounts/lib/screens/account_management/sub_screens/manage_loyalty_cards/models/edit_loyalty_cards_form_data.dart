import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class EditLoyaltyCardsFormData {
  EditLoyaltyCardsFormData(
    String? code,
    String? locationCode,
    DateTime? issueDate,
  ) {
    this.code = ValueNotifier(code);
    this.locationCode = ValueNotifier(locationCode);
    this.issueDate = ValueNotifier(issueDate);
  }

  late final ValueNotifier<String?> code;

  late final ValueNotifier<String?> locationCode;

  late final ValueNotifier<DateTime?> issueDate;

  static KeyValuePair<Enum$PrepayCardIssuer, String> defaultIssuerType =
      (key: Enum$PrepayCardIssuer.NONE, value: 'NONE');

  late ValueNotifier<KeyValuePair<Enum$PrepayCardIssuer, String>> provider =
      ValueNotifier(defaultIssuerType);

  late final List<LoyaltyCard> loyaltyCards = [];

  void addListeners(void Function() listener) {
    code.addListener(listener);
    locationCode.addListener(listener);
  }

  void removeListeners(void Function() listener) {
    code.removeListener(listener);
    locationCode.removeListener(listener);
  }
}
