import 'package:flutter/foundation.dart';

class AdvanceFlexiPay {
  AdvanceFlexiPay({
    required this.advanceId,
    required this.remainingBalance,
    required this.flexiPay,
    this.initialUsed = 0.0,
  })  : usedAmount = ValueNotifier(initialUsed),
        advanceNumber = advanceId.split('/').last;

  final String advanceId;
  final double remainingBalance;
  final bool flexiPay;
  final double initialUsed;

  final String advanceNumber;

  final ValueNotifier<double?> usedAmount;

  void reset() {
    usedAmount.value = initialUsed;
  }

  void dispose() {
    usedAmount.dispose();
  }
}
