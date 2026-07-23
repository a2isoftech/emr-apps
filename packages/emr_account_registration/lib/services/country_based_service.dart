import 'package:emr_account_registration/signup.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class CountryBasedService {
  static UploadedDocumentDetailsModel? getUploadedDocumentDetailsModel(
    SignupModel signupModel,
    Enum$IdentificationType identificationType,
  ) {
    if (signupModel.getLocatedAtCountryCode().isCountryNL()) {
      return _getEmptyUploadedDocumentDetailsModel(
        signupModel,
        Enum$CountryId.NL.toString(),
      );
    } else {
      return (identificationType == Enum$IdentificationType.PHOTO_ID
              ? signupModel.proofOfId
              : signupModel.proofOfAddress) ??
          _getEmptyUploadedDocumentDetailsModel(
            signupModel,
            signupModel.getLocatedAtCountryCode(),
          );
    }
  }

  static UploadedDocumentDetailsModel? _getEmptyUploadedDocumentDetailsModel(
    SignupModel signupModel,
    String countryId,
  ) {
    return UploadedDocumentDetailsModel(
      title: '',
      firstName: signupModel.firstName,
      lastName: signupModel.lastName,
      dateOfBirth: null,
      documentNumber: '',
      address: '',
      address1: '',
      address2: '',
      city: '',
      county: '',
      issuedbyCounty: '',
      postCode: '',
      countryRegion: countryId,
      dateOfExpiration: null,
      errorMessage: '',
      idtype: '',
      base64Image: '',
      height: '',
      eyeColour: '',
    );
  }

  static getPageTitleForUploadedDocumentDetails(
    BuildContext context,
    String locatedAtCountryCode,
  ) {
    return locatedAtCountryCode.isCountryNL()
        ? context.l10n.address
        : context.l10n.documentDetails;
  }

  static Enum$IdentificationSubType getIdentificationSubType(
    String locatedAtCountryCode,
    SignupModel signupModel,
    Enum$IdentificationType identificationType,
  ) {
    if (locatedAtCountryCode.isCountryNL()) {
      return Enum$IdentificationSubType.NONE;
    } else {
      return identificationType == Enum$IdentificationType.PHOTO_ID
          ? signupModel.proofOfIdType!
          : signupModel.proofOfAddressType!;
    }
  }
}
