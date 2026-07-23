import 'package:emr_account_registration/signup.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UploadedDocumentDetails extends StatelessWidget with FullExtent {
  UploadedDocumentDetails({
    required this.journeyController,
    required this.signupModel,
    required this.identificationType,
    super.key,
  });

  final JourneyController journeyController;
  final SignupModel signupModel;
  final Enum$IdentificationType identificationType;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final locatedAtCountryCode = signupModel.getLocatedAtCountryCode();

    final uploadedDocumentDetails =
        CountryBasedService.getUploadedDocumentDetailsModel(
          signupModel,
          identificationType,
        );

    return SignupLayout(
      runContext: signupModel.runContext,
      title: CountryBasedService.getPageTitleForUploadedDocumentDetails(
        context,
        locatedAtCountryCode,
      ),
      formKey: _formKey,
      onGoBack: () async {
        if (signupModel.getLocatedAtCountryCode().isCountryNL()) {
          await journeyController.navigationService.goToAlmostDone(signupModel);
        } else {
          if (identificationType == Enum$IdentificationType.PHOTO_ID) {
            await journeyController.uiActions.onNextFromSelectIdProofType(
              journeyController,
              signupModel,
              context: context,
            );
          } else {
            await journeyController.uiActions.onNextFromSelectAddressProofType(
              journeyController,
              signupModel,
              context: context,
            );
          }
        }
      },
      widgets: [
        if (journeyController.validationService.hasDetectedDifferentNameOnId(
              signupModel,
              identificationType,
            ) &&
            !locatedAtCountryCode.isCountryNL()) ...[
          MessageBar(
            text: context.l10n.detectedDifferentDetailsNote,
            messageBarType: MessageBarType.warning,
            barColor: AccountRegistrationSettings.warningColor,
          ),
          verticalSpacer(),
        ],
        //Consumer Widget to listen for changes
        Consumer<ChangeNotifyingService>(
          builder: (context, dataBindingService, child) {
            debugPrint('refresh document details');
            return Column(
              children: [
                ...idProofwidgets(
                  signupModel.runContext,
                  journeyController,
                  theme,
                  context,
                  uploadedDocumentDetails,
                ),
                verticalSpacer(),
                AddressInput(
                  controller: journeyController,
                  uploadedDocumentDetails: uploadedDocumentDetails,
                  countryId: locatedAtCountryCode,
                ),
                verticalSpacer(),
                if (!locatedAtCountryCode.isCountryNL())
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 5,
                        child: wrappedWidget(
                          theme: theme,
                          label: context.l10n.documentOrLicenceNumber,
                          child: TextFormField(
                            initialValue:
                                uploadedDocumentDetails?.documentNumber,
                            onChanged: (val) =>
                                journeyController.dataBinding.setDocumentNumber(
                                  val,
                                  uploadedDocumentDetails,
                                ),
                            validator: (value) => (value ?? '').isEmpty
                                ? context.l10n.enterDocumentNumber
                                : null,
                          ),
                        ),
                      ),
                      const SizedBox(width: Insets.gutter / 2),
                      Expanded(
                        flex: 5,
                        child: wrappedWidget(
                          theme: theme,
                          label: context.l10n.expiryDate,
                          child: DatePicker(
                            journeyController: journeyController,
                            uploadedDocumentDetails: uploadedDocumentDetails,
                          ),
                        ),
                      ),
                    ],
                  ),
                if (!locatedAtCountryCode.isCountryNL()) verticalSpacer(),
                SizedBox(
                  width: 200,
                  child: TextButton(
                    style: AccountRegistrationButtonStyles.secondaryCta(theme),
                    onPressed: () async {
                      if (identificationType ==
                          Enum$IdentificationType.PHOTO_ID) {
                        await journeyController.uiActions
                            .onNextFromSelectIdProofType(
                              journeyController,
                              signupModel,
                              context: context,
                            );
                      } else {
                        await journeyController.uiActions
                            .onNextFromSelectAddressProofType(
                              journeyController,
                              signupModel,
                            );
                      }
                    },
                    child: Text(context.l10n.reupload),
                  ),
                ),
                verticalSpacer(),
                if (journeyController.isProcessing) ...{
                  processingIndicator(),
                } else ...{
                  SizedBox(
                    width: 200,
                    child: TextButton(
                      style:
                          journeyController.validationService
                              .canSubmitFromUploadedDocumentDetails(
                                signupModel.getLocatedAtCountryCode(),
                                identificationType,
                                uploadedDocumentDetails,
                                context,
                              )
                          ? EmrButtonStyles.cta()
                          : AccountRegistrationButtonStyles.disabled(theme),
                      onPressed:
                          journeyController.validationService
                              .canSubmitFromUploadedDocumentDetails(
                                signupModel.getLocatedAtCountryCode(),
                                identificationType,
                                uploadedDocumentDetails,
                                context,
                              )
                          ? () async {
                              journeyController.startProcessing();
                              final result = await journeyController
                                  .documentService
                                  .saveDocument(
                                    signupModel: signupModel,
                                    uploadedDocumentDetails:
                                        uploadedDocumentDetails,
                                    identificationType: identificationType,
                                    identificationSubType:
                                        CountryBasedService.getIdentificationSubType(
                                          locatedAtCountryCode,
                                          signupModel,
                                          identificationType,
                                        ),

                                    onError: (err) async {
                                      LoggingService.logToConsole(err);
                                      if (context.mounted) {
                                        LoggingService.logFailure(
                                          AccountRegistrationTelemetry
                                              .kUploadDocumentData,
                                          err,
                                          partyAccountNo:
                                              signupModel.accountCode,
                                          userId: signupModel.userId,
                                        );
                                        LoggingService.logToConsole(err);

                                        await journeyController.uiActions
                                            .onDocumentOCRFailed(
                                              journeyController,
                                              signupModel,
                                              context: context,
                                            );
                                      }
                                    },
                                  );

                              if (result != null) {
                                if (identificationType ==
                                    Enum$IdentificationType.PHOTO_ID) {
                                  signupModel.proofOfIdUpdated = true;
                                } else {
                                  signupModel.proofOfAddressUpdated = true;
                                }
                                signupModel.addressEntered = true;
                                await journeyController.uiActions
                                    .onDocumentSavedSuccessful(
                                      journeyController,
                                      signupModel,
                                      context: context.mounted ? context : null,
                                    );
                              } else {
                                await journeyController.uiActions
                                    .onDocumentOCRFailed(
                                      journeyController,
                                      signupModel,
                                      context: context.mounted ? context : null,
                                    );
                              }
                              journeyController.endProcessing();
                            }
                          : null,
                      child: Text(context.l10n.continueForm),
                    ),
                  ),
                },
              ],
            );
          },
        ),
      ],
    );
  }

  List<Widget> idProofwidgets(
    RunContext runContext,
    JourneyController journeyController,
    ThemeData theme,
    BuildContext buildContext,
    UploadedDocumentDetailsModel? uploadedDocumentDetails,
  ) {
    if (identificationType == Enum$IdentificationType.PHOTO_ID) {
      final titles =
          (runContext.isPortal
                  ? AccountRegistrationRemoteConfigService.titles
                  : JourneyController.titles)
              .entries
              .map(
                (e) => DropdownMenuItem(
                  value: e.value,
                  child: Text(
                    e.key,
                    style: TextStyle(color: theme.colorScheme.outline),
                  ),
                ),
              )
              .toList();

      return [
        verticalSpacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 5,
              child: wrappedWidget(
                theme: theme,
                label: buildContext.l10n.title,
                child: DropdownButtonFormField(
                  initialValue: '',
                  isExpanded: true,
                  onChanged: (value) => {
                    journeyController.dataBinding.setTitle(
                      value!,
                      uploadedDocumentDetails,
                    ),
                  },
                  items: titles,
                  validator: (value) => (value ?? '').isEmpty
                      ? buildContext.l10n.selectTitle
                      : null,
                ),
              ),
            ),
            const SizedBox(width: Insets.gutter / 2),
            Expanded(
              flex: 5,
              child: wrappedWidget(
                theme: theme,
                label: buildContext.l10n.firstName,
                child: TextFormField(
                  initialValue: uploadedDocumentDetails?.firstName,
                  onChanged: (val) => journeyController.dataBinding
                      .setDocumentFirstName(val, uploadedDocumentDetails),
                  validator: (value) => (value ?? '').isEmpty
                      ? buildContext.l10n.pleaseEnterAFirstName
                      : null,
                ),
              ),
            ),
            const SizedBox(width: Insets.gutter / 2),
            Expanded(
              flex: 5,
              child: wrappedWidget(
                theme: theme,
                label: buildContext.l10n.lastName,
                child: TextFormField(
                  initialValue: uploadedDocumentDetails?.lastName,
                  onChanged: (val) => journeyController.dataBinding
                      .setDocumentLastName(val, uploadedDocumentDetails),
                  validator: (value) => (value ?? '').isEmpty
                      ? buildContext.l10n.pleaseEnterLastName
                      : null,
                ),
              ),
            ),
          ],
        ),
      ];
    } else {
      return [];
    }
  }
}
