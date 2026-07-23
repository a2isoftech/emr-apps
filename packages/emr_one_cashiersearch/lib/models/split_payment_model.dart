import 'package:decimal/decimal.dart';
import 'package:emr_sharedtypes/enums/enums.dart';
import 'package:flutter/material.dart';

class SplitPaymentFormItem {
  SplitPaymentFormItem({
    required this.paymentMethod,
    ValueNotifier<bool>? checked,
    ValueNotifier<Decimal>? amount,
    bool? formRequired,
  })  : checked = checked ?? ValueNotifier(false),
        formKey = (formRequired ?? false) ? GlobalKey<FormState>() : null,
        amount = amount ?? ValueNotifier(Decimal.zero);
  final PaymentMethod paymentMethod;
  final ValueNotifier<bool> checked;
  final ValueNotifier<Decimal?> amount;

  GlobalKey<FormState>? formKey;

  void reset() {
    checked.value = false;
    amount.value = Decimal.zero;
  }

  void dispose() {
    checked.dispose();
    amount.dispose();
  }
}
