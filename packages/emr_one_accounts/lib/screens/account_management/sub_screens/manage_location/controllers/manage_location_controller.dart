import 'package:collection/collection.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class ManageLocationController extends AccountManagementBaseController {
  ManageLocationController({required this.coreApiService});

  Account? account;
  ValueNotifier<String> showErrorMessage = ValueNotifier('');
  Location? location;
  final CoreApiService coreApiService;

  late bool _locationToBeDeleted = false;
  void markLocationToBeDeleted() {
    _locationToBeDeleted = true;
  }

  bool locationToBeDeleted() => _locationToBeDeleted;

  EditLocationFormData? _formData;

  EditLocationFormData get locationData => _formData ?? EditLocationFormData();

  @override
  void setAccount(Account? a) {
    account = a;
  }

  @override
  void reset() {
    processing = false;
    _formData = null;
    _locationToBeDeleted = false;
    notifyListeners();
  }

  void setLocation(Location? l) {
    location = l;
    _formData = EditLocationFormData(
      code: location?.code,
      name: location?.name,
      what3Words: location?.address.what3Words,
      address: location?.address,
      latitude: location?.address.geoLocation?.latitude,
      longitude: location?.address.geoLocation?.longitude,
      description: location?.description,
      isSitePermitHolder: location?.sitePermitHolder,
      active: location?.active ?? false,
      sitePermitOrExceptionNumber: location?.sitePermitOrExemptionNumber,
    );

    _formData!.countryCode =
        ValueNotifier<KeyValuePair<Enum$CountryId, String>?>(
          EnumExtensions.getEnumValueNotifier<Enum$CountryId>(
            location?.address.countryCode ?? 'UK',
            Enum$CountryId.values,
          ).value,
        );

    final primaryContactId = location?.primaryContactId ?? '';
    if (primaryContactId.isNotEmpty &&
        primaryContactId != EmrCoreApiConstants.kEmptyGuid) {
      final primaryContact = (account?.contacts ?? []).firstWhereOrNull(
        (x) => x.id == primaryContactId,
      );

      _formData!.primaryContact = ValueNotifier<KeyValuePair<String, String>>((
        key:
            '${primaryContact?.firstName ?? ''} '
                    '${primaryContact?.lastName ?? ''}'
                .trim(),
        value: primaryContactId,
      ));
    }

    _formData!.countryCode.addListener(countryChanged);
  }

  void setAddress(Address? address) {
    _formData?.address = ValueNotifier(address);
    _formData?.longitude.value = address?.geoLocation?.longitude;
    _formData?.latitude.value = address?.geoLocation?.latitude;
    _formData?.what3Words.value = address?.what3Words;
    notifyListeners();
  }

  void countryChanged() {
    notifyListeners();
  }

  @override
  void dispose() {
    // Clean up listeners
    isFormValid.dispose();
    super.dispose();
  }

  Future<List<KeyValuePair<Enum$CountryId, String>>> countries(String _) async {
    return Enum$CountryId.values
        .map((v) => (key: v, value: v.toString().split('.').last))
        .toList();
  }

  Future<List<String>> statuses(String _) async {
    return ['Live', 'Pending'];
  }

  Future<List<KeyValuePair<String, String>>> contacts(String _) async {
    return (account?.contacts ?? [])
        .map((v) => (key: '${v.firstName} ${v.lastName}', value: v.id!))
        .toList();
  }

  @override
  Future<(bool success, String error)> delete() async {
    markLocationToBeDeleted();

    toggleProcessing(value: true);

    if (account?.code?.isEmpty ?? true) {
      toggleProcessing();
      return (false, 'Account not found');
    }

    final (success, error) = await coreApiService.accountService
        .deleteAccountLocations(
          Input$DeleteAccountLocationInput(
            accountId: account!.id!,
            code: locationData.code.value!,
          ),
        );

    toggleProcessing();

    return (success, error ?? '');
  }

  @override
  Future<(bool success, String error)> update() async {
    toggleProcessing(value: true);

    if (account?.code?.isEmpty ?? true) {
      toggleProcessing();
      return (false, 'Account not found');
    }

    final (success, error) = await coreApiService.accountService
        .updateAccountLocations(
          Input$CreateOrUpdateAccountLocationInput(
            accountId: account!.id!,
            name: locationData.name.value!,
            code: locationData.code.value!,
            primaryContactId: locationData.primaryContact.value.value == ''
                ? '00000000-0000-0000-0000-000000000000'
                : locationData.primaryContact.value.value,
            country: locationData.countryCode.value?.value ?? '',
            addressKey: locationData.address.value!.addressKey,
            address: Input$AddressInput(
              address1: locationData.address.value?.address1,
              address2: locationData.address.value?.address2,
              address3: locationData.address.value?.address3,
              address4: locationData.address.value?.address4,
              address5: locationData.address.value?.address5,
              address6: locationData.address.value?.address6,
              postCode: locationData.address.value?.postCode,
              what3Words: locationData.what3Words.value,
              countryCode:
                  locationData.address.value?.countryCode ??
                  locationData.countryCode.value?.value,
              geoLocation: Input$LatLongInput(
                latitude: locationData.latitude.value != null
                    ? double.parse(locationData.latitude.value!.toString())
                    : 0,
                longitude: locationData.longitude.value != null
                    ? double.parse(locationData.longitude.value!.toString())
                    : 0,
              ),
            ),
            description: locationData.description.value ?? '',
            active: locationData.active.value,
            sitePermitHolder: locationData.isSitePermitHolder.value,
            sitePermitOrExemptionNumber:
                locationData.sitePermitOrExceptionNumber.value ?? '',
          ),
        );

    toggleProcessing();

    return (success, error ?? '');
  }

  @override
  Future<(bool success, String error)> add() async {
    toggleProcessing(value: true);

    if (account?.code?.isEmpty ?? true) {
      toggleProcessing();
      return (false, 'Account not found');
    }
    final (success, error) = await coreApiService.accountService
        .addAccountLocations(
          Input$CreateOrUpdateAccountLocationInput(
            accountId: account!.id!,
            name: locationData.name.value!,
            code: locationData.code.value!,
            primaryContactId: locationData.primaryContact.value.value == ''
                ? '00000000-0000-0000-0000-000000000000'
                : locationData.primaryContact.value.value,
            country: locationData.countryCode.value?.value ?? '',
            addressKey: locationData.address.value!.addressKey,
            address: Input$AddressInput(
              address1: locationData.address.value?.address1,
              address2: locationData.address.value?.address2,
              address3: locationData.address.value?.address3,
              address4: locationData.address.value?.address4,
              address5: locationData.address.value?.address5,
              address6: locationData.address.value?.address6,
              postCode: locationData.address.value?.postCode,
              what3Words: locationData.what3Words.value,
              countryCode:
                  locationData.address.value?.countryCode ??
                  locationData.countryCode.value?.value,
              geoLocation: Input$LatLongInput(
                latitude: locationData.latitude.value != null
                    ? double.parse(locationData.latitude.value!.toString())
                    : 0,
                longitude: locationData.longitude.value != null
                    ? double.parse(locationData.longitude.value!.toString())
                    : 0,
              ),
            ),
            description: locationData.description.value ?? '',
            active: locationData.active.value,
            sitePermitHolder: locationData.isSitePermitHolder.value,
            sitePermitOrExemptionNumber:
                locationData.sitePermitOrExceptionNumber.value ?? '',
          ),
        );

    toggleProcessing();

    return (success, error ?? '');
  }
}
