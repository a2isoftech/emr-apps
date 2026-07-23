import 'package:collection/collection.dart';
import 'package:emr_account_registration/signup.dart';
import 'package:emr_core_api/emr_core_api.dart';

extension ToSignupModelForProspectMapping
    on Query$GetSignupModelForProspect$prospect {
  SignupModel toSignupModel(
    RunContext newRunContext, {
    bool invertCanPost = true,
  }) {
    final mainContact = contacts.firstWhereOrNull(
      (element) =>
          element.value.contactTypes.any((y) => y == Enum$ContactType.MAIN),
    );
    final address = addresses.isNotEmpty ? addresses.first : null;
    final bankAccount = bankAccounts.firstWhereOrNull(
      (element) => element.accountNumber.isNotEmpty,
    );
    final mobileContactInfo = mainContact?.value.contactPreferences.mobile;

    final canPost = mainContact?.value.contactPreferences.post.enabled;
    final signature = mainContact?.value.signature;
    final proofOfId = mainContact?.value.proofOfIdentification.firstWhereOrNull(
      (e) => e.validTo.isAfter(DateTime.now()),
    );
    final proofOfAddress = mainContact?.value.proofOfAddress.firstWhereOrNull(
      (e) => e.validTo.isAfter(DateTime.now()),
    );
    return SignupModel(
      locatedAtCountryCode: originatingCountry,
      accountCode: accountNumber,

      firstName: mainContact?.value.firstName ?? '',
      lastName: mainContact?.value.lastName ?? '',
      phoneNumber: mobileContactInfo?.value ?? '',
      emailAddress: mainContact?.value.contactPreferences.email.value ?? '',

      role: industryGroups.supplier ?? industryGroups.trader ?? '',
      frequency: Enum$VisitFrequency.$unknown,
      canEmail: mainContact?.value.contactPreferences.email.enabled,
      canPost: canPost ?? false,
      canPhone: mainContact?.value.contactPreferences.phone.enabled,
      canSms: mainContact?.value.contactPreferences.mobile.enabled,
      proofOfIdUpdated: proofOfId != null,
      proofOfAddressUpdated: proofOfAddress != null,
      paymentDetailsUpdated:
          (bankAccount != null ||
                  celAgreement != null ||
                  originatingCountry.isCountryUS()) &&
              (signature != null) ||
          (originatingCountry.isCountryNL() && address != null),
      addressEntered: originatingCountry.isCountryNL() && address != null,
      accountHoldername: bankAccount?.accountHolderName,
      bankAccountNumber: bankAccount?.accountNumber,
      bankName: bankAccount?.bankName,
      sortCode: bankAccount?.sortCode,
      enableCel: celAgreement != null,
      paidIntoAccount: (bankAccount?.accountNumber ?? '').isNotEmpty,
      localeCountryCode: originatingCountry,
      localeLanguageCode: originatingCountry,
      isAgreedToTermsAndConditions: celAgreement != null,
      yardCode: defaultYardCode,
      phoneNumberCountryCode: originatingCountry,
      proofOfIdType: proofOfId?.subType ?? Enum$IdentificationSubType.$unknown,
      proofOfAddressType:
          proofOfAddress?.subType ?? Enum$IdentificationSubType.$unknown,
      currentStep: SignupStep.register,
      runContext: newRunContext,
      userFullySignedUp: false,
    );
  }
}

