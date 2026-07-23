import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UpdateSignature extends StatefulWidget with FullExtent {
  UpdateSignature({
    required this.signupModel,
    required this.journeyController,
    super.key,
  });

  final SignupModel signupModel;
  final JourneyController journeyController;

  @override
  State<UpdateSignature> createState() => _UpdateSignatureState();
}

class _UpdateSignatureState extends State<UpdateSignature> {
  final _formKey = GlobalKey<FormState>();
  final EmrInkPadController _emrInkPadController = EmrInkPadController();

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

            if (widget.signupModel.currentStep == SignupStep.documentSaved) {
              return DocumentSavedSuccessful(
                signupModel: widget.signupModel,
                journeyController: widget.journeyController,
              );
            }

            return Column(
              children: [
                AccountSignaturePad(
                  signupModel: widget.signupModel,
                  journeyController: widget.journeyController,
                  emrInkPadController: _emrInkPadController,
                  changeNotifyingService: changeNotifyingService,
                ),
                verticalSpacer(),
                if (widget.journeyController.isProcessing) ...{
                  processingIndicator(),
                } else ...{
                  colouredButton(
                    text: context.l10n.confirm,
                    style:
                        widget
                                .journeyController
                                .paymentDetailsService
                                .signature !=
                            null
                        ? EmrButtonStyles.cta()
                        : AccountRegistrationButtonStyles.disabled(theme),
                    onPressed:
                        widget
                                .journeyController
                                .paymentDetailsService
                                .signature !=
                            null
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
                                await JourneyController.saveModel(
                                  widget.signupModel,
                                );
                                if (context.mounted) {
                                  await EmrModal.showMessageBar(
                                    context,
                                    context.l10n.paymentDetailsUpdated,
                                  );
                                }
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
