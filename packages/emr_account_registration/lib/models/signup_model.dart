import 'package:emr_account_registration/signup.dart';
import 'package:emr_core_api/emr_core_api.dart';

class SignupModel extends BaseAccountModel {
  SignupModel({
    required super.localeCountryCode,
    required super.localeLanguageCode,
    required this.runContext,
    required this.currentStep,
    super.locatedAtCountryCode,
    super.contactId,
    super.firstName,
    super.lastName,
    super.canEmail,
    super.canSms,
    super.canPhone,
    super.canPost,
    super.role,
    super.frequency,
    super.yardCode,
    super.phoneNumberCountryCode,
    super.phoneNumberOriginal,
    super.phoneNumber,
    super.emailAddress,
    super.dialingCode,
    super.accountCode,
    super.userId,
    super.proofOfIdUpdated = false,
    super.addressEntered = false,
    super.isAgreedToTermsAndConditions = false,
    super.paymentDetailsUpdated = false,
    super.proofOfAddressUpdated = false,
    super.proofOfIdType,
    super.proofOfAddressType,
    super.proofOfId,
    super.proofOfAddress,
    super.paidIntoAccount = false,
    super.accountHoldername,
    super.sortCode,
    super.bankAccountNumber,
    super.bankName,
    super.enableCel = false,
    super.userFullySignedUp = false,
    super.agreeToSecoreTnc = false,
  });

  // journey
  final RunContext runContext;
  late SignupStep currentStep = SignupStep.register;

  bool get hasPortalRunContext =>
      runContext == RunContext.portal || runContext == RunContext.portalQrLogin;

  factory SignupModel.reset(SignupModel model) {
    return SignupModel(
      localeCountryCode: model.getLocatedAtCountryCode(),
      localeLanguageCode: model.localeLanguageCode,
      runContext: model.runContext,
      currentStep: SignupStep.register,
    );
  }