extension ToSignupModelMapping on Query$GetSignupModel$account {
  SignupModel toSignupModel(
    RunContext newRunContext, {
    bool invertCanPost = true,
  }) {
    final mainContact = accountContacts?.firstWhereOrNull(
      (element) =>
          element!.value.contactTypes.any((y) => y == Enum$ContactType.MAIN),
    );

    final bankAccount = bankAccounts.firstWhereOrNull(
      (element) => element.accountNumber.isNotEmpty,
    );
    final mobileContactInfo = mainContact?.value.contactPreferences.mobile;

    final canPost = mainContact?.value.contactPreferences.post.enabled;
    final signature = mainContact?.value.signature;
    final proofOfId = mainContact?.value.proofOfIdentification.firstWhereOrNull(
      (e) => e.validTo.isAfter(DateTime.now()),
    );
    final proofOfAddress = mainContact?.value.proofOfAddress.firstWhereOrNull(
      (e) => e.validTo.isAfter(DateTime.now()),
    );
    return SignupModel(
      locatedAtCountryCode: originatingCountry,
      firstName: mainContact?.value.firstName ?? '',
      lastName: mainContact?.value.lastName ?? '',
      phoneNumber: mobileContactInfo?.value ?? '',
      emailAddress: mainContact?.value.contactPreferences.email.value ?? '',
      yardCode: defaultYardCode,
      role: industryGroup,
      frequency: Enum$VisitFrequency.$unknown,
      canEmail: mainContact?.value.contactPreferences.email.enabled,
      canPost: canPost ?? false,
      canPhone: mainContact?.value.contactPreferences.phone.enabled,
      canSms: mainContact?.value.contactPreferences.mobile.enabled,
      proofOfIdUpdated: proofOfId != null,
      proofOfAddressUpdated: proofOfAddress != null,
      paymentDetailsUpdated:
          (bankAccount != null ||
                  celAgreement != null ||
                  originatingCountry.isCountryUS()) &&
              (signature != null) ||
          originatingCountry.isCountryNL() && celAgreement != null,
      addressEntered: true,
      accountHoldername: bankAccount?.accountHolderName,
      bankAccountNumber: bankAccount?.accountNumber,
      bankName: bankAccount?.bankName,
      sortCode: bankAccount?.sortCode,
      enableCel: celAgreement != null,
      agreeToSecoreTnc: secoreAgreement != null,
      paidIntoAccount: (bankAccount?.accountNumber ?? '').isNotEmpty,
      accountCode: accountNumber,
      proofOfIdType: proofOfId?.subType ?? Enum$IdentificationSubType.$unknown,
      proofOfAddressType:
          proofOfAddress?.subType ?? Enum$IdentificationSubType.$unknown,
      isAgreedToTermsAndConditions: celAgreement != null,
      phoneNumberCountryCode: originatingCountry,
      localeCountryCode: originatingCountry,
      localeLanguageCode: originatingCountry,
      currentStep: SignupStep.register,
      runContext: newRunContext,
      userFullySignedUp: true,
    );
  }
}

extension ToSignupModelForProspectInternalMapping
    on Query$GetSignupModelForProspectInternal$prospectInternal {
  SignupModel toSignupModel(
    RunContext newRunContext, {
    bool invertCanPost = true,
  }) {
    final mainContact = contacts.firstWhereOrNull(
      (element) =>
          element.value.contactTypes.any((y) => y == Enum$ContactType.MAIN),
    );
    final address = addresses.isNotEmpty ? addresses.first : null;
    final bankAccount = bankAccounts.firstWhereOrNull(
      (element) => element.accountNumber.isNotEmpty,
    );
    final mobileContactInfo = mainContact?.value.contactPreferences.mobile;

    final canPost = mainContact?.value.contactPreferences.post.enabled;
    final signature = mainContact?.value.signature;
    final proofOfId = mainContact?.value.proofOfIdentification.firstWhereOrNull(
      (e) => e.validTo.isAfter(DateTime.now()),
    );
    final proofOfAddress = mainContact?.value.proofOfAddress.firstWhereOrNull(
      (e) => e.validTo.isAfter(DateTime.now()),
    );

    return SignupModel(
      locatedAtCountryCode: originatingCountry,
      accountCode: accountNumber,

      firstName: mainContact?.value.firstName ?? '',
      lastName: mainContact?.value.lastName ?? '',
      phoneNumber: mobileContactInfo?.value ?? '',
      emailAddress: mainContact?.value.contactPreferences.email.value ?? '',
      role: industryGroups.trader ?? industryGroups.supplier,
      frequency: (visitFrequency ?? '').isNotEmpty
          ? visitFrequency!.getVisitFrequency()
          : Enum$VisitFrequency.$unknown,
      canEmail: mainContact?.value.contactPreferences.email.enabled,
      canPost: canPost ?? false,
      canPhone: mainContact?.value.contactPreferences.phone.enabled,
      canSms: mainContact?.value.contactPreferences.mobile.enabled,
      proofOfIdUpdated: proofOfId != null,
      proofOfAddressUpdated: proofOfAddress != null,
      paymentDetailsUpdated:
          (bankAccount != null ||
                  celAgreement != null ||
                  originatingCountry.isCountryUS()) &&
              (signature != null) ||
          (originatingCountry.isCountryNL() && address != null),
      addressEntered: originatingCountry.isCountryNL() && address != null,
      accountHoldername: bankAccount?.accountHolderName,
      bankAccountNumber: bankAccount?.accountNumber,
      bankName: bankAccount?.bankName,
      sortCode: bankAccount?.sortCode,
      enableCel: celAgreement != null,
      paidIntoAccount: (bankAccount?.accountNumber ?? '').isNotEmpty,
      localeCountryCode: originatingCountry,
      localeLanguageCode: originatingCountry,
      isAgreedToTermsAndConditions: celAgreement != null,
      yardCode: defaultYardCode,
      phoneNumberCountryCode: originatingCountry,
      proofOfIdType: proofOfId?.subType ?? Enum$IdentificationSubType.$unknown,
      proofOfAddressType:
          proofOfAddress?.subType ?? Enum$IdentificationSubType.$unknown,
      currentStep: SignupStep.register,
      runContext: newRunContext,
      userFullySignedUp: false,
    );
  }
}

