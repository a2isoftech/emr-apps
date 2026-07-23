import 'package:emr_one_cashiersearch/screens/advances_search/form_data/company_form_data.dart';
import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:emr_sharedtypes/models/payment_methods/payment_methods.dart';
import 'package:emr_sharedtypes/models/yard.dart';
import 'package:flutter/material.dart';

class YardFormData {
  YardFormData({
    String? id,
    String? yardCode,
    String? yardName,
    String? shortName,
    CompanyFormData? company,
    PaymentMethod? defaultPaymentMethod,
    PaymentMethods? paymentMethods,
  }) {
    this.id = ValueNotifier(id ?? '');
    this.yardCode = ValueNotifier(yardCode ?? '');
    this.yardName = ValueNotifier(yardName ?? '');
    this.shortName = ValueNotifier(shortName ?? '');
    this.company = ValueNotifier(company);
    this.defaultPaymentMethod = ValueNotifier(defaultPaymentMethod);
    this.paymentMethods = paymentMethods ?? PaymentMethods.defaults();
  }

  factory YardFormData.fromYard(Yard yard) => YardFormData(
        id: yard.id,
        yardCode: yard.yardCode,
        yardName: yard.name,
        shortName: yard.shortName,
        company: yard.company != null
            ? CompanyFormData.fromCompany(yard.company!)
            : null,
        defaultPaymentMethod: yard.defaultPaymentMethod,
        paymentMethods: yard.paymentMethods,
      );

  late final ValueNotifier<String> id;
  late final ValueNotifier<String> yardCode;
  late final ValueNotifier<String> yardName;
  late final ValueNotifier<String> shortName;
  late final ValueNotifier<CompanyFormData?> company;
  late final ValueNotifier<PaymentMethod?> defaultPaymentMethod;
  late final PaymentMethods paymentMethods;
}
