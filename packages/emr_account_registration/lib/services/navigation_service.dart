import 'package:emr_account_registration/signup.dart';

class NavigationService {
  final JourneyController journeyController;

  String? selectedProofPageCaption;

  NavigationService({required this.journeyController});

  Future<void> goToCountrySelection(SignupModel model) async {
    model.currentStep = SignupStep.countrySelection;
    await JourneyController.saveModel(model);
    journeyController.notifyListenersInternal();
  }

  Future<void> goToStart(SignupModel model) async {
    model.currentStep = SignupStep.register;
    await JourneyController.resetModel();
    journeyController.notifyListenersInternal();
  }

  Future<void> goToRegister(SignupModel model) async {
    model.currentStep = SignupStep.register;
    await JourneyController.saveModel(model);
    journeyController.notifyListenersInternal();
  }

  Future<void> goToVerifyPhone(SignupModel model) async {
    model.currentStep = SignupStep.verifyPhone;
    await JourneyController.saveModel(model);
    journeyController.notifyListenersInternal();
  }

  Future<void> goToVerifyEmail(SignupModel model) async {
    model.currentStep = SignupStep.verifyEmail;
    await JourneyController.saveModel(model);
    journeyController.notifyListenersInternal();
  }

  Future<void> goToContactInfo(SignupModel model) async {
    model.currentStep = SignupStep.contactInfo;
    await JourneyController.saveModel(model);
    journeyController.notifyListenersInternal();
  }

  Future<void> goToMarketingPrefs(SignupModel model) async {
    model.currentStep = SignupStep.marketingPrefs;
    await JourneyController.saveModel(model);
    journeyController.notifyListenersInternal();
  }

  Future<void> goToAlmostDone(SignupModel model) async {
    model.currentStep = SignupStep.almostDone;
    await JourneyController.saveModel(model);
    journeyController.notifyListenersInternal();
  }

  Future<void> goToPaymentDetails(SignupModel model) async {
    model.currentStep = SignupStep.paymentDetails;
    await JourneyController.saveModel(model);
    journeyController.notifyListenersInternal();
  }

  Future<void> goToSelectIdentityProofType(SignupModel model) async {
    model.currentStep = SignupStep.selectIdentityProofType;
    journeyController.notifyListenersInternal();
  }

  Future<void> goToSelectAddressProofType(SignupModel model) async {
    model.currentStep = SignupStep.selectAddressProofType;
    journeyController.notifyListenersInternal();
  }

  Future<void> goToUploadIdentityProof(SignupModel model) async {
    model.currentStep = SignupStep.uploadIdentityProof;
    await JourneyController.saveModel(model);
    journeyController.notifyListenersInternal();
  }

  Future<void> goToUploadAddressProof(SignupModel model) async {
    model.currentStep = SignupStep.uploadAddressProof;
    await JourneyController.saveModel(model);
    journeyController.notifyListenersInternal();
  }

  Future<void> goToDisplayUploadedIdentityDocumentDetails(
    SignupModel model,
  ) async {
    model.currentStep = SignupStep.displayUploadedIdentityDocumentDetails;
    await JourneyController.saveModel(model);
    journeyController.notifyListenersInternal();
  }

  Future<void> goToDisplayUploadedAddressDocumentDetails(
    SignupModel model,
  ) async {
    model.currentStep = SignupStep.displayUploadedAddressDocumentDetails;
    await JourneyController.saveModel(model);
    journeyController.notifyListenersInternal();
  }

  Future<void> goToDocumentOCRFailed(SignupModel model) async {
    model.currentStep = SignupStep.documentOCRFailed;
    await JourneyController.saveModel(model);
    journeyController.notifyListenersInternal();
  }

  Future<void> goToDocumentSavedSuccessful(SignupModel model) async {
    model.currentStep = SignupStep.documentSaved;
    await JourneyController.saveModel(model);
    journeyController.notifyListenersInternal();
  }

  Future<void> goToAccountCreated(SignupModel model) async {
    model.currentStep = SignupStep.accountCreated;
    await JourneyController.saveModel(model);
    journeyController.notifyListenersInternal();
  }
}
