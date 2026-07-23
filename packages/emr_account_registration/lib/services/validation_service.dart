import 'package:emr_account_registration/signup.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_core_api/models/models.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class ValidationService {
  final JourneyController journeyController;

  ValidationService({required this.journeyController});

  bool get disabled => false;

  static String? validateMobileNumber(
    String? value,
    String countryId,
    BuildContext buildContext,
  ) {
    if (value?.isEmpty ?? true) {
      return null;
    }

    if (value != null) {
      //Remove hyphens fom the phone number for validation.
      final sanitizedValue = normalizePhoneNumber(value, countryId);
      if (countryId.isCountryNL()) {
        if (!RegExp(r'^\d{9,11}$').hasMatch(sanitizedValue)) {
          return buildContext.l10n.errMsgNetherlandMobileNumberLength;
        }
        return null;
      } else if (countryId.isCountryUK()) {
        if (!RegExp(r'^\d{10,11}$').hasMatch(sanitizedValue)) {
          return buildContext.l10n.errMsgUKMobileNumberLength;
        }
        return null;
      } else if (countryId.isCountryUS()) {
        if (!RegExp(r'^\d{10}$').hasMatch(sanitizedValue)) {
          return buildContext.l10n.errMsgUSMobileNumberLength;
        }
        return null;
      }
      if (!RegExp(r'^\d{10,12}$').hasMatch(sanitizedValue)) {
        return buildContext.l10n.errMsgMobileNumberLength;
      }
      return null;
    }
    return buildContext.l10n.errMsgEnterMobileNumber(
      LocalizationService.getPhoneNumberString(countryId, buildContext),
    );
  }

  static String? validateMobileNumberNoEmpty(
    String? value,
    String countryId,
    BuildContext buildContext,
  ) {
    if (value == null || value.isEmpty) {
      return buildContext.l10n.errMsgEnterMobileNumber(
        LocalizationService.getPhoneNumberString(countryId, buildContext),
      );
    }
    return validateMobileNumber(value, countryId, buildContext);
  }

  static String? validateEmail(String? value, BuildContext context) {
    if (value == null || value.trim().isEmpty) {
      return null;
    }

    final emailRegex = RegExp(
      r'^[A-Za-z0-9]+([._%+-][A-Za-z0-9]+)*@[A-Za-z0-9]+([.-][A-Za-z0-9]+)*.[A-Za-z]{2,}$',
    );

    if (!emailRegex.hasMatch(value.trim())) {
      return context.l10n.invalidEmailAddress;
    }

    return null;
  }

  static String? validateEmailNoEmpty(
    String? value,
    BuildContext buildContext,
  ) {
    final email = value?.trim();

    if (email == null || email.isEmpty) {
      return buildContext.l10n.pleaseEnterEmailAddress;
    }

    return validateEmail(email, buildContext);
  }

  static String? validateVerificationCode(
    String? value,
    BuildContext buildContext,
  ) {
    return (value != null &&
            RegExp(r'^\d{6}$').hasMatch(value) &&
            value.length == 6)
        ? null
        : buildContext.l10n.errMsgVerificationCodeInvalid;
  }

  static String? validateFirstName(String? value, BuildContext buildContext) {
    if (value == null || value.isEmpty) {
      return buildContext.l10n.enterFirstName;
    }
    return null;
  }

  static String? validateLastName(String? value, BuildContext buildContext) {
    if (value == null || value.isEmpty) {
      return buildContext.l10n.pleaseEnterLastName;
    }
    return null;
  }

  static String? validateRole(String? value, BuildContext buildContext) {
    if (value == null || value == '0') {
      return buildContext.l10n.msgSelectReasonForAccountCreation;
    } else {
      return null;
    }
  }

  static String? validateFrequency(
    Enum$VisitFrequency? value,
    BuildContext buildContext,
  ) {
    if (value == null || value == Enum$VisitFrequency.$unknown) {
      return buildContext.l10n.selectPlantoVisit;
    } else {
      return null;
    }
  }

  static String? validateYardCode(String? value, BuildContext buildContext) {
    if (value == null || value == '') {
      return buildContext.l10n.errMsgSelectYourLocalYard;
    } else {
      return null;
    }
  }

  static String? validateString(
    String? value,
    String label,
    BuildContext buildContext,
  ) {
    if (value == null || value.isEmpty) {
      return buildContext.l10n.errMsgPleaseEnter(label);
    }
    return null;
  }

  static String? validateInteger(
    String? value,
    String label,
    BuildContext buildContext,
  ) {
    if (value == null || value.isEmpty || int.tryParse(value) == null) {
      return buildContext.l10n.errMsgEnterAValidLabel(label);
    }
    return null;
  }

  static String? validateWebsite(String? value, BuildContext buildContext) {
    if (value != null) {
      if (!RegExp(
        r'/^(https?:\/\/)?(www\.)?([a-zA-Z0-9-]+\.){1,}[a-zA-Z]{2,}(\/\S*)?$/gm',
      ).hasMatch(value)) {
        return buildContext.l10n.errMsgInvalidURL;
      }
      return null;
    }
    return buildContext.l10n.errMsgEnterValidUrl;
  }

  static String? validateVatNumber(String? value, BuildContext buildContext) {
    if (value != null) {
      if (!RegExp(r'^GB(?:\d{9}|\d{12})$').hasMatch(value)) {
        return buildContext.l10n.errMsgInvalidVATNumber;
      }
      return null;
    }
    return buildContext.l10n.errMsgEnterValidVATNumber;
  }

  static String? validateEoriNumber(String? value, BuildContext buildContext) {
    if (value != null) {
      if (!RegExp(r'^[a-zA-Z]{2}[a-zA-Z0-9]{2,17}$').hasMatch(value)) {
        return buildContext.l10n.errMsgInvalidEORINumber;
      }
      return null;
    }
    return buildContext.l10n.errMsgInvalidEORINumber;
  }

  String? validateAccountHolderName(
    String? value, {
    required bool paidIntoAccount,
    required BuildContext context,
  }) {
    if (paidIntoAccount && (value == null || value.isEmpty)) {
      return context.l10n.enterAccountName;
    }
    return null;
  }

  static String? validateSortCode(
    String? value,
    BuildContext buildContext, {
    required bool paidIntoAccount,
  }) {
    if (paidIntoAccount) {
      final sortCodeRegex = RegExp(r'^\d{6}$');
      if (value == null || value.isEmpty) {
        return buildContext.l10n.errMsgEnterSortCode;
      }

      if (!sortCodeRegex.hasMatch(value)) {
        return buildContext.l10n.errMsgInvalidSortCode;
      }
    }
    return null;
  }

  static String? validateAccountNumber(
    String? value,
    BuildContext buildContext, {
    required bool paidIntoAccount,
  }) {
    if (paidIntoAccount) {
      final accountNumberRegex = RegExp(r'^\d{8}$');

      if (value == null || value.isEmpty) {
        return buildContext.l10n.errMsgEnterAccountNumber;
      }

      if (!accountNumberRegex.hasMatch(value)) {
        return buildContext.l10n.errMsgInvalidAccountNumber;
      }
    }
    return null;
  }

  String? validateBankName(
    String? value, {
    required bool paidIntoAccount,
    required BuildContext context,
  }) {
    if (paidIntoAccount && (value == null || value.isEmpty)) {
      return context.l10n.enterValidBankDetails;
    }
    return null;
  }

  Future<bool> checkCountrySelected(
    SignupModel signupModel,
    String errMsg,
  ) async {
    if ((signupModel.locatedAtCountryCode ?? '').isNotEmpty) {
      return true;
    }
    journeyController.notifyListenersInternal();
    return false;
  }

  bool hasValidPaymentDetails(
    JourneyController journeyController,
    SignupModel signupModel,
    BuildContext context,
  ) {
    if (signupModel.getLocatedAtCountryCode().isCountryUS()) {
      return journeyController.paymentDetailsService.signature != null &&
          (signupModel.isAgreedToTermsAndConditions);
    } else {
      final hideCel = AccountRegistrationRemoteConfigService.hideCEL;
      final hasValidBankDetails =
          journeyController.validationService.validateAccountHolderName(
                    signupModel.accountHoldername,
                    paidIntoAccount: signupModel.paidIntoAccount,
                    context: context,
                  ) ==
                  null &&
              !journeyController.isBankDetailsEdited ||
          validateAccountNumber(
                    signupModel.bankAccountNumber,
                    paidIntoAccount: signupModel.paidIntoAccount,
                    context,
                  ) ==
                  null &&
              validateSortCode(
                    signupModel.sortCode,
                    paidIntoAccount: signupModel.paidIntoAccount,
                    context,
                  ) ==
                  null &&
              journeyController.validationService.validateBankName(
                    signupModel.bankName,
                    paidIntoAccount: signupModel.paidIntoAccount,
                    context: context,
                  ) ==
                  null &&
              signupModel.paidIntoAccount;

      final hasValidCelTnc = hideCel || signupModel.enableCel;
      final hasTncChecked = hasValidCelTnc && signupModel.agreeToSecoreTnc;
      final hasTncUnchecked =
          hasValidCelTnc == false && signupModel.agreeToSecoreTnc == false;

      final hasValidSignature =
          journeyController.paymentDetailsService.signature != null;

      //allow continue from payment details if
      // - either bank details entered and TnCs checked
      // - or bank details entered and both TnCs are unchecked
      // - or bank details not entered and both TnCs are checked

      return hasValidSignature &&
          ((hasValidBankDetails && hasTncChecked) ||
              (hasValidBankDetails && hasTncUnchecked) ||
              (!signupModel.paidIntoAccount && hasTncChecked));
    }
  }

  bool canSubmitFromVerification(
    SignupModel signupModel,
    BuildContext context, {
    bool returnTrueIfEitherEmailOrMobileAvailable = true,
  }) {
    var country = CountryData.getCountryData(
      signupModel.phoneNumberCountryCode ??
          AccountRegistrationStrings.defaultCountry,
    );
    return country != null && returnTrueIfEitherEmailOrMobileAvailable
        ? isEmailAddressValid(signupModel.emailAddress, context) ||
              isPhoneNumberValid(signupModel.phoneNumber, country, context)
        : isEmailAddressValid(signupModel.emailAddress, context) &&
              isPhoneNumberValid(signupModel.phoneNumber, country, context);
  }

  bool canSubmitFromRegister(
    SignupModel signupModel,
    BuildContext context, {
    bool returnTrueIfEitherEmailOrMobileAvailable = true,
  }) {
    return _hasEmailOrPhone(
          signupModel,
          context,
          returnTrueIfEitherEmailOrMobileAvailable:
              returnTrueIfEitherEmailOrMobileAvailable,
        ) &&
        _hasFirstAndLastName(signupModel, context);
  }

  bool canSubmitFromLogin(
    SignupModel signupModel,
    BuildContext context, {
    bool returnTrueIfEitherEmailOrMobileAvailable = true,
  }) {
    return _hasEmailOrPhone(
      signupModel,
      context,
      returnTrueIfEitherEmailOrMobileAvailable:
          returnTrueIfEitherEmailOrMobileAvailable,
    );
  }

  bool _hasEmailOrPhone(
    SignupModel signupModel,
    BuildContext context, {
    bool returnTrueIfEitherEmailOrMobileAvailable = true,
  }) {
    var country = CountryData.getCountryData(
      signupModel.phoneNumberCountryCode ??
          AccountRegistrationStrings.defaultCountry,
    );
    return (signupModel.locatedAtCountryCode != null &&
            returnTrueIfEitherEmailOrMobileAvailable
        ? isEmailAddressValid(signupModel.emailAddress, context) ||
              isPhoneNumberValid(signupModel.phoneNumber, country, context)
        : isEmailAddressValid(signupModel.emailAddress, context) &&
              isPhoneNumberValid(signupModel.phoneNumber, country, context));
  }

  bool canSubmitFromCountrySelection(SignupModel signupModel) {
    if (signupModel.locatedAtCountryCode == null) {
      return false;
    }
    final cnt = CountryData.getCountryData(signupModel.locatedAtCountryCode!);
    return cnt?.dialingCode.isNotEmpty ?? false;
  }

  bool _hasFirstAndLastName(SignupModel signupModel, BuildContext context) =>
      ValidationService.validateFirstName(signupModel.firstName, context) ==
          null &&
      ValidationService.validateLastName(signupModel.lastName, context) == null;

  bool _hasMarketinPrefs(
    SignupModel signupModel,
    BuildContext context, {
    bool isDutchLocale = false,
  }) =>
      ValidationService.validateRole(signupModel.role, context) == null &&
      (isDutchLocale ||
          ValidationService.validateFrequency(signupModel.frequency, context) ==
              null) &&
      ValidationService.validateYardCode(signupModel.yardCode, context) == null;

  bool canSubmitFromMarketingPrefs(
    SignupModel signupModel,
    BuildContext context,
  ) {
    return _hasFirstAndLastName(signupModel, context) &&
        _hasMarketinPrefs(signupModel, context);
  }

  bool canSubmitFromUploadedDocumentDetails(
    String locatedAtCountryCode,
    Enum$IdentificationType identificationType,
    UploadedDocumentDetailsModel? model,
    BuildContext context,
  ) {
    if (locatedAtCountryCode.isCountryNL()) {
      return (model?.address1 ?? '').isNotEmpty &&
          (model?.address2 ?? '').isNotEmpty &&
          (model?.county ?? '').isNotEmpty &&
          (model?.postCode ?? '').isNotEmpty &&
          isValidNLPostcode(model!.postCode!);
    }

    //TODO: remove this in next version...added to find a non-reproducable bug
    debugPrint(
      '(model?.firstName ?? '
      ') : ${(model?.firstName ?? '')}',
    );
    debugPrint(
      '(model?.lastName ?? '
      ') : ${(model?.lastName ?? '')}',
    );

    debugPrint(
      '(model?.title ?? '
      ') : ${(model?.title ?? '')}',
    );
    debugPrint(
      '(model?.address1 ?? '
      ') : ${(model?.address1 ?? '')}',
    );
    debugPrint(
      '(model?.address2 ?? '
      ') : ${(model?.address2 ?? '')}',
    );
    debugPrint(
      '(model?.city ?? '
      ') : ${(model?.city ?? '')}',
    );
    debugPrint(
      '(model?.county ?? '
      ') : ${(model?.county ?? '')}',
    );
    debugPrint(
      '(model?.postCode ?? '
      ') : ${(model?.postCode ?? '')}',
    );
    debugPrint(
      '(model?.documentNumber ?? '
      ') : ${(model?.documentNumber ?? '')}',
    );
    debugPrint(
      '(model?.dateOfExpiration ?? '
      ') : ${(model?.dateOfExpiration ?? '')}',
    );

    return ((model?.firstName ?? '').isNotEmpty ||
            identificationType == Enum$IdentificationType.ADDRESS_ID) &&
        ((model?.lastName ?? '').isNotEmpty ||
            identificationType == Enum$IdentificationType.ADDRESS_ID) &&
        ((model?.title ?? '').isNotEmpty ||
            identificationType == Enum$IdentificationType.ADDRESS_ID) &&
        (model?.address1 ?? '').isNotEmpty &&
        (model?.city ?? '').isNotEmpty &&
        (model?.county ?? '').isNotEmpty &&
        (!locatedAtCountryCode.isCountryUS() ||
            (model?.county ?? '').trim().length <= 2) &&
        (model?.postCode ?? '').isNotEmpty &&
        (model?.documentNumber ?? '').isNotEmpty &&
        model?.dateOfExpiration != null;
  }

  bool canCompleteFromAlmostDone(
    SignupModel signupModel,
    String locatedAtCountryId,
  ) => locatedAtCountryId.isCountryNL()
      ? signupModel.addressEntered && signupModel.isAgreedToTermsAndConditions
      : signupModel.getAccountCode.isNotEmpty &&
            (signupModel.hasPortalRunContext ||
                signupModel.getUserId.isNotEmpty) &&
            signupModel.proofOfIdUpdated &&
            (signupModel.proofOfAddressUpdated ||
                locatedAtCountryId.isCountryUS() ||
                signupModel.proofOfIdIsUKDrivingLicense) &&
            signupModel.paymentDetailsUpdated &&
            (signupModel.isAgreedToTermsAndConditions ||
                locatedAtCountryId.isCountryUK());

  bool isEmailAddressValid(String? emailAddress, BuildContext buildContext) {
    if (emailAddress?.isEmpty ?? true) {
      return false;
    }
    return validateEmail(emailAddress, buildContext) == null;
  }

  bool isPhoneNumberValid(
    String? phoneNumber,
    CountryData? country,
    BuildContext context,
  ) {
    if (phoneNumber?.isEmpty ?? true) {
      return false;
    }
    return validateMobileNumber(
          phoneNumber,
          country?.shortName ?? AccountRegistrationStrings.defaultCountry,
          context,
        ) ==
        null;
  }

  bool isValidNLPostcode(String value) {
    final regex = RegExp(r'^\d{4}[A-Z]{2}$');
    return regex.hasMatch(value);
  }

  bool hasDetectedDifferentNameOnId(
    SignupModel signupModel,
    Enum$IdentificationType identitficationType,
  ) => identitficationType == Enum$IdentificationType.PHOTO_ID
      ? isDifferent(signupModel.firstName, signupModel.proofOfId?.firstName) ||
            isDifferent(signupModel.lastName, signupModel.proofOfId?.lastName)
      : isDifferent(signupModel.firstName, signupModel.proofOfId?.firstName) ||
            isDifferent(signupModel.lastName, signupModel.proofOfId?.lastName);

  bool isDifferent(String? left, String? right) {
    if (left != null && left.isNotEmpty) {
      return left != right;
    }
    return false;
  }

  static String normalizePhoneNumber(String value, String countryId) {
    var cleaned = value.replaceAll(RegExp(r'[^\d+]'), '');

    final country = CountryData.getCountryData(countryId);

    if (country != null) {
      final dialCode = country.dialingCode; // e.g. +44

      if (cleaned.startsWith(dialCode)) {
        cleaned = cleaned.substring(dialCode.length);
      }
    }

    return cleaned;
  }
}
