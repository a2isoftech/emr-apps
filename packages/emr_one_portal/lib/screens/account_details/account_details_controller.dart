import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:flutter/material.dart';

class AccountDetailsController extends ChangeNotifier {
  AccountDetailsController({
    required this.accountService,
    required this.accountChangeRequestService,
    required this.userInfoService,
  });

  final AccountServicePortal accountService;
  final AccountChangeRequestService accountChangeRequestService;
  final CustomerUserInfoService userInfoService;
  AccountDetailsModel? model;
  bool detailsSubmitted = false;
  List<String> errors = [];

  bool _submitting = false;
  void toggleSubmitting({bool value = false}) {
    _submitting = value;
    notifyListeners();
  }

  bool isSubmitting() => _submitting;
  bool isRetailUser() => userInfoService.userInfo.isRetail;

  bool _readOnlyMode = true;
  void toggleReadOnlyMode({bool value = true}) {
    _readOnlyMode = value;
    notifyListeners();
  }

  bool isInReadOnlyModel() => _readOnlyMode;

  FeedbackModel feedbackModel = FeedbackModel();
  bool showFeedback() {
    if (feedbackModel.hasFeedback) {
      Future.delayed(
        const Duration(seconds: PortalSettings.errorDisplayDuration),
        notifyListeners,
      );
      feedbackModel.hasFeedback = false;
      return true;
    }
    return false;
  }

  void showError(String error) {
    feedbackModel.set(msg: error, type: FeedbackType.error);
    notifyListeners();
  }

  void setContactName(String val) {
    model!.accountDetails.contactName = val;
    notifyListeners();
  }

  void setJobTitle(String val) {
    model!.accountDetails.jobTitle = val;
    notifyListeners();
  }

  void setContactEmail(String val) {
    model!.accountDetails.contactEmail = val;
    notifyListeners();
  }

  void setAddress1(String val) {
    model!.accountDetails.address1 = val;
    notifyListeners();
  }

  void setAddress2(String val) {
    model!.accountDetails.address2 = val;
    notifyListeners();
  }

  void setAddress3(String val) {
    model!.accountDetails.address3 = val;
    notifyListeners();
  }

  void setTown(String val) {
    model!.accountDetails.town = val;
    notifyListeners();
  }

  void setPostCode(String val) {
    model!.accountDetails.postCode = val;
    notifyListeners();
  }

  void setCounty(String val) {
    model!.accountDetails.county = val;
    notifyListeners();
  }

  void setCountryCode(String val) {
    model!.accountDetails.countryCode = val;
    notifyListeners();
  }

  void setTelephone(String val) {
    model!.accountDetails.telephoneNumber = val;
    notifyListeners();
  }

  void setMobileNumber(String val) {
    model!.accountDetails.mobileNumber = val;
    notifyListeners();
  }

  void setFaxNumber(String val) {
    model!.accountDetails.faxNumber = val;
    notifyListeners();
  }

  void setWebsite(String val) {
    model!.accountDetails.website = val;
    notifyListeners();
  }

  void setVatNumber(String val) {
    model!.accountDetails.vatNumber = val;
    notifyListeners();
  }

  void setEoriNumber(String val) {
    model!.accountDetails.eoriNumber = val;
    notifyListeners();
  }

  void setRef(String val) {
    model!.bankDetails.ref = val;
    notifyListeners();
  }

  void setBankName(String val) {
    model!.bankDetails.bankName = val;
    notifyListeners();
  }

  void setIban(String val) {
    model!.bankDetails.iban = val;
    notifyListeners();
  }

  void setSwift(String val) {
    model!.bankDetails.swift = val;
    notifyListeners();
  }

  void setPaymentTerms(String val) {
    model!.bankDetails.paymentTerms = val;
    notifyListeners();
  }

  Future<void> requestChangeInAccountDetails(
    AccountDetailsModel? oldModel,
    AccountDetailsModel? newModel,
  ) async {
    toggleSubmitting(value: true);

    final result = await accountChangeRequestService
        .requestChangeInAccountDetails(oldModel, newModel);
    if (result) {
      detailsSubmitted = true;
    } else {
      feedbackModel.set(
        msg: 'Request could not be submitted to change account details.',
        type: FeedbackType.error,
      );
    }
    toggleSubmitting();
  }

  void setAccountNumber(
    String val,
    void Function(String) updateBankName,
    String countryId,
    BuildContext buildContext,
  ) {
    model!.bankDetails.accountNumber = val;

    notifyListeners();
  }

  void setAccountName(String val) {
    model!.bankDetails.accountName = val;
    notifyListeners();
  }

  void setSortCode(
    String val,
    void Function(String) updateBankName,
    String countryId,
    BuildContext buildContext,
  ) {
    model!.bankDetails.sortCode = val;

    notifyListeners();
  }

  Future<ChangeRequestViewModel> getAccountDetails(Locale activeLocale) async {
    final accountDetails = await accountService.getAccountDetails();
    final changeRequestSummary = await accountChangeRequestService
        .hasPendingChangeRequest();
    final country = CountryData.getCountryData(
      activeLocale.countryCode ?? AccountRegistrationStrings.defaultCountry,
    );

    return ChangeRequestViewModel(
      model: accountDetails,
      changeRequestSummary: changeRequestSummary,
      country: country,
    );
  }

  String? validate(
    String fieldName,
    String? oldValue,
    String? newValue,
    String? Function() validate,
  ) {
    String? result;
    if (oldValue?.toLowerCase() != newValue?.toLowerCase()) {
      result = validate();
    }
    if (result == null) {
      if (errors.contains(fieldName)) {
        errors.remove(fieldName);
      }
    } else {
      if (!errors.contains(fieldName)) {
        errors.add(fieldName);
      }
    }
    return result;
  }
}
