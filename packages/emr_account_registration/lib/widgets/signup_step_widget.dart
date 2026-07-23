import 'package:emr_account_registration/signup.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignupStepWidget extends StatelessWidget {
  final JourneyController journeyController;
  final SignupModel signupModel;
  final String emailVerificationCallbackUrl;

  const SignupStepWidget({
    super.key,
    required this.journeyController,
    required this.signupModel,
    required this.emailVerificationCallbackUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<JourneyController>(
      builder: (context, journeyController, child) {
        final registerPage = Register(
          signupModel: signupModel,
          journeyController: journeyController,
          emailVerificationCallbackUrl: emailVerificationCallbackUrl,
        );
        if (signupModel.currentStep == SignupStep.countrySelection) {
          return CountrySelectionScreen(
            signupModel: signupModel,
            journeyController: journeyController,
          );
        } else if (signupModel.currentStep == SignupStep.register) {
          return registerPage;
        } else if (signupModel.currentStep == SignupStep.verifyPhone) {
          return VerifyPhone(
            signupModel: signupModel,
            journeyController: journeyController,
          );
        } else if (signupModel.currentStep == SignupStep.verifyEmail) {
          return VerifyEmail(
            signupModel: signupModel,
            journeyController: journeyController,
            emailVerificationCallbackUrl: emailVerificationCallbackUrl,
          );
        } else if (signupModel.currentStep == SignupStep.contactInfo) {
          return ContactInfo(
            signupModel: signupModel,
            journeyController: journeyController,
          );
        } else if (signupModel.currentStep == SignupStep.marketingPrefs) {
          return MarketingPrefs(
            signupModel: signupModel,
            journeyController: journeyController,
          );
        } else if (signupModel.currentStep == SignupStep.almostDone) {
          return AlmostDone(
            signupModel: signupModel,
            journeyController: journeyController,
          );
        } else if (signupModel.currentStep ==
            SignupStep.selectIdentityProofType) {
          return IdentityProofPage(
            signupModel: signupModel,
            journeyController: journeyController,
          );
        } else if (signupModel.currentStep ==
            SignupStep.selectAddressProofType) {
          return AddressProofPage(
            signupModel: signupModel,
            journeyController: journeyController,
          );
        } else if (signupModel.currentStep == SignupStep.uploadIdentityProof) {
          return UploadIdentityProofPage(
            signupModel: signupModel,
            journeyController: journeyController,
          );
        } else if (signupModel.currentStep == SignupStep.uploadAddressProof) {
          return UploadAddressProofPage(
            signupModel: signupModel,
            journeyController: journeyController,
          );
        } else if (signupModel.currentStep ==
            SignupStep.displayUploadedIdentityDocumentDetails) {
          return UploadedDocumentDetails(
            signupModel: signupModel,
            journeyController: journeyController,
            identificationType: Enum$IdentificationType.PHOTO_ID,
          );
        } else if (signupModel.currentStep ==
            SignupStep.displayUploadedAddressDocumentDetails) {
          return UploadedDocumentDetails(
            signupModel: signupModel,
            journeyController: journeyController,
            identificationType: Enum$IdentificationType.ADDRESS_ID,
          );
        } else if (signupModel.currentStep == SignupStep.documentOCRFailed) {
          return DocumentOCRFailed(
            signupModel: signupModel,
            journeyController: journeyController,
          );
        } else if (signupModel.currentStep == SignupStep.documentSaved) {
          return DocumentSavedSuccessful(
            signupModel: signupModel,
            journeyController: journeyController,
          );
        } else if (signupModel.currentStep == SignupStep.paymentDetails) {
          return PaymentDetailsPage(
            signupModel: signupModel,
            journeyController: journeyController,
          );
        } else if (signupModel.currentStep == SignupStep.accountCreated) {
          return SuccessPage(
            signupModel: signupModel,
            journeyController: journeyController,
          );
        } else {
          return registerPage;
        }
      },
    );
  }
}
