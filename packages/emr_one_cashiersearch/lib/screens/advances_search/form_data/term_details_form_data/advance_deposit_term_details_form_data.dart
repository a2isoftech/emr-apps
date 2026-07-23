import 'package:emr_one_cashiersearch/common/enums.dart';
import 'package:flutter/material.dart';

class AdvanceDepositTermDetailsFormData {
  AdvanceDepositTermDetailsFormData({
    required AdvanceTermType termType,
  }) {
    this.termType = ValueNotifier(termType);
  }

  factory AdvanceDepositTermDetailsFormData.fromNew() =>
      AdvanceDepositTermDetailsFormData(termType: AdvanceTermType.percentage);

  late final ValueNotifier<AdvanceTermType> termType;
}
