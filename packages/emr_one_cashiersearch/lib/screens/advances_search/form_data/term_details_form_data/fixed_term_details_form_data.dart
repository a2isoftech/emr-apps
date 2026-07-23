import 'package:emr_one_cashiersearch/common/enums.dart';
import 'package:emr_one_cashiersearch/models/term_details/term_details.dart';
import 'package:flutter/material.dart';

class FixedTermDetailsFormData {
  FixedTermDetailsFormData({
    required AdvanceTermType termType,
    double? amount,
  }) {
    this.termType = ValueNotifier(termType);
    this.amount = ValueNotifier(amount);
  }

  factory FixedTermDetailsFormData.fromFixedTermDetails(
    FixedTermDetails model,
  ) =>
      FixedTermDetailsFormData(termType: model.termType, amount: model.amount);

  FixedTermDetails toFixedTermDetails() =>
      FixedTermDetails(termType: termType.value, amount: amount.value ?? 0.0);

  late final ValueNotifier<double?> amount;
  late final ValueNotifier<AdvanceTermType> termType;
}
