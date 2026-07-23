import 'package:emr_one_cashiersearch/models/payment_amount.dart';
import 'package:flutter/material.dart';

class PaymentAmountFormData {
  PaymentAmountFormData({
    double? amount,
    String? currencyCode,
    double? exchangeRate,
  }) {
    this.amount = ValueNotifier(amount);
    this.currencyCode = ValueNotifier<String>(currencyCode ?? '');
    this.exchangeRate = ValueNotifier<double>(exchangeRate ?? 1.0);
  }

  factory PaymentAmountFormData.fromPaymentAmount(
          PaymentAmount paymentAmount,) =>
      PaymentAmountFormData(
        amount: paymentAmount.amount,
        currencyCode: paymentAmount.currencyCode,
        exchangeRate: paymentAmount.exchangeRate,
      );

  PaymentAmount toPaymentAmount() => PaymentAmount(
        amount: amount.value ?? 0.0,
        currencyCode: currencyCode.value,
        exchangeRate: exchangeRate.value,
      );

  late final ValueNotifier<double?> amount;
  late final ValueNotifier<String> currencyCode;
  late final ValueNotifier<double> exchangeRate;
}