extension ToSignupModelMappingInternal
    on Query$GetSignupModelInternal$accountInternal {
  SignupModel toSignupModel(
    RunContext newRunContext, {
    bool invertCanPost = true,
    String userId = ''
  }) {
    final mainContact = accountContacts?.firstWhereOrNull(
      (element) =>
          element!.value.contactTypes.any((y) => y == Enum$ContactType.MAIN),
    );

    final bankAccount = bankAccounts.firstWhereOrNull(
      (element) => element.accountNumber.isNotEmpty,
    );
    final mobileContactInfo = mainContact?.value.contactPreferences.mobile;

    final canPost = mainContact?.value.contactPreferences.post.enabled;
    final signature = mainContact?.value.signature;
    final proofOfId = mainContact?.value.proofOfIdentification.firstWhereOrNull(
      (e) => e.validTo.isAfter(DateTime.now()),
    );
    final proofOfAddress = mainContact?.value.proofOfAddress.firstWhereOrNull(
      (e) => e.validTo.isAfter(DateTime.now()),
    );

    return SignupModel(
      accountCode: accountNumber,
      isAgreedToTermsAndConditions: celAgreement != null,
      phoneNumberCountryCode: originatingCountry,
      phoneNumberOriginal: mobileContactInfo?.value ?? '',
      proofOfIdType: proofOfId?.subType ?? Enum$IdentificationSubType.$unknown,
      proofOfAddressType:
          proofOfAddress?.subType ?? Enum$IdentificationSubType.$unknown,
      locatedAtCountryCode: originatingCountry,
      contactId: mainContact?.key,
      firstName: mainContact?.value.firstName ?? '',
      lastName: mainContact?.value.lastName ?? '',
      phoneNumber: mobileContactInfo?.value ?? '',
      emailAddress: mainContact?.value.contactPreferences.email.value ?? '',
      yardCode: defaultYardCode,
      role: industryGroup,
      frequency: (visitFrequency ?? '').isNotEmpty
          ? visitFrequency!.getVisitFrequency()
          : Enum$VisitFrequency.$unknown,
      canEmail: mainContact?.value.contactPreferences.email.enabled,
      canPost: canPost ?? false,
      canPhone: mainContact?.value.contactPreferences.phone.enabled,
      canSms: mainContact?.value.contactPreferences.mobile.enabled,
      proofOfIdUpdated: proofOfId != null,
      proofOfAddressUpdated: proofOfAddress != null,
      paymentDetailsUpdated:
          (bankAccount != null ||
                  celAgreement != null ||
                  originatingCountry.isCountryUS()) &&
              (signature != null) ||
          originatingCountry.isCountryNL() && celAgreement != null,
      addressEntered: true,
      accountHoldername: bankAccount?.accountHolderName,
      bankAccountNumber: bankAccount?.accountNumber,
      bankName: bankAccount?.bankName,
      sortCode: bankAccount?.sortCode,
      enableCel: celAgreement != null,
      agreeToSecoreTnc: secoreAgreement != null,
      paidIntoAccount: (bankAccount?.accountNumber ?? '').isNotEmpty,
      localeCountryCode: originatingCountry,
      localeLanguageCode: originatingCountry,
      currentStep: SignupStep.register,
      runContext: newRunContext,
      userFullySignedUp: true,
      userId : userId,
    );
  }
}
