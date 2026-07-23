import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/company_bank_accounts/company_bank_account_form_data.dart';
import 'package:emr_sharedtypes/models/company.dart';
import 'package:emr_sharedtypes/models/territory.dart';
import 'package:flutter/material.dart';

class CompanyBankAccountCard extends EmrTabBarVerticalViewCard {
  CompanyBankAccountCard({
    required BuildContext context,
    required super.title,
    required CompanyBankAccountFormData model,
    super.key,
  }) : super(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             EmrTextFormField(
               labelText: 'Code',
               binding: model.code,
               validator: Validators.required,
             ),
             EmrTextFormField(
               labelText: 'Bank Name',
               binding: model.bankName,
               validator: Validators.required,
             ),
             EmrPickerFormField<Company>(
               labelText: 'Company',
               items: context.coreApi.referenceData.companies,
               itemTitleText: (item) => item.fullName,
               itemSubtitleText: (item) => item.code,
               binding: model.company,
               validator: Validators.required,
             ),
             EmrPickerFormField<Territory>(
               labelText: 'Territory',
               items: context.coreApi.referenceData.territories,
               itemTitleText: (item) => item.name,
               itemSubtitleText: (item) => item.code,
               binding: model.territory,
               validator: Validators.required,
             ),
             EmrTextFormField(
               labelText: 'Default Account',
               binding: model.defaultAccount,
               validator: Validators.required,
             ),
             EmrTextFormField(
               labelText: 'Sort Code',
               binding: model.sortCode,
               validator: Validators.required,
             ),
             EmrTextFormField(
               labelText: 'Account Number',
               binding: model.accountNumber,
               validator: Validators.required,
             ),
           ],
         ),
       );
}
