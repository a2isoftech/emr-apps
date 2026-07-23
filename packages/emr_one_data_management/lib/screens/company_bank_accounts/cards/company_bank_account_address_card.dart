import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_core/validators/validators.dart';
import 'package:emr_one_core/widgets/form_fields/emr_text_form_field.dart';
import 'package:emr_one_core/widgets/layouts/emr_tab_bar_vertical_view/emr_tab_bar_vertical_view_responsive_columns_card.dart';
import 'package:emr_one_data_management/screens/company_bank_accounts/company_bank_account_form_data.dart';
import 'package:flutter/widgets.dart';

class CompanyBankAccountAddressCard
    extends EmrTabBarVerticalViewResponsiveColumnsCard {
  CompanyBankAccountAddressCard({
    required this.model,
    required super.title,
    super.key,
  });

  final CompanyBankAccountFormData model;

  @override
  Widget build(BuildContext context) {
    return EmrTabBarVerticalViewResponsiveColumnsCard(
      title: title,
      children: [
        EmrTextFormField(
          labelText: context.l10n.addressLine1,
          binding: model.addressLine1,
          validator: Validators.required,
        ),
        EmrTextFormField(
          labelText: 'Address Line 2',
          binding: model.addressLine2,
        ),
        EmrTextFormField(
          labelText: 'Address Line 3',
          binding: model.addressLine3,
        ),
        EmrTextFormField(
          labelText: 'Address Line 4',
          binding: model.addressLine4,
        ),
        EmrTextFormField(
          labelText: 'Address Line 5',
          binding: model.addressLine5,
        ),
        EmrTextFormField(
          labelText: 'Address Line 6',
          binding: model.addressLine6,
        ),
        EmrTextFormField(
          labelText: context.l10n.postCode,
          binding: model.postCode,
          validator: Validators.required,
        ),
      ],
    );
  }
}
