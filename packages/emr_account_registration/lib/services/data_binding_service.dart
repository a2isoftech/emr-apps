import 'package:emr_account_registration/signup.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:flutter/material.dart';

class DataBindingService {
  final JourneyController journeyController;
  final SignupModel signupModel;

  DataBindingService(this.signupModel, {required this.journeyController});

  bool disabled() => false;

  void notifyListenersInternal() {
    journeyController.changeNotifyingService.notifyListenersInternal();
  }

  void setFirstName(String val) {
    signupModel.firstName = val;
    notifyListenersInternal();
  }

  void setLastName(String val) {
    signupModel.lastName = val;
    notifyListenersInternal();
  }

  void setCanEmail({bool? val}) {
    signupModel.canEmail = val;
    notifyListenersInternal();
  }

  void setCanSms({bool? val}) {
    signupModel.canSms = val;
    notifyListenersInternal();
  }

  void setCanPhone({bool? val}) {
    signupModel.canPhone = val;
    notifyListenersInternal();
  }

  void setCanPost({bool? val}) {
    signupModel.canPost = val;
    notifyListenersInternal();
  }

  void setRole(String? val, {bool notify = true}) {
    signupModel.role = val;
    if (notify) {
      notifyListenersInternal();
    }
  }

  void setFrequency(Enum$VisitFrequency? val) {
    signupModel.frequency = val;
    notifyListenersInternal();
  }

  void setYard(String? val) {
    signupModel.yardCode = val;
    notifyListenersInternal();
  }

  void setPhoneNumberCountry(CountryData? val) {
    signupModel.phoneNumberCountryCode = val?.shortName;
    signupModel.dialingCode = val?.dialingCode;

    notifyListenersInternal();
  }

  void setLocatedAtCountry(CountryData? val, {bool notify = true}) {
    signupModel.locatedAtCountryCode = val?.shortName;
    signupModel.phoneNumberCountryCode = val?.shortName;
    signupModel.dialingCode = val?.dialingCode;

    if (notify) {
      notifyListenersInternal();
    }
  }

  void setPhoneNumber(String val) {
    signupModel.phoneNumberOriginal = val;

    if (val.startsWith('0')) {
      signupModel.phoneNumber = val.substring(1);
    } else {
      signupModel.phoneNumber = val;
    }
    notifyListenersInternal();
  }

  void setEmailAddress(String val) {
    signupModel.emailAddress = val;
    notifyListenersInternal();
  }

  void setAgreeToTnc({bool? val}) {
    signupModel.isAgreedToTermsAndConditions = val ?? false;

    notifyListenersInternal();
  }

  void setPaidIntoAccount({bool? val}) {
    signupModel.paidIntoAccount = val ?? false;

    notifyListenersInternal();
  }

  void setAccountHolderName(String val) {
    signupModel.accountHoldername = val;
    notifyListenersInternal();
  }

  void setSortCode(
    String val,
    void Function(String) updateBankName,
    BuildContext buildContext,
  ) {
    signupModel.sortCode = val;
    populateBankNameFromServer(updateBankName, buildContext);
    notifyListenersInternal();
  }

  void setAccountNumber(
    String val,
    void Function(String) updateBankName,
    BuildContext buildContext,
  ) {
    signupModel.bankAccountNumber = val;
    populateBankNameFromServer(updateBankName, buildContext);
    notifyListenersInternal();
  }

  void setBankname(String val) {
    signupModel.bankName = val;
    notifyListenersInternal();
  }

  void setEnableCel({bool? val}) {
    signupModel.enableCel = val ?? false;
    signupModel.isAgreedToTermsAndConditions = val ?? false;
    notifyListenersInternal();
  }

  void setAgreeToSecoreTnc({bool? val}) {
    signupModel.agreeToSecoreTnc = val ?? false;
    notifyListenersInternal();
  }

  void populateBankNameFromServer(
    void Function(String) updateBankName,
    BuildContext buildContext,
  ) {
    if (ValidationService.validateAccountNumber(
              signupModel.bankAccountNumber,
              buildContext,
              paidIntoAccount: signupModel.paidIntoAccount,
            ) ==
            null &&
        ValidationService.validateSortCode(
              signupModel.sortCode,
              buildContext,
              paidIntoAccount: signupModel.paidIntoAccount,
            ) ==
            null) {
      final country =
          AccountRegistrationEnumService.convertToCountryId(
            signupModel.getLocatedAtCountryCode(),
          ) ??
          Enum$CountryId.$unknown;
      journeyController.accountService
          .getBankName(
            sortCode: signupModel.sortCode!,
            accountNumber: signupModel.bankAccountNumber!,
            country: country == Enum$CountryId.$unknown
                ? Enum$CountryId.UK
                : country,
          )
          .then(
            (value) => {
              if (value != null) {updateBankName(value)},
            },
          );
    }
  }

  void setTitle(String val, UploadedDocumentDetailsModel? model) {
    model?.title = val;
    notifyListenersInternal();
  }

  void setDocumentFirstName(String val, UploadedDocumentDetailsModel? model) {
    model?.firstName = val;
    notifyListenersInternal();
  }

  void setDocumentLastName(String val, UploadedDocumentDetailsModel? model) {
    model?.lastName = val;
    notifyListenersInternal();
  }

  void setAddress1(String val, UploadedDocumentDetailsModel? model) {
    model?.address1 = val;
    notifyListenersInternal();
  }

  void setAddress2(String val, UploadedDocumentDetailsModel? model) {
    model?.address2 = val;
    notifyListenersInternal();
  }

  void setCity(String val, UploadedDocumentDetailsModel? model) {
    model?.city = val;
    notifyListenersInternal();
  }

  void setCounty(String val, UploadedDocumentDetailsModel? model) {
    model?.county = val;
    notifyListenersInternal();
  }

  void setPostcode(String val, UploadedDocumentDetailsModel? model) {
    model?.postCode = val;
    notifyListenersInternal();
  }

  void setDocumentNumber(String val, UploadedDocumentDetailsModel? model) {
    model?.documentNumber = val;
    notifyListenersInternal();
  }

  void setDocumentExpiryDate(
    DateTime? val,
    UploadedDocumentDetailsModel? model,
  ) {
    model?.dateOfExpiration = val;
    notifyListenersInternal();
  }
}
