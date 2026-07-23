import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PaymentDetailsPage extends StatefulWidget with FullExtent {
  PaymentDetailsPage({
    required this.signupModel,
    super.key,
    required this.journeyController,
  });

  final SignupModel signupModel;
  final JourneyController journeyController;

  @override
  State<PaymentDetailsPage> createState() => _PaymentDetailsPageState();
}

class _PaymentDetailsPageState extends State<PaymentDetailsPage> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _bankNameController;
  final EmrInkPadController _emrInkPadController = EmrInkPadController();
  bool showUploadButtons = true;
  bool isQrCodeExpired = false;

  @override
  void initState() {
    super.initState();
    _bankNameController = TextEditingController();
    showUploadButtons = widget.signupModel.runContext.isPortal;
  }

  @override
  void dispose() {
    _bankNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SignupLayout(
      runContext: widget.signupModel.runContext,
      title: context.l10n.stage2Of2YourDocuments,
      titleStyle: theme.textTheme.labelLarge?.bold(),
      formKey: _formKey,
      onGoBack: () async {
        await widget.journeyController.uiActions.onBackFromPaymentDetails(
          widget.journeyController,
          widget.signupModel,
          context: context,
        );
      },
      widgets: [
        //Consumer Widget to listen for changes
        Consumer<ChangeNotifyingService>(
          builder: (context, changeNotifyingService, child) {
            widget.journeyController.refresh(widget.signupModel);
            if (isQrCodeExpired) {
              return SessionTimeoutMessage(
                title: context.l10n.sessionTimedOut,
                message: context.l10n.goBackAndTryAgain,
              );
            }
            return Column(
              children: [
                ...LocalizedWidgets.getPaymentDetailsWidgets(
                  theme,
                  widget.journeyController,
                  widget.signupModel,
                  _bankNameController,
                  (bankName) {
                    _bankNameController.text = bankName;
                    widget.journeyController.dataBinding.setBankname(bankName);
                  },
                  context,
                ),
                if (!widget.signupModel.runContext.isPortal) ...[
                  verticalSpacer(),
                  AccountQrCode(
                    journeyController: widget.journeyController,
                    appConfig: Provider.of<AppConfig>(context, listen: false),
                    accountCode: widget.signupModel.accountCode,
                    qrCodeType: QrCode.signatureType,
                    onImageRetrieved: (image) {
                      showUploadButtons = true;
                      changeNotifyingService.notifyListenersInternal();
                    },
                    onQrCodeExpired: () async {
                      if (context.mounted) {
                        setState(() {
                          showUploadButtons = false;
                          isQrCodeExpired = true;
                        });
                        await EmrModal.showMessageBar(
                          context,
                          '${context.l10n.sessionTimedOut} ${context.l10n.goBackAndTryAgain}',
                          messageType: MessageBarTypes.error,
                        );
                      }
                    },
                  ),
                  Text(context.l10n.showSignaturePad),
                  Switch.adaptive(
                    value: showUploadButtons,
                    onChanged: (value) {
                      showUploadButtons = value;
                      changeNotifyingService.notifyListenersInternal();
                    },
                  ),
                ],
                if (showUploadButtons) ...{
                  AccountSignaturePad(
                    signupModel: widget.signupModel,
                    journeyController: widget.journeyController,
                    emrInkPadController: _emrInkPadController,
                    changeNotifyingService: changeNotifyingService,
                  ),
                },
                verticalSpacer(),
                if (widget.journeyController.isProcessing) ...{
                  processingIndicator(),
                } else ...{
                  colouredButton(
                    text: context.l10n.confirm,
                    style:
                        widget.journeyController.validationService
                            .hasValidPaymentDetails(
                              widget.journeyController,
                              widget.signupModel,
                              context,
                            )
                        ? EmrButtonStyles.cta()
                        : AccountRegistrationButtonStyles.disabled(theme),
                    onPressed:
                        widget.journeyController.validationService
                            .hasValidPaymentDetails(
                              widget.journeyController,
                              widget.signupModel,
                              context,
                            )
                        ? () async {
                            if (widget.signupModel.isSignatureRequired) {
                              final result = await widget
                                  .journeyController
                                  .paymentDetailsService
                                  .addPaymentDetails(
                                    signupModel: widget.signupModel,
                                    isBankUpdateRequired: widget
                                        .journeyController
                                        .isBankDetailsEdited,
                                    onError: (err) async {
                                      if (context.mounted) {
                                        LoggingService.logFailure(
                                          AccountRegistrationTelemetry
                                              .kAddPaymentDetails,
                                          err,
                                          partyAccountNo:
                                              widget.signupModel.accountCode,
                                          userId: widget.signupModel.userId,
                                        );

                                        await EmrModal.showMessageBar(
                                          context,
                                          context
                                              .l10n
                                              .errPaymentDetailsCouldNotBeUpdated,
                                          messageType: MessageBarTypes.error,
                                        );
                                      }
                                    },
                                  );
                              if (result != null) {
                                widget.signupModel.paymentDetailsUpdated = true;
                                await widget.journeyController.uiActions
                                    .onPaymentDetailsUpdated(
                                      widget.journeyController,
                                      widget.signupModel,
                                      context: context.mounted ? context : null,
                                    );
                              }
                            } else {
                              await widget.journeyController.uiActions
                                  .onBackFromPaymentDetails(
                                    widget.journeyController,
                                    widget.signupModel,
                                    context: context,
                                  );
                            }
                          }
                        : null,
                  ),
                },
              ],
            );
          },
        ),
      ],
    );
  }
}
