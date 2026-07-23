import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class EditMainDetails extends EmrTabBarVerticalViewResponsiveColumnsCard {
  EditMainDetails(
    BuildContext context, {
    required ManageMainDetailsController controller,
    required super.title,
    super.key,
  }) : super(
         children: [
           EmrTextFormField(
             labelText: context.l10n.accountName,
             binding: controller.data.name,
             validator: Validators.required,
           ),
           EmrTextFormField(
             labelText: context.l10n.sicCode,
             binding: controller.data.sicCodeId,
           ),
           EmrPickerFormField(
             labelText: context.l10n.supplierIndustryGroup,
             items: controller.industryGroups,
             itemTitleText: (item) => item,
             binding: controller.data.supplierIndustryGroup,
           ),
           EmrPickerFormField(
             labelText: context.l10n.traderIndustryGroup,
             items: controller.industryGroups,
             itemTitleText: (item) => item,
             binding: controller.data.traderIndustryGroup,
           ),
           EmrDateFormField(
             labelText: context.l10n.celAgreementDate,
             binding: controller.data.celAgreementStartDate,
           ),
           EmrDateFormField(
             labelText: context.l10n.celAgreementExpiryDate,
             binding: controller.data.celAgreementExpiryDate,
           ),
           EmrDateFormField(
             labelText: context.l10n.cfcAgreementDate,
             binding: controller.data.cfcAgreementStartDate,
           ),
           EmrDateFormField(
             labelText: context.l10n.cfcAgreementExpiryDate,
             binding: controller.data.cfcAgreementExpiryDate,
           ),
           EmrPickerFormField(
             labelText: context.l10n.supplierVatGroup,
             items: controller.vatGroups,
             itemTitleText: (item) => item.key.displayString(context),
             binding: controller.data.supplierVatGroupType,
           ),
           EmrPickerFormField(
             labelText: context.l10n.customerVatGroup,
             items: controller.vatGroups,
             itemTitleText: (item) => item.key.displayString(context),
             binding: controller.data.customerVatGroupType,
           ),
           EmrPickerFormField(
             labelText: context.l10n.country,
             items: controller.countries,
             itemTitleText: (item) => item.value,
             binding: controller.data.originatingCountry,
             validator: Validators.required,
           ),
           EmrPickerFormField(
             labelText: context.l10n.currencyCode,
             items: StandingDataService.currencyCodes,
             itemTitleText: (item) => item,
             binding: controller.data.currencyId,
           ),
           EmrPickerFormField<Yard>(
             labelText: context.l10n.preferredYard,
             items: (query) => controller.coreApiService.referenceData.yards(
               query,
               territories: [],
             ),
             itemTitleText: (item) => item.name,
             itemSubtitleText: (item) => item.yardCode,
             binding: controller.data.preferredYard,
             validator: Validators.required,
           ),
           EmrPickerFormField(
             labelText: context.l10n.preferredPaymentMethod,
             items: controller.paymentMethods,
             itemTitleText: (item) => item.key.displayString(context),
             binding: controller.data.preferredPaymentMethod,
             validator: Validators.required,
           ),
           EmrTextFormField(
             labelText: context.l10n.vihbNumber,
             binding: controller.data.vihbNumber,
           ),
           EmrTextFormField(
             labelText: context.l10n.amiceCompanyNumber,
             binding: controller.data.amiceCompanyNumber,
             validator: Validators.decimal,
           ),
           EmrPickerFormField<Account>(
             labelText: context.l10n.parentAccount,
             items: (String query) async {
               final q = query.isNotEmpty ? query : '*';
               final result = await controller.coreApiService.accountService
                   .searchAccounts(query: q, territories: []);
               final accounts = result.accounts
                   .map((a) => a)
                   .whereType<Account>()
                   .toList();
               accounts.sort((a, b) => (a.code ?? '').compareTo(b.code ?? ''));
               return accounts;
             },
             itemTitleText: (item) => '${item.code} - ${item.name}',
             binding: controller.data.parentAccount,
           ),
         ],
       );
}
