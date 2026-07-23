import 'package:emr_one_cashiersearch/common/enums.dart';
import 'package:emr_one_cashiersearch/models/term_details/term_details.dart';
import 'package:flutter/material.dart';

class PercentageTermDetailsFormData {
  PercentageTermDetailsFormData({
    required AdvanceTermType termType,
    double? amount,
    double? percentage,
  }) {
    this.termType = ValueNotifier(termType);
    this.percentage = ValueNotifier(percentage ?? 100.0);
    this.amount = ValueNotifier(amount);
  }

  factory PercentageTermDetailsFormData.fromPercentageTermDetails(
    PercentageTermDetails model,
  ) =>
      PercentageTermDetailsFormData(
        termType: model.termType,
        amount: model.amount,
        percentage: model.percentage,
      );

  PercentageTermDetails toPercentageTermDetails() {
    return PercentageTermDetails(
      termType: termType.value,
      amount: amount.value ?? 0.0,
      percentage: percentage.value,
    );
  }

  late final ValueNotifier<AdvanceTermType> termType;
  late final ValueNotifier<double> percentage;
  late final ValueNotifier<double?> amount;
}
