import 'package:emr_one_cashiersearch/screens/advances_search/form_data/account_form_data.dart';
import 'package:emr_one_cashiersearch/screens/advances_search/form_data/advance_form_data.dart';
import 'package:emr_one_cashiersearch/services/advances_payment_service.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class AccountCheckCard extends StatelessWidget {
  const AccountCheckCard({
    required this.model,
    required this.userInfoService,
    required this.advancesPaymentService,
    super.key,
    this.fixedAccount = false,
  });

  final AdvanceFormData model;
  final UserInfoService userInfoService;
  final IAdvancesPaymentService advancesPaymentService;
  final bool fixedAccount;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.only(
            top: Insets.gutter,
            bottom: Insets.gutter,
          ),
          child: Text(
            context.l10n.account,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: Insets.gutter,
            ),
          ),
        ),
        _AccountCheckCardNewContent(
          model: model,
          userInfoService: userInfoService,
          advancesPaymentService: advancesPaymentService,
          fixedAccount: fixedAccount,
        ),
      ],
    );
  }
}

class _AccountCheckCardNewContent extends StatefulWidget {
  const _AccountCheckCardNewContent({
    required this.model,
    required this.userInfoService,
    required this.advancesPaymentService,
    this.fixedAccount = false,
  });

  final AdvanceFormData model;
  final UserInfoService userInfoService;
  final IAdvancesPaymentService advancesPaymentService;
  final bool fixedAccount;

  @override
  State<_AccountCheckCardNewContent> createState() =>
      _AccountCheckCardNewContentState();
}

class _AccountCheckCardNewContentState
    extends State<_AccountCheckCardNewContent> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              EmrPickerFormField<AccountFormData>(
                binding: widget.model.account,
                itemTitleText: (a) => '${a.code.value} - ${a.name.value}',
                enabled: ValueNotifier(!widget.fixedAccount),
                items: (query) async {
                  final accounts = await widget.advancesPaymentService
                      .searchSimpleAccounts(query);
                  return accounts.map(AccountFormData.fromAccount).toList();
                },
                validator: Validators.required,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
