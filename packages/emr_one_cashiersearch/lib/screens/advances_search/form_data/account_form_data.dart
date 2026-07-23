import 'package:emr_one_cashiersearch/models/account.dart';
import 'package:emr_one_cashiersearch/screens/advances_search/form_data/business_detail_form_data.dart';
import 'package:flutter/widgets.dart';

class AccountFormData {
  AccountFormData({
    String? id,
    String? code,
    String? name,
    BusinessDetailFormData? businessDetail,
  }) {
    this.id = ValueNotifier(id ?? '');
    this.code = ValueNotifier(code ?? '');
    this.name = ValueNotifier(name ?? '');
    this.businessDetail = ValueNotifier(businessDetail);
  }
  factory AccountFormData.fromAccount(Account account) => AccountFormData(
        id: account.id,
        code: account.code,
        name: account.name,
        businessDetail: account.businessDetail != null
            ? BusinessDetailFormData.fromBusinessDetail(account.businessDetail!)
            : null,
      );

  late final ValueNotifier<String> id;
  late final ValueNotifier<String> code;
  late final ValueNotifier<String> name;
  late final ValueNotifier<BusinessDetailFormData?> businessDetail;
}
