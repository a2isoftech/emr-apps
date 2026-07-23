import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class EmrAppsUiActions extends UiAbstraction {
  @override
  Future<void> onBackFromRegister({BuildContext? context}) async {}

  @override
  Future<void> onNextFromRegister(
    JourneyController journeyController,
    SignupModel signupModel,
    String emailVerificationCallbackUrl, {
    BuildContext? context,
  }) async {
    await journeyController.navigationService.goToContactInfo(signupModel);
  }

  @override
  Future<void> onNextFromContactInfo(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    journeyController.navigationService.goToMarketingPrefs(signupModel);
  }

  @override
  Future<void> onCountrySelected(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    journeyController.navigationService.goToRegister(signupModel);
  }

  @override
  Future<void> onGoToCountrySelection(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    journeyController.navigationService.goToCountrySelection(signupModel);
  }

  @override
  Future<void> onBackFromMarketingPrefs(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    journeyController.navigationService.goToContactInfo(signupModel);
  }

  @override
  Future<void> onNextFromMarketingPrefs(
    JourneyController journeyController,
    SignupModel signupModel,
    Future<void> Function() onError, {
    BuildContext? context,
  }) async {
    var response = await journeyController.uiActions.onCreateAccount(
      journeyController,
      signupModel,
    );

    journeyController.endProcessing();

    if (response.accountNumber == null) {
      await onError();
    } else {
      signupModel.accountCode = response.accountNumber;
      await journeyController.navigationService.goToAlmostDone(signupModel);
    }
  }

  @override
  Future<CreateProspectAccountResponse> onCreateAccount(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    final response = await journeyController.accountService.createAccount(
      signupModel,
      getAccountSource(signupModel.runContext),
      getTerritoryId(signupModel.getLocatedAtCountryCode()),
    );

    signupModel.userId = response.userId;
    signupModel.accountCode = response.accountNumber;
    return response;
  }

  @override
  Future<String?> onCompletionFromAlmostDone(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    return await journeyController.accountService
        .convertProspectToRetailAccount(
          signupModel.accountCode!,
          signupModel.userId!,
        );
  }

  @override
  Future<void> onSuccessfulProspectConversion(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    await journeyController.navigationService.goToAccountCreated(signupModel);
  }

  @override
  Future<void> onCancelFromAlmostDone(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    signupModel.currentStep = SignupStep.register;
    await JourneyController.resetModel();
    if (context != null && context.mounted) {
      context.pushNamed('Accounts');
    } else {
      await journeyController.navigationService.goToStart(signupModel);
    }
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
    await journeyController.navigationService.goToAlmostDone(signupModel);
  }

  @override
  Future<void> onNextFromSuccessfulDocumentUpload(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    await journeyController.navigationService.goToAlmostDone(signupModel);
  }

  @override
  Future<void> onBackFromSelectAddressProofType(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    await journeyController.navigationService.goToAlmostDone(signupModel);
  }

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
    await journeyController.navigationService.goToAlmostDone(signupModel);
  }

  @override
  Future<void> onPaymentDetailsUpdated(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    await journeyController.navigationService.goToAlmostDone(signupModel);
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
    signupModel.currentStep = SignupStep.register;
    await JourneyController.resetModel();
    if (context != null && context.mounted) {
      context.pushNamed('Accounts');
    } else {
      await journeyController.navigationService.goToStart(signupModel);
    }
  }

  @override
  Future<void> onBackFromContactInfo(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    await journeyController.navigationService.goToRegister(signupModel);
  }

  @override
  Future<void> onNextFromPhoneVerification(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {}

  @override
  Future<void> onCancelFromCountrySelection(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    await journeyController.navigationService.goToRegister(signupModel);
  }

  @override
  Future<void> onCancelFromRegister(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {}

  @override
  Future<void> onBackFromCountrySelection(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    await journeyController.navigationService.goToRegister(signupModel);
  }
}
