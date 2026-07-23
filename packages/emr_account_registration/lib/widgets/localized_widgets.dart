import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:url_launcher/url_launcher.dart';

class LocalizedWidgets {
  static List<Widget> getLoginPageBulletPoints(
    ThemeData theme,
    String countryId,
    BuildContext context, {
    bool isInPortraitMode = false,
  }) {
    if (countryId.isCountryUS()) {
      return [
        tickWithText(
          theme,
          context.l10n.manageYourDetails,
          isInPortraitMode: isInPortraitMode,
        ),
        verticalSpacer(),
        tickWithText(
          theme,
          context.l10n.uploadYourIDDocuments,
          isInPortraitMode: isInPortraitMode,
        ),
        verticalSpacer(),
        tickWithText(
          theme,
          context.l10n.findOutAboutPromotions,
          isInPortraitMode: isInPortraitMode,
        ),
      ];
    } else {
      return [
        tickWithText(
          theme,
          context.l10n.fastTrackYourPayment,
          isInPortraitMode: isInPortraitMode,
        ),
        verticalSpacer(),
        tickWithText(
          theme,
          context.l10n.openUpFlexiblePaymentOptions,
          isInPortraitMode: isInPortraitMode,
        ),
        verticalSpacer(),
        tickWithText(
          theme,
          context.l10n.manageYourDetails,
          isInPortraitMode: isInPortraitMode,
        ),
      ];
    }
  }

  static TextSpan getEmrLocalUrl(ThemeData theme, String countryId) {
    final text = _getEmrLocalUrl(countryId);
    return TextSpan(
      text: text,
      style: theme.textTheme.labelMedium?.underlined(),
      recognizer: TapGestureRecognizer()
        ..onTap = () {
          launch('https://$text/FindYourLocalEmr');
        },
    );
  }

  static Future<void> launch(String url, {bool isNewTab = true}) async {
    await launchUrl(
      Uri.parse(url),
      webOnlyWindowName: isNewTab ? '_blank' : '_self',
    );
  }

  static String _getEmrLocalUrl(String countryId) {
    switch (countryId) {
      case 'US':
        return 'us.emrlocal.com';
      case 'DE':
        return 'de.emrlocal.com';
      case 'NL':
        return 'nl.emrlocal.com';
    }
    return 'uk.emrlocal.com';
  }

