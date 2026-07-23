import 'package:decimal/decimal.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class EditLocationFormData {
  EditLocationFormData({
    String? code,
    String? name,
    String? description,
    bool? active,
    bool? isSitePermitHolder,
    String? sitePermitOrExceptionNumber,
    String? what3Words,
    Decimal? latitude,
    Decimal? longitude,
    Address? address,
  }) {
    this.code = ValueNotifier(code);
    this.name = ValueNotifier(name);
    this.description = ValueNotifier(description);
    this.active = ValueNotifier(active ?? true);
    this.isSitePermitHolder = ValueNotifier(isSitePermitHolder ?? false);
    this.sitePermitOrExceptionNumber = ValueNotifier(
      sitePermitOrExceptionNumber,
    );
    this.address = ValueNotifier(address);
    this.what3Words = ValueNotifier(what3Words);
    this.latitude = ValueNotifier(latitude);
    this.longitude = ValueNotifier(longitude);
  }

  late final ValueNotifier<String?> code;
  late final ValueNotifier<String?> name;
  late final ValueNotifier<String?> description;
  late final ValueNotifier<bool> active;
  late final ValueNotifier<bool> isSitePermitHolder;
  late final ValueNotifier<String?> sitePermitOrExceptionNumber;
  late final ValueNotifier<String?> what3Words;
  late final ValueNotifier<Decimal?> latitude;
  late final ValueNotifier<Decimal?> longitude;
  ValueNotifier<Address?> address = ValueNotifier(null);

  static KeyValuePair<Enum$CountryId, String> defaultCountry = (
    key: Enum$CountryId.UK,
    value: 'UK',
  );

  late ValueNotifier<KeyValuePair<Enum$CountryId, String>?> countryCode =
      ValueNotifier(defaultCountry);

  static KeyValuePair<String, String> defaultPrimaryContact = (
    key: '',
    value: '',
  );

  late ValueNotifier<KeyValuePair<String, String>> primaryContact =
      ValueNotifier(defaultPrimaryContact);

  void addListeners(void Function() listener) {
    code.addListener(listener);
    name.addListener(listener);
    what3Words.addListener(listener);
    latitude.addListener(listener);
    longitude.addListener(listener);
    address.addListener(listener);
    countryCode.addListener(listener);
  }

  void removeListeners(void Function() listener) {
    code.removeListener(listener);
    name.removeListener(listener);
    what3Words.removeListener(listener);
    latitude.removeListener(listener);
    longitude.removeListener(listener);
    address.removeListener(listener);
    countryCode.removeListener(listener);
  }
}
