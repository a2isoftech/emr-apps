import 'package:emr_one_cashiersearch/models/business_detail.dart';
import 'package:emr_one_cashiersearch/screens/advances_search/form_data/payment_term_form_data.dart';
import 'package:flutter/material.dart';

class BusinessDetailFormData {
  BusinessDetailFormData(PaymentTermFormData? paymentTerm) {
    this.paymentTerm = ValueNotifier(paymentTerm);
  }
  factory BusinessDetailFormData.fromBusinessDetail(
    BusinessDetail businessDetail,
  ) =>
      businessDetail.paymentTerm != null
          ? BusinessDetailFormData(
              PaymentTermFormData.fromPaymentTerm(businessDetail.paymentTerm!),
            )
          : BusinessDetailFormData(null);
          
  late final ValueNotifier<PaymentTermFormData?> paymentTerm;
}
