import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class EditContactFormData {
  EditContactFormData({
    List<Enum$ContactType>? contactTypes,
    String? title,
    String? firstName,
    String? middleName,
    String? lastName,
    String? emailAddress,
    String? jobTitle,
    String? contactNumber,
    bool portalEnabled = false,
    bool emailEnabled = false,
    bool smsEnabled = false,
    bool postEnabled = false,
    bool phoneEnabled = false,
    bool bulkEmailEnabled = false,
    bool faxEnabled = false,
    DateTime? dateOfBirth,
    Address? address,
    String? faxNumber,
  }) {
    this.portalEnabled = ValueNotifier(portalEnabled);
    this.contactTypes = ValueNotifier(contactTypes ?? []);
    this.title = ValueNotifier(title);
    this.firstName = ValueNotifier(firstName);
    this.middleName = ValueNotifier(middleName);
    this.lastName = ValueNotifier(lastName);
    this.emailAddress = ValueNotifier(emailAddress);
    this.jobTitle = ValueNotifier(jobTitle);
    this.contactNumber = ValueNotifier(contactNumber);
    this.dateOfBirth = ValueNotifier(dateOfBirth);
    this.address = ValueNotifier(address);

    this.emailEnabled = ValueNotifier(emailEnabled);
    this.smsEnabled = ValueNotifier(smsEnabled);
    this.postEnabled = ValueNotifier(postEnabled);
    this.phoneEnabled = ValueNotifier(phoneEnabled);
    this.bulkEmailEnabled = ValueNotifier(bulkEmailEnabled);
    this.faxNumber = ValueNotifier(faxNumber);
    this.faxEnabled = ValueNotifier(faxEnabled);
  }

  static KeyValuePair<Enum$ContactType, String> defaultContactType = (
    key: Enum$ContactType.NONE,
    value: 'NONE',
  );

  late final ValueNotifier<List<Enum$ContactType>> contactTypes;
  late final ValueNotifier<String?> title;
  late final ValueNotifier<String?> firstName;
  late final ValueNotifier<String?> middleName;
  late final ValueNotifier<String?> lastName;
  late final ValueNotifier<String?> emailAddress;
  late final ValueNotifier<String?> jobTitle;
  late final ValueNotifier<String?> contactNumber;
  late final ValueNotifier<DateTime?> dateOfBirth;
  ValueNotifier<Address?> address = ValueNotifier(null);
  late final ValueNotifier<String?> faxNumber;

  late final ValueNotifier<bool> portalEnabled;
  late final ValueNotifier<bool> emailEnabled;
  late final ValueNotifier<bool> smsEnabled;
  late final ValueNotifier<bool> postEnabled;
  late final ValueNotifier<bool> phoneEnabled;
  late final ValueNotifier<bool> bulkEmailEnabled;
  late final ValueNotifier<bool> faxEnabled;

  static KeyValuePair<Enum$CountryId, String> defaultCountry = (
    key: Enum$CountryId.UK,
    value: 'UK',
  );

  late ValueNotifier<KeyValuePair<Enum$CountryId, String>?> country =
      ValueNotifier(defaultCountry);

  void addListeners(void Function() listener) {
    contactTypes.addListener(listener);
    title.addListener(listener);
    portalEnabled.addListener(listener);
    firstName.addListener(listener);
    middleName.addListener(listener);
    lastName.addListener(listener);
    emailAddress.addListener(listener);
    contactNumber.addListener(listener);
    address.addListener(listener);
    faxNumber.addListener(listener);
  }

  void removeListeners(void Function() listener) {
    contactTypes.removeListener(listener);
    title.removeListener(listener);
    portalEnabled.removeListener(listener);
    firstName.removeListener(listener);
    middleName.removeListener(listener);
    lastName.removeListener(listener);
    emailAddress.removeListener(listener);
    contactNumber.removeListener(listener);
    address.removeListener(listener);
    faxNumber.removeListener(listener);
  }
}
