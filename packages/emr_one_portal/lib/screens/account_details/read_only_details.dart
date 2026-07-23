import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_portal/screens/account_details/account_detail_section.dart';
import 'package:flutter/material.dart';

class ReadOnlyDetails extends StatelessWidget {
  const ReadOnlyDetails({
    required this.controller,
    required this.model,
    super.key,
  });

  final AccountDetailsController controller;
  final AccountDetailsModel? model;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(
            Insets.gutter,
            0,
            Insets.gutter,
            0,
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.topLeft,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: const BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
            child: Column(
              children: [
                AccountDetailsSection(
                  widgets1: [
                    _labelWidget(
                      model!.partyAccountNumber.startsWith('N')
                          ? context.l10n.contactName
                          : context.l10n.companyName,
                      model!.accountDetails.contactName,
                      theme,
                    ),
                    _labelWidget(
                      context.l10n.contactEmail,
                      model?.accountDetails.contactEmail ??
                          context.l10n.notFound,
                      theme,
                    ),
                  ],
                  widgets2: [
                    _labelWidget(
                      context.l10n.addressNumber(1),
                      model?.accountDetails.address1 ?? context.l10n.notFound,
                      theme,
                    ),
                    _labelWidget(
                      context.l10n.addressNumber(2),
                      model?.accountDetails.address2 ?? context.l10n.notFound,
                      theme,
                    ),
                    if (!isNetherlandUser())
                      _labelWidget(
                        context.l10n.addressNumber(3),
                        model?.accountDetails.address3 ?? context.l10n.notFound,
                        theme,
                      ),
                  ],
                  widgets3: [
                    _labelWidget(
                      context.l10n.countryCode,
                      model?.accountDetails.countryCode ??
                          context.l10n.notFound,
                      theme,
                    ),
                    _labelWidget(
                      context.l10n.postCode,
                      model?.accountDetails.postCode ?? context.l10n.notFound,
                      theme,
                    ),
                  ],
                ),
                AccountDetailsSection(
                  widgets1: [
                    _labelWidget(
                      context.l10n.town,
                      model?.accountDetails.town ?? context.l10n.notFound,
                      theme,
                    ),
                    if (!isNetherlandUser())
                      _labelWidget(
                        context.l10n.county,
                        model?.accountDetails.county ?? context.l10n.notFound,
                        theme,
                      ),
                    if (!isNetherlandUser())
                      _labelWidget(
                        context.l10n.telephoneNumber,
                        model?.accountDetails.telephoneNumber ??
                            context.l10n.notFound,
                        theme,
                      ),
                  ],
                  widgets2: [
                    _labelWidget(
                      context.l10n.mobileNumber,
                      model?.accountDetails.mobileNumber ??
                          context.l10n.notFound,
                      theme,
                    ),
                    if (!isNetherlandUser())
                      _labelWidget(
                        context.l10n.vatRegNumber,
                        model?.accountDetails.vatNumber ??
                            context.l10n.notFound,
                        theme,
                      ),
                    if (!isNetherlandUser())
                      _labelWidget(
                        context.l10n.eoriNumber,
                        model?.accountDetails.eoriNumber ??
                            context.l10n.notFound,
                        theme,
                      ),
                  ],
                  widgets3: const [],
                ),
              ],
            ),
          ),
        ),
        if (shouldShowBankDetails())
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  Insets.gutter,
                  Insets.gutter,
                  0,
                  0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.l10n.bankDetails,
                      style: theme.textTheme.labelLarge,
                    ),
                    Text(
                      context.l10n.editBankInformationNote,
                      style: theme.textTheme.labelMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
        if (shouldShowBankDetails())
          Padding(
            padding: const EdgeInsets.all(
              Insets.gutter,
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(
                    color: Colors.grey,
                  ),
                ),
              ),
              child: Column(
                children: [
                  AccountDetailsSection(
                    widgets1: [
                      _labelWidget(
                        context.l10n.accountNumber,
                        model?.bankDetails.accountNumber ??
                            context.l10n.notFound,
                        theme,
                      ),
                      _labelWidget(
                        context.l10n.sortCode,
                        model?.bankDetails.sortCode ?? context.l10n.notFound,
                        theme,
                      ),
                      _labelWidget(
                        context.l10n.ref,
                        model?.bankDetails.ref ?? context.l10n.notFound,
                        theme,
                      ),
                    ],
                    widgets2: [
                      _labelWidget(
                        context.l10n.bankName,
                        model?.bankDetails.bankName ?? context.l10n.notFound,
                        theme,
                      ),
                      _labelWidget(
                        context.l10n.accountName,
                        model?.bankDetails.accountName ?? context.l10n.notFound,
                        theme,
                      ),
                      _labelWidget(
                        context.l10n.iban,
                        model?.bankDetails.iban ?? context.l10n.notFound,
                        theme,
                      ),
                    ],
                    widgets3: [
                      _labelWidget(
                        context.l10n.swift,
                        model?.bankDetails.swift ?? context.l10n.notFound,
                        theme,
                      ),
                      _labelWidget(
                        context.l10n.paymentMethod,
                        model?.bankDetails.paymentTerms ??
                            context.l10n.notFound,
                        theme,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }

  Widget _labelWidget(String text, String value, ThemeData theme) {
    return Row(
      children: [
        Text(
          text,
          style: theme.textTheme.titleSmall,
        ),
        const Text(' : '),
        Text(
          value,
          style: theme.textTheme.labelSmall,
        ),
      ],
    );
  }

  bool shouldShowBankDetails() {
    return ((model?.accountDetails.countryCode.isCountryUK() ?? true) &&
            controller.isRetailUser()) ||
        !controller.isRetailUser();
  }

  //TODO: Move this into Config based UI design.
  bool isNetherlandUser() {
    return model?.accountDetails.countryCode.isCountryNL() ?? false;
  }
}
