import 'package:emr_account_registration/signup.dart';
import 'package:flutter/material.dart';

class PortalQrLoginUiActions extends UiAbstraction {
  @override
  Future<void> onBackFromRegister({BuildContext? context}) async {}

  @override
  Future<void> onNextFromRegister(
    JourneyController journeyController,
    SignupModel signupModel,
    String emailVerificationCallbackUrl, {
    required BuildContext context,
  }) async {}

  @override
  Future<void> onNextFromContactInfo(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {}

  @override
  Future<void> onCountrySelected(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {}

  @override
  Future<void> onGoToCountrySelection(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {}

  @override
  Future<void> onBackFromMarketingPrefs(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {}

  @override
  Future<void> onNextFromMarketingPrefs(
    JourneyController journeyController,
    SignupModel signupModel,
    Future<void> Function() onError, {
    BuildContext? context,
  }) async {}

  @override
  Future<CreateProspectAccountResponse> onCreateAccount(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    throw UnimplementedError('Create account not allowed');
  }

  @override
  Future<String?> onCompletionFromAlmostDone(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    throw UnimplementedError('Not allowed');
  }

  @override
  Future<void> onSuccessfulProspectConversion(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    await _signout(journeyController, signupModel, context: context);
  }

  @override
  Future<void> onCancelFromAlmostDone(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    await _signout(journeyController, signupModel, context: context);
  }

  @override
  Future<void> onGoToSelectIdentityProofType(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    await journeyController.navigationService.goToSelectIdentityProofType(
      signupModel,
    );
  }

  @override
  Future<void> onGoToSelectAddressProofType(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    await journeyController.navigationService.goToSelectAddressProofType(
      signupModel,
    );
  }

  @override
  Future<void> onBackFromSelectIdentityProofType(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    journeyController.endProcessing(notify: false);
  }

  @override
  Future<void> onNextFromSuccessfulDocumentUpload(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    journeyController.endProcessing(notify: false);
    await _signout(journeyController, signupModel, context: context);
  }

  @override
  Future<void> onBackFromSelectAddressProofType(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {}

  @override
  Future<void> onNextFromSelectAddressProofType(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    await journeyController.navigationService.goToUploadAddressProof(
      signupModel,
    );
  }

  @override
  Future<void> onNextFromSelectIdProofType(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    await journeyController.navigationService.goToUploadIdentityProof(
      signupModel,
    );
  }

  @override
  Future<void> onBackFromUploadIdentityProof(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    journeyController.endProcessing(notify: false);
    await journeyController.navigationService.goToSelectIdentityProofType(
      signupModel,
    );
  }

  @override
  Future<void> onBackFromUploadAddressProof(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    journeyController.endProcessing(notify: false);
    await journeyController.navigationService.goToSelectAddressProofType(
      signupModel,
    );
  }

  @override
  Future<void> onGoToIdentityDocumentDetails(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    await journeyController.navigationService
        .goToDisplayUploadedIdentityDocumentDetails(signupModel);
  }

  @override
  Future<void> onDocumentOCRFailed(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    await journeyController.navigationService.goToDocumentOCRFailed(
      signupModel,
    );
  }

  @override
  Future<void> onGoToAddressDocumentDetails(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    await journeyController.navigationService
        .goToDisplayUploadedAddressDocumentDetails(signupModel);
  }

  @override
  Future<void> onDocumentSavedSuccessful(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    await journeyController.navigationService.goToDocumentSavedSuccessful(
      signupModel,
    );
  }

  @override
  Future<void> onBackFromPaymentDetails(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    await _signout(journeyController, signupModel, context: context);
  }

  @override
  Future<void> onPaymentDetailsUpdated(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    await journeyController.navigationService.goToDocumentSavedSuccessful(
      signupModel,
    );
  }

  @override
  Future<void> onGoToPaymentDetails(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    await journeyController.navigationService.goToPaymentDetails(signupModel);
  }

  @override
  Future<void> onStartAgain(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    await _signout(journeyController, signupModel, context: context);
  }

  @override
  Future<void> onBackFromContactInfo(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    await _signout(journeyController, signupModel, context: context);
  }

  @override
  Future<void> onNextFromPhoneVerification(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    await _signout(journeyController, signupModel, context: context);
  }

  @override
  Future<void> onCancelFromCountrySelection(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    await _signout(journeyController, signupModel, context: context);
  }

  @override
  Future<void> onCancelFromRegister(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    await _signout(journeyController, signupModel, context: context);
  }

  @override
  Future<void> onBackFromCountrySelection(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    await _signout(journeyController, signupModel, context: context);
  }

  Future<void> _signout(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    await journeyController.accountService.userInfoService.signOut();
    journeyController.accountService.userInfoService.clear();
    if (context != null && context.mounted) {
      context.goToLogin();
    }
  }
}
