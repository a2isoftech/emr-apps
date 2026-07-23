import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/emr_one_data_management.dart';
import 'package:emr_one_data_management/screens/company_bank_accounts/cards/company_bank_account_cards.dart';
import 'package:emr_one_data_management/screens/company_bank_accounts/company_bank_account_form_data.dart';
import 'package:flutter/material.dart';

class CompanyBankAccountForm extends StatefulWidget {
  const CompanyBankAccountForm({required this.code, super.key});

  final String code;

  @override
  State<CompanyBankAccountForm> createState() => _CompanyBankAccountFormState();
}

class _CompanyBankAccountFormState extends State<CompanyBankAccountForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late final Future<void> _future;
  CompanyBankAccountFormData? _model;

  @override
  void initState() {
    super.initState();

    _future = _loadCompanyBankAccount();
  }

  Future<void> _loadCompanyBankAccount() async {
    if (widget.code.endsWith(EmrOneDataManagementConstants.kEmptyGuid)) {
      _model = CompanyBankAccountFormData(code: '');

      return;
    }

    final companyBankAccount = await context.coreApi.referenceData
        .fetchCompanyBankAccountByCode(widget.code);

    _model = CompanyBankAccountFormData.fromCompanyBankAccount(
      companyBankAccount!,
    );
  }

  @override
  Widget build(BuildContext _) {
    return FutureBuilder(
      future: _future,
      builder: (context, snapshot) {
        return Form(
          key: _formKey,
          child: (snapshot.connectionState != ConnectionState.done)
              ? const Center(child: CircularProgressIndicator())
              : (_model == null)
              ? const Center(child: Text('Company Bank Account not found.'))
              // Form.
              : EmrTabBarVerticalView(
                  onSave: () async {
                    if (_formKey.currentState?.validate() == false) {
                      await EmrModal.showMessageBar(
                        context,
                        'Please correct the validation error(s).',
                        messageType: MessageBarTypes.error,
                      );

                      return;
                    }
                    final companyBankAccount = _model!.toCompanyBankAccount();
                    final result = await context.coreApi.referenceData
                        .saveCompanyBankAccount(
                          companyBankAccount: companyBankAccount,
                        );

                    if (result?.success == false) {
                      if (!context.mounted) {
                        return;
                      }

                      await EmrModal.showMessageBar(
                        context,
                        result!.message,
                        messageType: MessageBarTypes.error,
                      );

                      return;
                    }

                    if (!context.mounted) {
                      return;
                    }

                    await EmrModal.showMessageBar(
                      context,
                      'Successfully saved',
                    ).then((_) {
                      if (!context.mounted) {
                        return;
                      }

                      context.goNamed(
                        EmrOneDataManagementConstants
                            .kRouteCompanyBankAccountSearch,
                      );
                    });
                  },
                  onCancel: () => context.goNamed(
                    EmrOneDataManagementConstants
                        .kRouteCompanyBankAccountSearch,
                  ),
                  children: [
                    CompanyBankAccountCard(
                      context: context,
                      title: 'Basic Company Bank Account',
                      model: _model!,
                    ),
                    CompanyBankAccountAddressCard(
                      model: _model!,
                      title: context.l10n.address,
                    ),
                  ],
                ),
        );
      },
    );
  }
}