  // Deserialize from JSON
  factory SignupModel.fromJson(Map<String, dynamic> json) {
    final model = SignupModel(
      localeCountryCode: json['localeCountryCode'],
      localeLanguageCode: json['localeLanguageCode'],
      runContext:
          AccountRegistrationEnumService.stringToEnum(
            json['runContext'],
            RunContext.values,
          ) ??
          RunContext.emrApps,
      currentStep:
          AccountRegistrationEnumService.stringToEnum(
            json['currentStep'],
            SignupStep.values,
          ) ??
          SignupStep.register,
      locatedAtCountryCode: json['locatedAtCountryCode'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      canEmail: json['canEmail'],
      canSms: json['canSms'],
      canPhone: json['canPhone'],
      canPost: json['canPost'],
      role: json['role'],
      frequency:
          EnumService.stringToEnum(
            json['frequency'],
            Enum$VisitFrequency.values,
          ) ??
          Enum$VisitFrequency.$unknown,
      yardCode: json['yardCode'],
      phoneNumberCountryCode: json['phoneNumberCountryCode'],
      phoneNumberOriginal: json['phoneNumberOriginal'],
      phoneNumber: json['phoneNumber'],
      emailAddress: json['emailAddress'],
      dialingCode: json['dialingCode'],
      accountCode: json['accountCode'],
      proofOfIdUpdated: json['proofOfIdUpdated'],
      addressEntered: json['addressEntered'],
      isAgreedToTermsAndConditions: json['isAgreedToTermsAndConditions'],
      paymentDetailsUpdated: json['paymentDetailsUpdated'],
      proofOfAddressUpdated: json['proofOfAddressUpdated'],
      paidIntoAccount: json['paidIntoAccount'],
      userId: json['userId'],
      accountHoldername: json['accountHoldername'],
      sortCode: json['sortCode'],
      bankAccountNumber: json['bankAccountNumber'],
      bankName: json['bankName'],
      enableCel: json['enableCel'],
      agreeToSecoreTnc: json['agreeToSecoreTnc'],
      proofOfIdType: AccountRegistrationEnumService.stringToEnum(
        json['proofOfIdType'],
        Enum$IdentificationSubType.values,
      ),
      proofOfAddressType: AccountRegistrationEnumService.stringToEnum(
        json['proofOfAddressType'],
        Enum$IdentificationSubType.values,
      ),
    );

    if (json['proofOfId'] != null) {
      model.proofOfId = UploadedDocumentDetailsModel.fromJson(
        json['proofOfId'],
      );
    }

    if (json['proofOfAddress'] != null) {
      model.proofOfAddress = UploadedDocumentDetailsModel.fromJson(
        json['proofOfAddress'],
      );
    }

    return model;
  }

  // Serialize to JSON
  Map<String, dynamic> toJson() {
    return {
      'localeCountryCode': localeCountryCode,
      'localeLanguageCode': localeLanguageCode,
      'runContext': runContext.toString(),
      'currentStep': currentStep.toString(),
      'locatedAtCountryCode': locatedAtCountryCode,
      'firstName': firstName,
      'lastName': lastName,
      'canEmail': canEmail,
      'canSms': canSms,
      'canPhone': canPhone,
      'canPost': canPost,
      'role': role,
      'frequency': frequency.toString(),
      'yardCode': yardCode,
      'phoneNumberCountryCode': phoneNumberCountryCode,
      'phoneNumberOriginal': phoneNumberOriginal,
      'phoneNumber': phoneNumber,
      'emailAddress': emailAddress,
      'dialingCode': dialingCode,
      'accountCode': accountCode,
      'proofOfIdUpdated': proofOfIdUpdated,
      'addressEntered': addressEntered,
      'isAgreedToTermsAndConditions': isAgreedToTermsAndConditions,
      'paymentDetailsUpdated': paymentDetailsUpdated,
      'proofOfAddressUpdated': proofOfAddressUpdated,
      'userId': userId,
      'proofOfIdType': proofOfIdType.toString(),
      'proofOfAddressType': proofOfAddressType.toString(),
      'proofOfId': proofOfId?.toJson(),
      'proofOfAddress': proofOfAddress?.toJson(),
      'paidIntoAccount': paidIntoAccount,
      'accountHoldername': accountHoldername,
      'sortCode': sortCode,
      'bankAccountNumber': bankAccountNumber,
      'bankName': bankName,
      'enableCel': enableCel,
      'agreeToSecoreTnc': agreeToSecoreTnc,
    };
  }

  SignupModel clone(SignupStep newStep, RunContext newRunContext) {
    return SignupModel(
      currentStep: newStep,
      runContext: newRunContext,

      locatedAtCountryCode: locatedAtCountryCode,
      firstName: firstName,
      lastName: lastName,
      phoneNumber: phoneNumber,
      emailAddress: emailAddress,
      yardCode: yardCode,
      role: role,
      frequency: frequency,
      canEmail: canEmail,
      canPost: canPost,
      canPhone: canPhone,
      canSms: canSms,
      proofOfIdUpdated: proofOfIdUpdated,
      proofOfAddressUpdated: proofOfAddressUpdated,
      paymentDetailsUpdated: paymentDetailsUpdated,
      addressEntered: addressEntered,
      accountHoldername: accountHoldername,
      bankAccountNumber: bankAccountNumber,
      bankName: bankName,
      sortCode: sortCode,
      enableCel: enableCel,
      agreeToSecoreTnc: agreeToSecoreTnc,
      localeCountryCode: localeCountryCode,
      localeLanguageCode: localeLanguageCode,
      proofOfIdType: proofOfIdType,
      proofOfAddressType: proofOfAddressType,
      proofOfId: proofOfId,
      proofOfAddress: proofOfAddress,
      accountCode: accountCode,
      dialingCode: dialingCode,
      userId: userId,
      isAgreedToTermsAndConditions: isAgreedToTermsAndConditions,
      paidIntoAccount: paidIntoAccount,
      phoneNumberCountryCode: phoneNumberCountryCode,
      phoneNumberOriginal: phoneNumberOriginal,
      userFullySignedUp: userFullySignedUp,
    );
  }
}
