import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class EditPrepaymentCardsFormData {
  EditPrepaymentCardsFormData(
    String? code,
    int? panDigits,
    DateTime? issueDate,
    Yard? yard, {
    required bool? active,
  }) {
    this.code = ValueNotifier(code);
    this.panDigits = ValueNotifier(panDigits);
    this.issueDate = ValueNotifier(issueDate);
    this.active = ValueNotifier(active);
    this.yard = ValueNotifier(yard);
  }

  late final ValueNotifier<String?> code;

  late final ValueNotifier<int?> panDigits;

  late final ValueNotifier<DateTime?> issueDate;

  late final ValueNotifier<bool?> active;

  late final ValueNotifier<Yard?> yard;

  static KeyValuePair<Enum$PrepayCardIssuer, String> defaultIssuerType = (
    key: Enum$PrepayCardIssuer.NONE,
    value: 'NONE',
  );

  late ValueNotifier<KeyValuePair<Enum$PrepayCardIssuer, String>> issuerType =
      ValueNotifier(defaultIssuerType);

  late final List<PrepaymentCard> prepaymentCards = [];

  void addListeners(void Function() listener) {
    code.addListener(listener);
    issuerType.addListener(listener);
    panDigits.addListener(listener);
  }

  void removeListeners(void Function() listener) {
    code.removeListener(listener);
    issuerType.removeListener(listener);
    panDigits.removeListener(listener);
  }
}
