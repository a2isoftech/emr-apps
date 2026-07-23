import 'package:emr_account_registration/signup.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class CashierUiActions extends UiAbstraction {
  static bool isSignUpFlow = false;
  static String? contractId;

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
    if (context != null && context.mounted) {
      var (success, error) = await context.coreApi.accountService.updateAccount(
        considerEmptyAsNullForContactPreference: true,
        UpdateAccountInput(
          code: signupModel.accountCode!,
          preferredYard: signupModel.yardCode,
          industryGroups: IndustryGroups(trader: signupModel.role),
          accountStatus: Enum$AccountStatus.LIVE.name,
          contacts: [
            UpdateContactInput(
              contact: Contact(
                id: contractId ?? signupModel.contactId,
                contactTypes: null,
                title: null,
                firstName: signupModel.firstName,
                lastName: signupModel.lastName,
                contactPreferences: ContactPreference(
                  mobile: ContactMethod(
                    '',
                    enabled: signupModel.canSms ?? false,
                  ),
                  email: ContactMethod(
                    '',
                    enabled: signupModel.canEmail ?? false,
                  ),
                  phone: ContactMethod(
                    '',
                    enabled: signupModel.canPhone ?? false,
                  ),
                  post: ContactMethod(
                    '',
                    enabled: (signupModel.canPost ?? false),
                  ),
                ),
                proofOfIdentification: null,
                proofOfAddress: null,
              ),
            ),
          ],
        ),
      );

      journeyController.endProcessing();

      if (!success) {
        await onError();
      } else {
        await journeyController.navigationService.goToAlmostDone(signupModel);
      }
    }

    journeyController.navigationService.goToAlmostDone(signupModel);
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
    Navigator.of(context!).pop();
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
    if (isSignUpFlow) {
      await journeyController.navigationService.goToAlmostDone(signupModel);
    } else {
      Navigator.of(context!).pop();
    }
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
    if (isSignUpFlow) {
      await journeyController.navigationService.goToAlmostDone(signupModel);
    } else {
      Navigator.of(context!).pop();
    }
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
    if (isSignUpFlow) {
      await journeyController.navigationService.goToDocumentSavedSuccessful(
        signupModel,
      );
    } else {
      Navigator.of(context!).pop();
    }
  }

  @override
  Future<void> onBackFromPaymentDetails(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    if (isSignUpFlow) {
      await journeyController.navigationService.goToAlmostDone(signupModel);
    } else {
      Navigator.of(context!).pop();
    }
  }

  @override
  Future<void> onPaymentDetailsUpdated(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    if (isSignUpFlow) {
      await journeyController.navigationService.goToAlmostDone(signupModel);
    } else {
      Navigator.of(context!).pop();
    }
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
    Navigator.of(context!).pop();
  }

  @override
  Future<void> onBackFromContactInfo(
    JourneyController journeyController,
    SignupModel signupModel, {
    BuildContext? context,
  }) async {
    Navigator.of(context!).pop();
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
