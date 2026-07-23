import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:emr_sharedtypes/models/accounts/account.dart';
import 'package:flutter/material.dart';

class SendEmail extends StatefulWidget {
  const SendEmail({
    required this.coreapiService,
    required this.userInfoService,
    super.key,
  });

  @override
  State<SendEmail> createState() => _SendEmailState();
  final CoreApiService coreapiService;
  final UserInfoService userInfoService;
}

class _SendEmailState extends State<SendEmail> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final selectedAccount = ValueNotifier<Account?>(null);
  final errorSendEmail = ValueNotifier<String?>(null);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: Insets.gutter / 2),
                child: Text(
                  context.l10n.sendPriceList,
                  style: EmrOneConstants.kSmallHeadingTextStyle,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: EmrPickerFormField<Account>(
                      labelText: context.l10n.partyAccountNo,
                      validator: Validators.required,
                      binding: selectedAccount,
                      itemTitleText: (account) =>
                          '${account.code} - ${account.name}',
                      items: (item) async {
                        final territoryCodes = widget
                            .userInfoService
                            .userInfo
                            .territories
                            .map((x) => x.code)
                            .toList();
                        final result = await widget
                            .coreapiService
                            .accountService
                            .searchAccounts(
                              query: item,
                              territories: territoryCodes,
                            );
                        return (result.accounts
                          ..sort((a, b) => a.code!.compareTo(b.code!)));
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(),
              ValueListenableBuilder(
                valueListenable: selectedAccount,
                builder: (context, value, child) {
                  final account = selectedAccount.value;
                  final contacts = (account?.contacts ?? [])
                      .where((c) => c.contactTypes?.contains('MAIN') ?? false)
                      .toList();
                  return Visibility(
                    visible: account != null,
                    child: Padding(
                      padding: const EdgeInsets.all(Insets.gutter),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Divider(),
                          Text(
                            context.l10n.mailingList,
                            style: EmrOneConstants.kSmallestHeadingTextStyle,
                          ),
                          const SizedBox(height: Insets.gutter),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  padding: const EdgeInsets.all(
                                    Insets.gutter / 2,
                                  ),
                                  child: Text(
                                    context.l10n.contactName,
                                    style:
                                        EmrOneConstants.kTinyHeadingTextStyle,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  padding: const EdgeInsets.all(
                                    Insets.gutter / 2,
                                  ),
                                  child: Text(
                                    context.l10n.emailAddress,
                                    style:
                                        EmrOneConstants.kTinyHeadingTextStyle,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // Populate contacts
                          ...contacts.map(
                            (contact) => Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    padding: const EdgeInsets.all(
                                      Insets.gutter / 2,
                                    ),
                                    child: Text(
                                      // ignore: lines_longer_than_80_chars
                                      '${contact.firstName ?? ''} ${contact.lastName ?? ''}',
                                      style: EmrOneConstants.kTinyTextStyle,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    padding: const EdgeInsets.all(
                                      Insets.gutter / 2,
                                    ),
                                    child: Text(
                                      contact.contactPreferences.email?.value ??
                                          '',
                                      style: EmrOneConstants.kTinyTextStyle,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: Insets.gutter * 2),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: context.pop,
                                child: Text(context.l10n.cancel),
                              ),
                              const SizedBox(width: Insets.gutter / 2),
                              FilledButton(
                                style: EmrButtonStyles.cta(),
                                onPressed: () {
                                  final ccEmails =
                                      selectedAccount.value!.managers
                                          ?.map((m) => m.emailAddress)
                                          .whereType<String>()
                                          .toList() ??
                                      [];
                                  EmrDialog.busy(
                                    context,
                                    titleText: context.l10n.sendingPriceList,
                                  );
                                  widget.coreapiService.pricingService
                                      .sendEmail(
                                        accountId:
                                            selectedAccount.value?.id ?? '',
                                        recipients: contacts
                                            .map(
                                              (c) => c
                                                  .contactPreferences
                                                  .email
                                                  ?.value,
                                            )
                                            .where((email) => email != null)
                                            .cast<String>()
                                            .toList(),
                                        senderEmail: widget
                                            .userInfoService
                                            .userInfo
                                            .emailAddress,
                                        buyingManagerName:
                                            selectedAccount
                                                .value!
                                                .primaryManager
                                                ?.name ??
                                            '',
                                        mainContactName:
                                            // ignore: lines_longer_than_80_chars
                                            '${contacts.first.firstName} ${contacts.first.lastName}',
                                        accountPrimaryAddress: selectedAccount
                                            .value!
                                            .addresses
                                            .first
                                            .toString(),
                                        managersEmail: ccEmails,
                                      )
                                      .then((result) async {
                                        if (result.$1 ?? false) {
                                          if (context.mounted) {
                                            await showSuccessMessage(context);

                                            if (context.mounted) {
                                              context.pop();
                                              context.pop();
                                            }
                                          }
                                        } else {
                                          if (context.mounted) {
                                            _sendEmailError(context);
                                            context.pop();
                                          }
                                        }
                                      });
                                },
                                child: Text(
                                  context.l10n.send,
                                  style: TextStyle(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.onPrimary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          ValueListenableBuilder(
                            valueListenable: errorSendEmail,
                            builder: (context, value, _) {
                              if (value == null) return Container();
                              return Visibility(
                                visible: errorSendEmail.value != null,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        errorSendEmail.value ?? '',
                                        style: TextStyle(
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.error,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> showSuccessMessage(BuildContext context) {
    return EmrDialog.ok(
      context,
      titleText: context.l10n.info,
      contentText: context.l10n.priceListSentSuccess,
    );
  }

  void _sendEmailError(BuildContext context) {
    errorSendEmail.value = context.l10n.errorSendGpl;
  }
}
