import 'package:emr_account_registration/signup.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_core_api/services/enum_service.dart';
import 'package:flutter/material.dart';

abstract class UiAbstraction {
  static UiAbstraction getUiActions(RunContext runContext) {
    switch (runContext) {
      case RunContext.portal:
        return PortalUiActions();
      case RunContext.emrApps:
        return EmrAppsUiActions();
      case RunContext.weighbridge:
        return EmrAppsUiActions();
      case RunContext.cashier:
        return CashierUiActions();
      case RunContext.portalQrLogin:
        return PortalQrLoginUiActions();
    }
  }

  Future<void> onBackFromRegister({BuildContext? context});

  Future<void> onNextFromRegister(
    JourneyController journeyController,
    SignupModel signupModel,
    String emailVerificationCallbackUrl, {
    required BuildContext context,
  });

  Future<void> onNextFromPhoneVerification(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  });

  Future<void> onNextFromContactInfo(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  });

  Future<void> onBackFromContactInfo(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  });

  Future<void> onBackFromMarketingPrefs(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  });

  Future<void> onNextFromMarketingPrefs(
    JourneyController journeyController,
    SignupModel signupModel,
    Future<void> Function() onError, {
    BuildContext? context,
  });

  Future<void> onGoToCountrySelection(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  });

  Future<void> onBackFromCountrySelection(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  });

  Future<void> onGoToSelectIdentityProofType(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  });

  Future<void> onGoToSelectAddressProofType(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  });

  Future<void> onCountrySelected(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  });

  Future<void> onCancelFromCountrySelection(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  });

  Future<void> onBackFromSelectIdentityProofType(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  });

  Future<void> onNextFromSuccessfulDocumentUpload(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  });

  Future<void> onBackFromPaymentDetails(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  });

  Future<void> onPaymentDetailsUpdated(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  });

  Future<void> onGoToPaymentDetails(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  });

  Future<void> onBackFromSelectAddressProofType(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  });

  Future<void> onBackFromUploadIdentityProof(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  });

  Future<void> onBackFromUploadAddressProof(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  });

  Future<CreateProspectAccountResponse> onCreateAccount(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  });

  Future<String?> onCompletionFromAlmostDone(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  });

  Future<void> onSuccessfulProspectConversion(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  });

  Future<void> onCancelFromAlmostDone(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  });

  Future<void> onNextFromSelectIdProofType(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  });

  Future<void> onNextFromSelectAddressProofType(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  });

  Future<void> onGoToIdentityDocumentDetails(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  });

  Future<void> onGoToAddressDocumentDetails(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  });

  Future<void> onDocumentOCRFailed(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  });

  Future<void> onDocumentSavedSuccessful(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  });

  Future<void> onStartAgain(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  });

  Future<void> onCancelFromRegister(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  });

  String getAccountSource(RunContext runContext) {
    switch (runContext) {
      case RunContext.portal:
        return EnumService.enumToString(Enum$AccountSource.PORTAL);
      case RunContext.emrApps:
        return EnumService.enumToString(Enum$AccountSource.INTERNAL);
      case RunContext.weighbridge:
        return EnumService.enumToString(Enum$AccountSource.YARD);
      case RunContext.cashier:
        return EnumService.enumToString(Enum$AccountSource.INTERNAL);
      case RunContext.portalQrLogin:
        return EnumService.enumToString(Enum$AccountSource.PORTAL);
    }
  }

  String getTerritoryId(String locatedAtCountryCode) {
    switch (locatedAtCountryCode) {
      case 'UK':
      case 'GB':
        return 'territories/A11';
      case 'US':
        return 'territories/A42';
      case 'NL':
        return 'territories/A21';
    }
    return 'territories/A11';
  }
}
