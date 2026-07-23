import 'package:decimal/decimal.dart';
import 'package:emr_one_cashiersearch/models/split_payment_model.dart';
import 'package:emr_sharedtypes/enums/enums.dart';
import 'package:flutter/material.dart';

class SplitPaymentController {
  void initialize(
    double total,
    List<PaymentMethod> yardPaymentMethods, {
    bool reset = false,
  }) {
    this.total = total;

    if (reset) {
      totalUsed = ValueNotifier(0);
      remaining = ValueNotifier(0);
      _yardPaymentMethods.clear();
      allAmountFormKey = GlobalKey<FormState>();
    }

    for (final paymentMethod in yardPaymentMethods) {
      if (!_yardPaymentMethods
          .any((model) => model.paymentMethod == paymentMethod)) {
        final p = SplitPaymentFormItem(
          paymentMethod: paymentMethod,
          formRequired: formRequired.contains(paymentMethod),
        );
        p.amount.addListener(_recalculate);
        p.checked.addListener(_recalculate);
        _yardPaymentMethods.add(p);
      }
    }
    _recalculate();
  }

  List<PaymentMethod> formRequired = [
    PaymentMethod.manualCheque,
    PaymentMethod.secorePrepayCard,
  ];

  late final List<SplitPaymentFormItem> _yardPaymentMethods = [];
  late double total;
  ValueNotifier<double> totalUsed = ValueNotifier(0);
  ValueNotifier<double> remaining = ValueNotifier(0);
  GlobalKey<FormState> allAmountFormKey = GlobalKey<FormState>();

  List<SplitPaymentFormItem> get allItems =>
      List.unmodifiable(_yardPaymentMethods);

  List<SplitPaymentFormItem> get selectedItems => List.unmodifiable(
        _yardPaymentMethods.where((item) => item.checked.value),
      );

  void _recalculate() {
    var sum = Decimal.zero;
    for (final p in selectedItems) {
      sum += p.amount.value ?? Decimal.zero;
    }
    totalUsed.value = sum.toDouble();
    remaining.value = total - sum.toDouble();
  }

  bool get isAmountValid => totalUsed.value == total;

  bool get isTransactionValid => isAmountValid && isAllFormsValid();

  void reset() {
    for (final p in _yardPaymentMethods) {
      p.reset();
    }
    _recalculate();
  }

  void dispose() {
    for (final p in _yardPaymentMethods) {
      p.amount.removeListener(_recalculate);
      p.checked.removeListener(_recalculate);
      p.dispose();
    }
    totalUsed.dispose();
    remaining.dispose();

    _yardPaymentMethods.clear();
  }

  bool isAllFormsValid() {
    var isValid = allAmountFormKey.currentState?.validate() ?? true;

    for (final p in _yardPaymentMethods) {
      if (p.checked.value) {
        isValid &= p.formKey?.currentState?.validate() ?? true;
      }
    }

    return isValid;
  }
}
