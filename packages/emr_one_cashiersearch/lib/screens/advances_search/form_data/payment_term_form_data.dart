import 'package:emr_one_cashiersearch/models/payment_term.dart';
import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:flutter/foundation.dart';

class PaymentTermFormData {
  PaymentTermFormData({PaymentMethod? paymentMethod}) {
    this.paymentMethod = ValueNotifier(paymentMethod);
  }

  factory PaymentTermFormData.fromPaymentTerm(PaymentTerm paymentTerm) {
    return PaymentTermFormData(
      paymentMethod: paymentTerm.financialPaymentMethod,
    );
  }
  late final ValueNotifier<PaymentMethod?> paymentMethod;
}
