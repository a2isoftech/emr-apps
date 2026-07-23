import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_cashiersearch/screens/advances_search/form_data/advance_form_data.dart';
import 'package:emr_one_cashiersearch/screens/advances_search/form_data/company_form_data.dart';
import 'package:emr_one_cashiersearch/screens/advances_search/form_data/yard_form_data.dart';
import 'package:emr_one_cashiersearch/services/advances_payment_service.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class YardCard extends StatelessWidget {
  const YardCard({
    required this.model,
    required this.userInfoService,
    required this.advancesPaymentService,
    super.key,
  });

  final AdvanceFormData model;
  final UserInfoService userInfoService;
  final IAdvancesPaymentService advancesPaymentService;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(
            top: Insets.gutter,
            bottom: Insets.gutter,
          ),
          child: Text(
            context.l10n.yard,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: Insets.gutter,
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: EmrPickerFormField<YardFormData>(
                labelText: context.l10n.handlingYard,
                binding: model.handlingYard,
                itemTitleText: (y) => y.yardCode.value,
                items: (query) async {
                  final allYards = await advancesPaymentService.yards(query);
                  final userYardCodes = userInfoService.userInfo.depots
                      .map((e) => e.yardCode)
                      .toSet();
                  final eligibleYards = allYards
                      .where((yard) => userYardCodes.contains(yard.yardCode))
                      .toList();
                  return eligibleYards.map(YardFormData.fromYard).toList();
                },
                validator: Validators.required,
              ),
            ),
            const SizedBox(width: Insets.gutter),
            Expanded(
              child: EmrPickerFormField<YardFormData>(
                labelText: context.l10n.payableYard,
                binding: model.payableYard,
                itemTitleText: (y) => y.yardCode.value,
                items: (query) async {
                  final allYards = await advancesPaymentService.yards(query);
                  final userYardCodes = userInfoService.userInfo.depots
                      .map((e) => e.yardCode)
                      .toSet();
                  final eligibleYards = allYards
                      .where((yard) => userYardCodes.contains(yard.yardCode))
                      .toList();
                  return eligibleYards.map(YardFormData.fromYard).toList();
                },
                validator: Validators.required,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: ValueListenableBuilder(
                valueListenable: model.company,
                builder: (context, value, child) =>
                    EmrPickerFormField<CompanyFormData>(
                  labelText: context.l10n.company,
                  binding: model.company,
                  itemTitleText: (c) => c.fullName.value,
                  itemSubtitleText: (c) => c.code.value,
                  items: (query) async {
                    final companies =
                        await context.coreApi.referenceData.companies(query);
                    final userCompanies =
                        userInfoService.userInfo.companyAccess;
                    return companies
                        .where(
                          (company) => userCompanies.contains(company.code),
                        )
                        .map(CompanyFormData.fromCompany)
                        .toList();
                  },
                  validator: Validators.required,
                ),
              ),
            ),
            Expanded(child: Container()),
          ],
        ),
      ],
    );
  }
}
