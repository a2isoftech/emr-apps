import 'package:collection/collection.dart';
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:flutter/material.dart';

class AdvanceFlexiPayController {
  void initialize(PaymentDeductions paymentDeduction, {bool reset = false}) {
    transactionTotal = paymentDeduction.grossAmount;
    if (reset) {
      _advances.clear();
      formKey = GlobalKey<FormState>();
      totalUsed = ValueNotifier(0);
      remaining = ValueNotifier(0);
    }

    for (final advance
        in paymentDeduction.advanceDetails?.advanceAmountBreakup ??
            <AdvanceUsage>[]) {
      final adv =
          _advances.firstWhereOrNull((a) => a.advanceId == advance.advanceId);
      if (adv == null) {
        final adv = AdvanceFlexiPay(
          advanceId: advance.advanceId,
          remainingBalance: advance.advanceAmountBeforeOffset,
          flexiPay: advance.details?.allowFlexiblePay ?? false,
          initialUsed: advance.applicableOffset,
        );
        adv.usedAmount.addListener(_recalculate);
        _advances.add(adv);
      } else {
        adv.usedAmount.value = advance.applicableOffset;
      }
    }

    if (paymentDeduction.advanceDetails != null) {
      _advances.removeWhere(
        (localAdvance) =>
            !paymentDeduction.advanceDetails!.advanceAmountBreakup.any(
          (serverAdvance) => localAdvance.advanceId == serverAdvance.advanceId,
        ),
      );
    }

    showEditAdvanceLink = _advances.any((adv) => adv.flexiPay);
    _recalculate();
  }

  late double transactionTotal;
  final List<AdvanceFlexiPay> _advances = [];
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool showEditAdvanceLink = false;

  ValueNotifier<double> totalUsed = ValueNotifier(0);
  ValueNotifier<double> remaining = ValueNotifier(0);

  List<AdvanceFlexiPay>? get advances =>
      showEditAdvanceLink ? List.unmodifiable(_advances) : null;

  void _recalculate() {
    final used = _advances.fold<double>(
      0,
      (sum, a) => sum + (a.usedAmount.value ?? 0),
    );

    totalUsed.value = used;
    remaining.value = transactionTotal - used;
  }

  bool validateAll() {
    var allValid = formKey.currentState?.validate() ?? true;

    // Global total validation
    if (totalUsed.value > transactionTotal) {
      allValid = false;
    }

    return allValid;
  }

  void reset() {
    for (final a in _advances.where((adv) => adv.flexiPay)) {
      a.reset();
    }
    _recalculate();
  }

  void dispose() {
    for (final a in _advances) {
      a.dispose();
    }
    _advances.clear();
    totalUsed.dispose();
    remaining.dispose();
  }
}
