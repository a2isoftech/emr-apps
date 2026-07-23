import 'package:emr_account_registration/signup.dart';
import 'package:emr_core_api/emr_core_api.dart';

class BaseAccountModel {
  BaseAccountModel({
    required this.localeCountryCode,
    required this.localeLanguageCode,
    this.locatedAtCountryCode,
    this.contactId,
    this.firstName,
    this.lastName,
    this.canEmail,
    this.canSms,
    this.canPhone,
    this.canPost,
    this.role,
    this.frequency,
    this.yardCode,
    this.phoneNumberCountryCode,
    this.phoneNumberOriginal,
    this.phoneNumber,
    this.emailAddress,
    this.dialingCode,
    this.accountCode,
    this.userId,
    this.proofOfIdUpdated = false,
    this.addressEntered = false,
    this.isAgreedToTermsAndConditions = false,
    this.paymentDetailsUpdated = false,
    this.proofOfAddressUpdated = false,
    this.proofOfIdType,
    this.proofOfAddressType,
    this.proofOfId,
    this.proofOfAddress,
    this.paidIntoAccount = false,
    this.accountHoldername,
    this.sortCode,
    this.bankAccountNumber,
    this.bankName,
    this.enableCel = false,
    this.userFullySignedUp = false,
    this.agreeToSecoreTnc = false,
  });

  // journey
  final String? localeCountryCode;
  final String localeLanguageCode;

  // Data

  late String? locatedAtCountryCode;
  String? contactId;
  String? firstName;
  String? lastName;
  bool? canEmail = false;
  bool? canSms = false;
  bool? canPhone = false;
  bool? canPost = false;
  String? role = '0';
  Enum$VisitFrequency? frequency = Enum$VisitFrequency.$unknown;
  String? yardCode = '';
  String? phoneNumberCountryCode;
  String? phoneNumberOriginal;
  String? phoneNumber;
  String? emailAddress;
  String? dialingCode;
  String? accountCode;
  String? userId;
  bool proofOfIdUpdated;
  bool addressEntered;
  bool isAgreedToTermsAndConditions;
  bool paymentDetailsUpdated;
  bool proofOfAddressUpdated;
  Enum$IdentificationSubType? proofOfIdType;
  Enum$IdentificationSubType? proofOfAddressType;
  UploadedDocumentDetailsModel? proofOfId;
  UploadedDocumentDetailsModel? proofOfAddress;
  bool paidIntoAccount;
  String? accountHoldername;
  String? sortCode;
  String? bankAccountNumber;
  String? bankName;
  bool enableCel;
  bool agreeToSecoreTnc;
  bool userFullySignedUp;

  // methods
  bool isUK() =>
      (locatedAtCountryCode ?? AccountRegistrationStrings.defaultCountry)
          .isCountryUK();

  bool isNL() =>
      (locatedAtCountryCode ?? AccountRegistrationStrings.defaultCountry)
          .isCountryNL();

  String getLocatedAtCountryCode() =>
      locatedAtCountryCode ?? AccountRegistrationStrings.defaultCountry;

  CountryData? getLocatedAtCountry() =>
      CountryData.getCountryData(getLocatedAtCountryCode());

  bool get isSignatureRequired => !getLocatedAtCountryCode().isCountryNL();

  String get getAccountCode => accountCode ?? '';

  String get getUserId => userId ?? '';

  bool get proofOfIdIsUKDrivingLicense =>
      proofOfIdUpdated &&
      getLocatedAtCountryCode().isCountryUK() &&
      proofOfIdType == Enum$IdentificationSubType.UK_DRIVING_LICENSE;
}
