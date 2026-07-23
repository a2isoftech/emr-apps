import 'package:collection/collection.dart';
import 'package:emr_account_registration/signup.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_portal/portal.dart';

extension ToHomePageModelMapping on Query$GetSignupModel$account {
  HomePageModel toHomePageModel({
    required String locatedAtCountryId,
    bool invertCanPost = true,
  }) {
    final mainContact = accountContacts?.firstWhereOrNull(
      (element) =>
          element!.value.contactTypes.any((y) => y == Enum$ContactType.MAIN),
    );

    final mobileContactInfo = mainContact?.value.contactPreferences.mobile;

    final proofOfId = mainContact?.value.proofOfIdentification.firstWhereOrNull(
      (e) => e.validTo.isAfter(DateTime.now()),
    );

    final proofOfAddress = mainContact?.value.proofOfAddress.firstWhereOrNull(
      (e) => e.validTo.isAfter(DateTime.now()),
    );

    final proofOfIdIsUKDrivingLicense = proofOfId != null &&
        locatedAtCountryId.isCountryUK() &&
        proofOfId.subType == Enum$IdentificationSubType.UK_DRIVING_LICENSE;
    return HomePageModel(
      firstName: mainContact?.value.firstName ?? '',
      lastName: mainContact?.value.lastName ?? '',
      mobileNumber: mobileContactInfo?.value ?? '',
      emailAddress: mainContact?.value.contactPreferences.email.value ?? '',
      proofOfId: ProofModel(expiryDateString: proofOfId?.validTo.toString()),
      proofOfAddress: ProofModel(
        expiryDateString: proofOfIdIsUKDrivingLicense
            ? proofOfId.validTo.toString()
            : proofOfAddress?.validTo.toString(),
      ),
      locatedAtCountry: locatedAtCountryId,
    );
  }
}

extension ToHomePageModelMappingForPrspect
    on Query$GetSignupModelForProspect$prospect {
  HomePageModel toHomePageModel({
    required String locatedAtCountryId,
    bool invertCanPost = true,
  }) {
    final mainContact = contacts.firstWhereOrNull(
      (element) =>
          element.value.contactTypes.any((y) => y == Enum$ContactType.MAIN),
    );

    final mobileContactInfo = mainContact?.value.contactPreferences.mobile;

    final proofOfId = mainContact?.value.proofOfIdentification.firstWhereOrNull(
      (e) => e.validTo.isAfter(DateTime.now()),
    );

    final proofOfAddress = mainContact?.value.proofOfAddress.firstWhereOrNull(
      (e) => e.validTo.isAfter(DateTime.now()),
    );

    final proofOfIdIsUKDrivingLicense = proofOfId != null &&
        locatedAtCountryId.isCountryUK() &&
        proofOfId.subType == Enum$IdentificationSubType.UK_DRIVING_LICENSE;
    return HomePageModel(
      firstName: mainContact?.value.firstName ?? '',
      lastName: mainContact?.value.lastName ?? '',
      mobileNumber: mobileContactInfo?.value ?? '',
      emailAddress: mainContact?.value.contactPreferences.email.value ?? '',
      proofOfId: ProofModel(expiryDateString: proofOfId?.validTo.toString()),
      proofOfAddress: ProofModel(
        expiryDateString: proofOfIdIsUKDrivingLicense
            ? proofOfId.validTo.toString()
            : proofOfAddress?.validTo.toString(),
      ),
      locatedAtCountry: locatedAtCountryId,
    );
  }
}