  static List<Widget> getPaymentDetailsWidgets(
    ThemeData theme,
    JourneyController signupController,
    SignupModel signupModel,
    TextEditingController bankNameController,
    void Function(String bankName) updateBankName,
    BuildContext context,
  ) {
    if (signupModel.getLocatedAtCountryCode().isCountryUS()) {
      return [
        Text(
          context.l10n.termsAndConditions,
          style: theme.textTheme.labelLarge?.bold(),
        ),
        verticalSpacer(height: Insets.gutter * 2),
        Row(
          children: [
            Expanded(
              child: Text(
                context.l10n.agreeToTnc,
                style: theme.textTheme.titleSmall,
              ),
            ),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                CheckboxTncPopup(
                  initialValue: signupModel.isAgreedToTermsAndConditions,
                  tncTitle: context.l10n.scrollEndToAcceptTAndC,
                  titleStyle: theme.textTheme.titleMedium!.bold(),
                  tncBody: AccountRegistrationRemoteConfigService.tncUs,
                  tncCheckBoxText: context.l10n.agreeToLegalTermsAndConditions,
                  onAgree: signupController.dataBinding.setAgreeToTnc,
                ),
                Text('Yes', style: theme.textTheme.titleSmall),
              ],
            ),
          ],
        ),
      ];
    } else {
      return [
        Text(
          context.l10n.getFasterPayment,
          style: theme.textTheme.labelLarge?.bold(),
        ),
        verticalSpacer(height: Insets.gutter * 2),
        Row(
          children: [
            Expanded(
              child: Text(
                context.l10n.enterBankDetailsForSameDay,
                style: theme.textTheme.titleSmall,
              ),
            ),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Checkbox(
                  value: signupModel.paidIntoAccount,
                  onChanged: (checked) {
                    signupController.dataBinding.setPaidIntoAccount(
                      val: checked,
                    );
                  },
                ),
                Text('Yes', style: theme.textTheme.titleSmall),
              ],
            ),
          ],
        ),
        if (signupModel.paidIntoAccount) ...{
          verticalSpacer(),
          TextFormField(
            decoration: InputDecorationService.getTextFormFieldInputDecoration(
              context.l10n.accountHolderName,
              context.l10n.accountHolderName,
              theme: theme,
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
            onChanged: (val) {
              signupController.setBankDetailsEditStatus();
              signupController.dataBinding.setAccountHolderName(val);
            },
            initialValue: signupModel.accountHoldername,
            validator: (val) =>
                signupController.validationService.validateAccountHolderName(
                  val,
                  paidIntoAccount: signupModel.paidIntoAccount,
                  context: context,
                ),
            enabled: signupModel.paidIntoAccount,
          ),
          verticalSpacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                flex: 5,
                child: TextFormField(
                  decoration:
                      InputDecorationService.getTextFormFieldInputDecoration(
                        '00-00-00',
                        context.l10n.sortCode,
                        theme: theme,
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                  onChanged: (val) {
                    signupController.setBankDetailsEditStatus();
                    signupController.dataBinding.setSortCode(
                      val,
                      updateBankName,
                      context,
                    );
                  },
                  initialValue: signupModel.sortCode,
                  validator: (val) => ValidationService.validateSortCode(
                    val,
                    context,
                    paidIntoAccount: signupModel.paidIntoAccount,
                  ),
                  enabled: signupModel.paidIntoAccount,
                ),
              ),
              const SizedBox(width: Insets.gutter / 2),
              Expanded(
                flex: 5,
                child: TextFormField(
                  decoration:
                      InputDecorationService.getTextFormFieldInputDecoration(
                        '00-000-000',
                        context.l10n.accountNumber,
                        theme: theme,
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                  onChanged: (val) {
                    signupController.setBankDetailsEditStatus();
                    signupController.dataBinding.setAccountNumber(
                      val,
                      updateBankName,
                      context,
                    );
                  },
                  initialValue: signupModel.bankAccountNumber,
                  validator: (val) => ValidationService.validateAccountNumber(
                    val,
                    context,
                    paidIntoAccount: signupModel.paidIntoAccount,
                  ),
                  enabled: signupModel.paidIntoAccount,
                ),
              ),
            ],
          ),
          verticalSpacer(),
          TextFormField(
            controller: bankNameController,
            decoration: InputDecorationService.getTextFormFieldInputDecoration(
              signupModel.bankName ?? context.l10n.bankName,
              context.l10n.bankName,
              theme: theme,
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
            onChanged: (val) {
              signupController.setBankDetailsEditStatus();
              signupController.dataBinding.setBankname(val);
            },
            validator: (val) =>
                signupController.validationService.validateBankName(
                  val,
                  paidIntoAccount: signupModel.paidIntoAccount,
                  context: context,
                ),
            enabled: signupModel.paidIntoAccount,
            readOnly: true,
          ),
        },
        if (!AccountRegistrationRemoteConfigService.hideCEL) ...[
          verticalSpacer(),
          Text(
            context.l10n.selectBothTncAndSecore,
            style: theme.textTheme.titleSmall!.italic(),
          ),
          verticalSpacer(),
          Row(
            children: [
              Expanded(
                child: Text(
                  context.l10n.emrCashService,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  CheckboxTncPopup(
                    initialValue: signupModel.enableCel,
                    tncTitle: context.l10n.celTnCScroll,
                    titleStyle: theme.textTheme.titleMedium!.bold(),
                    tncBody: AccountRegistrationRemoteConfigService.tnc,
                    tncCheckBoxText: context.l10n.agreeToCELTnC,
                    onAgree: signupController.dataBinding.setEnableCel,
                  ),
                  Text('Yes', style: theme.textTheme.titleSmall),
                ],
              ),
            ],
          ),
        ],
        verticalSpacer(),
        Row(
          children: [
            Expanded(
              child: Text(
                context.l10n.agreeToSecoreLabel,
                style: theme.textTheme.titleSmall,
              ),
            ),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                CheckboxTncPopup(
                  initialValue: signupModel.agreeToSecoreTnc,
                  tncTitle: context.l10n.agreeToSecoreTitle,
                  titleStyle: theme.textTheme.titleMedium!.bold(),
                  tncBody: AccountRegistrationRemoteConfigService.secoreTnc,
                  tncCheckBoxText: context.l10n.agreeToSecoreTnc,
                  onAgree: signupController.dataBinding.setAgreeToSecoreTnc,
                ),
                Text('Yes', style: theme.textTheme.titleSmall),
              ],
            ),
          ],
        ),
      ];
    }
  }

  static List<Widget> getAlmostDoneDealerAct(
    ThemeData theme,
    String countryId,
    BuildContext context,
  ) {
    if (countryId.isCountryUS() || countryId.isCountryNL()) {
      return [];
    } else {
      return [
        verticalSpacer(),
        RichText(
          text: TextSpan(
            text: context.l10n.dealerAct1,
            style: theme.textTheme.labelLarge,
            children: <TextSpan>[
              TextSpan(
                text: ' ${context.l10n.msgScrapMetaDealersAct} ',
                style: theme.textTheme.labelLarge?.underlined(),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    launch('https://uk.emrlocal.com/faqs');
                  },
              ),
              TextSpan(
                text: context.l10n.dealerAct2,
                style: theme.textTheme.labelLarge,
              ),
            ],
          ),
        ),
      ];
    }
  }

  static List<Widget> getAlmostDoneDocumentButtons(
    ThemeData theme,
    String countryId,
    BuildContext context,
    SignupModel signupModel,
    JourneyController journeyController,
  ) {
    final widgets = <Widget>[];

    if (countryId.isCountryNL()) {
      widgets.add(
        BlueButtonWithTick(
          text: context.l10n.termsAndConditions,
          completed: signupModel.isAgreedToTermsAndConditions,
          onPressed: () {
            _showPopup(context, theme, journeyController);
          },
        ),
      );
      return widgets;
    }

    if (!countryId.isCountryUS()) {
      widgets.add(
        BlueButtonWithTick(
          text: ((signupModel.paymentDetailsUpdated)
              ? context.l10n.updateProofOfAddress
              : context.l10n.uploadProofOfAddress),
          completed:
              signupModel.proofOfAddressUpdated ||
              signupModel.proofOfIdIsUKDrivingLicense,
          onPressed: () async {
            await journeyController.uiActions.onGoToSelectAddressProofType(
              journeyController,
              signupModel,
              context: context,
            );
          },
        ),
      );
    }

    widgets.add(
      BlueButtonWithTick(
        text: signupModel.getLocatedAtCountryCode().isCountryUS()
            ? context.l10n.termsAndConditions
            : context.l10n.addPaymentDetails,
        completed: signupModel.paymentDetailsUpdated,
        onPressed: () async {
          journeyController.uiActions.onGoToPaymentDetails(
            journeyController,
            signupModel,
            context: context,
          );
        },
      ),
    );
    return widgets;
  }

  static void _showPopup(
    BuildContext context,
    ThemeData theme,
    JourneyController journeyController,
  ) {
    final (isPhone, _) = context.getScreenFacts();
    final screenWidth = context.screenWidth();
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        var agree = false;
        return AlertDialog(
          contentPadding: const EdgeInsets.all(Insets.gutter),
          content: SizedBox(
            width: isPhone ? screenWidth : screenWidth / 2,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                  Text(
                    context.l10n.scrollEndToAcceptTAndC,
                    style: theme.textTheme.labelSmall,
                  ),
                  const SizedBox(height: Insets.gutter),
                  HtmlWidget(AccountRegistrationRemoteConfigService.tncNl),
                  const SizedBox(height: Insets.gutter),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (bool? value) {
                          agree = value ?? false;
                          if (agree) {
                            journeyController.dataBinding.setAgreeToTnc(
                              val: true,
                            );
                            Navigator.of(context).pop();
                          }
                        },
                      ),
                      Text(
                        context.l10n.agreeToLegalTermsAndConditions,
                        style: theme.textTheme.labelSmall,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
