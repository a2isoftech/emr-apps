import 'package:collection/collection.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class ManageContactController extends AccountManagementBaseController {
  ManageContactController({
    required this.coreApiService,
    required this.mediaService,
  });

  Contact? contact;
  Account? account;
  final CoreApiService coreApiService;
  final MediaService mediaService;
  GlobalKey<FormState>? contactsFormKey;
  final ValueNotifier<String> errorMessage = ValueNotifier<String>('');

  final Map<String, List<Enum$ContactType?>?> resolvedConflicts = {};
  final Set<String> deletedConflictContactIds = {};

  void setResolvedConflict(String contactId, List<Enum$ContactType?> newTypes) {
    resolvedConflicts[contactId] = newTypes;
  }

  void deleteResolvedConflictContact(String contactId) {
    deletedConflictContactIds.add(contactId);
    resolvedConflicts[contactId] = null;
  }

  void clearResolvedConflicts() {
    resolvedConflicts.clear();
    deletedConflictContactIds.clear();
  }

  late bool _contactToBeDeleted = false;
  void markContactToBeDeleted() {
    _contactToBeDeleted = true;
  }

  bool contactToBeDeleted() => _contactToBeDeleted;

  @override
  void reset() {
    processing = false;
    _formData = null;
    _contactToBeDeleted = false;
    errorMessage.value = '';
    clearResolvedConflicts();
    notifyListeners();
  }

  bool isCountryUK() =>
      data.country.value?.value == 'UK' || data.country.value?.value == 'GB';

  bool isCountryUS() => data.country.value?.value == 'US';

  final minDateOfBirth = DateTime(
    DateTime.now().year - 18,
    DateTime.now().month,
    DateTime.now().day,
  );

  void setContact(Contact? c) {
    contact = c;
    _formData = EditContactFormData(
      contactTypes: contact?.contactTypes
          ?.map<Enum$ContactType>(
            (contactType) =>
                EnumExtensions.getEnumValueNotifier<Enum$ContactType>(
                  contactType,
                  Enum$ContactType.values,
                ).value.key,
          )
          .toList(),
      firstName: contact?.firstName,
      middleName: contact?.middleName,
      lastName: contact?.lastName,
      address: contact?.address,
      emailAddress: contact?.contactPreferences.email?.value,
      contactNumber: contact?.contactPreferences.mobile?.value,
      smsEnabled: contact?.contactPreferences.mobile?.enabled ?? false,
      phoneEnabled: contact?.contactPreferences.phone?.enabled ?? false,
      emailEnabled: contact?.contactPreferences.email?.enabled ?? false,
      postEnabled: contact?.contactPreferences.post?.enabled ?? false,
      bulkEmailEnabled:
          contact
              ?.contactPreferences
              .otherContactMethods?['BulkEmail']
              ?.enabled ??
          false,
      faxEnabled: contact?.contactPreferences.fax?.enabled ?? false,
      faxNumber: contact?.contactPreferences.fax?.value,
      jobTitle: contact?.jobTitle,
      dateOfBirth: contact?.dateOfBirth ?? minDateOfBirth,
      portalEnabled: (account?.portalEnabledContacts ?? []).contains(
        contact?.id,
      ),
    );

    _formData!.portalEnabled.value = (account?.portalEnabledContacts ?? [])
        .contains(contact?.id);

    _formData!.title.value = contact?.title;
    _formData!.country = ValueNotifier<KeyValuePair<Enum$CountryId, String>?>(
      EnumExtensions.getEnumValueNotifier<Enum$CountryId>(
        contact?.address?.countryCode ?? 'UK',
        Enum$CountryId.values,
      ).value,
    );

    _formData!.country.addListener(countryChanged);
  }

  void setAddress(Address? address) {
    _formData?.address = ValueNotifier(address);
    notifyListeners();
  }

  void countryChanged() {
    notifyListeners();
  }

  @override
  void dispose() {
    // Clean up listeners
    isFormValid.dispose();
    errorMessage.dispose();
    super.dispose();
  }

  //Edit Contact

  EditContactFormData? _formData;

  EditContactFormData get data => _formData ?? EditContactFormData();
  final ValueNotifier<Map<Enum$ContactType, String>> contactTypes =
      ValueNotifier({
        for (final v in Enum$ContactType.values)
          if (v != Enum$ContactType.$unknown) v: v.toJson(),
      });

  Map<Enum$ContactType, String> pickerContactTypes() {
    return {
      for (final v in Enum$ContactType.values)
        if (v != Enum$ContactType.$unknown) v: v.toJson(),
    };
  }

  Future<List<KeyValuePair<Enum$CountryId, String>>> countries(String _) async {
    return Enum$CountryId.values
        .map((v) => (key: v, value: v.toString().split('.').last))
        .toList();
  }

  Future<List<String>> titles(String _) async {
    return ['Mr.', 'Mrs.', 'Miss'];
  }

  @override
  Future<(bool success, String error)> delete() async {
    toggleProcessing(value: true);

    if (account == null || (account?.id ?? '').isEmpty) {
      toggleProcessing();
      return (false, 'Account not found');
    }

    if (contact == null || (contact?.id ?? '').isEmpty) {
      toggleProcessing();
      return (false, 'Contact not found');
    }

    try {
      final (success, error) = await coreApiService.accountService
          .deleteAccountContact(contact!.id!, account!.id!);
      toggleProcessing();
      return (success, error ?? '');
    } catch (e) {
      toggleProcessing();
      return (false, e.toString());
    }
  }

  @override
  Future<(bool success, String error)> update() async {
    toggleProcessing(value: true);
    if (account?.code?.isEmpty ?? true) {
      toggleProcessing();
      return (false, 'Account not found');
    }

    final existingAddress = account?.addresses.firstWhereOrNull(
      (x) =>
          x?.address1 == _formData?.address.value?.address1 &&
          x?.address2 == _formData?.address.value?.address2 &&
          x?.address3 == _formData?.address.value?.address3 &&
          x?.address4 == _formData?.address.value?.address4 &&
          x?.address5 == _formData?.address.value?.address5 &&
          x?.address6 == _formData?.address.value?.address6 &&
          x?.postCode == _formData?.address.value?.postCode,
    );

    final updatedContact = Contact(
      id: contact?.id,
      contactTypes:
          _formData?.contactTypes.value
              .map((contactType) => contactType.toJson())
              .toList() ??
          [Enum$ContactType.NONE.toJson()],
      dateOfBirth: _formData?.dateOfBirth.value,
      title: _formData?.title.value,
      firstName: _formData?.firstName.value,
      middleName: _formData?.middleName.value,
      lastName: _formData?.lastName.value,
      contactPreferences: ContactPreference(
        phone: ContactMethod(
          _formData?.contactNumber.value ??
              contact?.contactPreferences.phone?.value ??
              '',
          enabled:
              _formData?.phoneEnabled.value ??
              contact?.contactPreferences.phone?.enabled ??
              false,
        ),
        email: ContactMethod(
          _formData?.emailAddress.value ??
              contact?.contactPreferences.email?.value ??
              '',
          enabled:
              _formData?.emailEnabled.value ??
              contact?.contactPreferences.email?.enabled ??
              false,
        ),
        mobile: ContactMethod(
          _formData?.contactNumber.value ??
              contact?.contactPreferences.mobile?.value ??
              '',
          enabled:
              _formData?.smsEnabled.value ??
              contact?.contactPreferences.mobile?.enabled ??
              false,
        ),
        post: ContactMethod(
          contact?.contactPreferences.post?.value ?? '',
          enabled:
              _formData?.postEnabled.value ??
              contact?.contactPreferences.post?.enabled ??
              false,
        ),
        fax: ContactMethod(
          _formData?.faxNumber.value ??
              contact?.contactPreferences.fax?.value ??
              '',
          enabled:
              _formData?.faxEnabled.value ??
              contact?.contactPreferences.fax?.enabled ??
              false,
        ),
        otherContactMethods: {
          'BulkEmail': ContactMethod(
            contact
                    ?.contactPreferences
                    .otherContactMethods?['BulkEmail']
                    ?.value ??
                '',
            enabled:
                _formData?.bulkEmailEnabled.value ??
                contact
                    ?.contactPreferences
                    .otherContactMethods?['BulkEmail']
                    ?.enabled ??
                false,
          ),
        },
      ),
      proofOfIdentification: null,
      proofOfAddress: null,
    );

    updatedContact.addressKey = existingAddress?.addressKey;

    final gqlContactPreferences = Input$UpdateContactPreferencesInput(
      email: Input$UpdateContactMethodInput(
        enabled: updatedContact.contactPreferences.email?.enabled ?? false,
        value: updatedContact.contactPreferences.email?.value ?? '',
      ),
      mobile: Input$UpdateContactMethodInput(
        enabled: updatedContact.contactPreferences.mobile?.enabled ?? false,
        value: updatedContact.contactPreferences.mobile?.value ?? '',
      ),
      phone: Input$UpdateContactMethodInput(
        enabled: updatedContact.contactPreferences.phone?.enabled ?? false,
        value: updatedContact.contactPreferences.phone?.value ?? '',
      ),
      fax: Input$UpdateContactMethodInput(
        enabled: updatedContact.contactPreferences.fax?.enabled ?? false,
        value: updatedContact.contactPreferences.fax?.value ?? '',
      ),
      post: Input$UpdateContactMethodInput(
        enabled: updatedContact.contactPreferences.post?.enabled ?? false,
        value: updatedContact.contactPreferences.post?.value ?? '',
      ),
      bulkEmail:
          updatedContact.contactPreferences.otherContactMethods?['BulkEmail'] !=
              null
          ? Input$UpdateContactMethodInput(
              enabled:
                  updatedContact
                      .contactPreferences
                      .otherContactMethods?['BulkEmail']
                      ?.enabled ??
                  false,
              value:
                  updatedContact
                      .contactPreferences
                      .otherContactMethods?['BulkEmail']
                      ?.value ??
                  '',
            )
          : null,
    );

    final selectedTypes = _formData?.contactTypes.value ?? [];
    const uniqueTypes = [Enum$ContactType.MAIN, Enum$ContactType.PAYMENTS];
    final conflictingTypes =
        selectedTypes.where((t) => uniqueTypes.contains(t)).toSet();

    final resolveConflictInputs = resolvedConflicts.entries.map((entry) {
      if (entry.value == null) {
        return Input$ResolveConflictAccountContactInput(
          contactId: entry.key,
          contactTypes: [],
        );
      }
      final types = entry.value!.whereType<Enum$ContactType>().toList();
      return Input$ResolveConflictAccountContactInput(
        contactId: entry.key,
        contactTypes: types.where((t) => !conflictingTypes.contains(t))
        .toList(),
      );
    }).toList();

    final gqlContact = Input$UpdateAccountContactInput(
      id: updatedContact.id ?? '',
      firstName: updatedContact.firstName,
      middleName: updatedContact.middleName,
      lastName: updatedContact.lastName,
      dateOfBirth: updatedContact.dateOfBirth,
      title: updatedContact.title,
      jobTitle: _formData?.jobTitle.value,
      portalEnabled: _formData?.portalEnabled.value ?? false,
      contactTypes: _formData?.contactTypes.value ?? [Enum$ContactType.NONE],
      contactPreferences: gqlContactPreferences,
      accountId: account!.id!,
      address: existingAddress?.addressKey != null
          ? null
          : Input$CreateAddressInput(
              address1: _formData?.address.value?.address1 ?? '',
              address2: _formData?.address.value?.address2,
              address3: _formData?.address.value?.address3 ?? '',
              address4: _formData?.address.value?.address4,
              address5: _formData?.address.value?.address5,
              address6: _formData?.address.value?.address6,
              postCode: _formData?.address.value?.postCode ?? '',
              countryCode: parseCountryCode(_formData?.country.value?.value),
              geoLocation: _formData?.address.value?.geoLocation != null
                  ? Input$UpdateLatLongInput(
                      latitude: _formData!.address.value!.geoLocation!.latitude!
                          .toDouble(),
                      longitude: _formData!
                          .address
                          .value!
                          .geoLocation!
                          .longitude!
                          .toDouble(),
                    )
                  : null,
              what3Words: _formData?.address.value?.what3Words,
            ),
      addressKey: updatedContact.addressKey,
      proofOfAddress: (updatedContact.proofOfAddress ?? [])
          .map(coreApiService.accountService.toIdentificationInput)
          .toList(),
      proofOfIdentification: (updatedContact.proofOfIdentification ?? [])
          .map(coreApiService.accountService.toIdentificationInput)
          .toList(),
      resolveConflictAccountContactInputs: resolveConflictInputs,
    );

    final (success, error) = await coreApiService.accountService
        .updateAccountContact(gqlContact);
    if (success) {
      contact = updatedContact;
      clearResolvedConflicts();
    }
    toggleProcessing();

    return (success, error ?? '');
  }

  Future<(bool success, String error)> create() async {
    toggleProcessing(value: true);

    if (account?.code?.isEmpty ?? true) {
      toggleProcessing();
      return (false, 'Account not found');
    }

    final existingAddress = account?.addresses.firstWhereOrNull(
      (x) =>
          x?.address1 == _formData?.address.value?.address1 &&
          x?.postCode == _formData?.address.value?.postCode,
    );

    final newContact = Contact(
      id: null,
      contactTypes: _formData?.contactTypes.value == null
          ? [Enum$ContactType.NONE.toJson()]
          : _formData!.contactTypes.value
              .map((contactType) => contactType.toJson())
              .toList(),
      dateOfBirth: _formData?.dateOfBirth.value,
      title: _formData?.title.value,
      firstName: _formData?.firstName.value,
      middleName: _formData?.middleName.value,
      lastName: _formData?.lastName.value,
      contactPreferences: ContactPreference(
        phone: ContactMethod(
          _formData?.contactNumber.value ??
              contact?.contactPreferences.phone?.value ??
              '',
          enabled:
              _formData?.phoneEnabled.value ??
              contact?.contactPreferences.phone?.enabled ??
              false,
        ),
        email: ContactMethod(
          _formData?.emailAddress.value ??
              contact?.contactPreferences.email?.value ??
              '',
          enabled:
              _formData?.emailEnabled.value ??
              contact?.contactPreferences.email?.enabled ??
              false,
        ),
        mobile: ContactMethod(
          _formData?.contactNumber.value ??
              contact?.contactPreferences.mobile?.value ??
              '',
          enabled:
              _formData?.smsEnabled.value ??
              contact?.contactPreferences.mobile?.enabled ??
              false,
        ),
        post: ContactMethod('', enabled: _formData?.postEnabled.value ?? false),
        fax: ContactMethod(
          _formData?.faxNumber.value ?? '',
          enabled: _formData?.faxEnabled.value ?? false,
        ),
        otherContactMethods: {
          'BulkEmail': ContactMethod(
            '',
            enabled: _formData?.bulkEmailEnabled.value ?? false,
          ),
        },
      ),
      proofOfIdentification: [],
      proofOfAddress: [],
    );

    newContact.addressKey = existingAddress?.addressKey;

    final gqlContactPreferences = Input$UpdateContactPreferencesInput(
      email: Input$UpdateContactMethodInput(
        enabled: newContact.contactPreferences.email?.enabled ?? false,
        value: newContact.contactPreferences.email?.value ?? '',
      ),
      mobile: Input$UpdateContactMethodInput(
        enabled: newContact.contactPreferences.mobile?.enabled ?? false,
        value: newContact.contactPreferences.mobile?.value ?? '',
      ),
      phone: Input$UpdateContactMethodInput(
        enabled: newContact.contactPreferences.phone?.enabled ?? false,
        value: newContact.contactPreferences.phone?.value ?? '',
      ),
      fax: Input$UpdateContactMethodInput(
        enabled: newContact.contactPreferences.fax?.enabled ?? false,
        value: newContact.contactPreferences.fax?.value ?? '',
      ),
      post: Input$UpdateContactMethodInput(
        enabled: newContact.contactPreferences.post?.enabled ?? false,
        value: newContact.contactPreferences.post?.value ?? '',
      ),
      bulkEmail:
          newContact.contactPreferences.otherContactMethods?['BulkEmail'] !=
              null
          ? Input$UpdateContactMethodInput(
              enabled:
                  newContact
                      .contactPreferences
                      .otherContactMethods?['BulkEmail']
                      ?.enabled ??
                  false,
              value:
                  newContact
                      .contactPreferences
                      .otherContactMethods?['BulkEmail']
                      ?.value ??
                  '',
            )
          : null,
    );

    final selectedTypes = _formData?.contactTypes.value ?? [];
    const uniqueTypes = [Enum$ContactType.MAIN, Enum$ContactType.PAYMENTS];
    final conflictingTypes =
        selectedTypes.where((t) => uniqueTypes.contains(t)).toSet();

    final resolveConflictInputs = resolvedConflicts.entries.map((entry) {
      if (entry.value == null) {
        return Input$ResolveConflictAccountContactInput(
          contactId: entry.key,
          contactTypes: [],
        );
      }
      
      return Input$ResolveConflictAccountContactInput(
        contactId: entry.key,
        contactTypes: entry.value!.whereType<Enum$ContactType>()
        .where((t) => !conflictingTypes.contains(t))
        .toList(),
      );
    }).toList();

    final gqlCreateContact = Input$CreateAccountContactInput(
      accountId: account!.id!,
      firstName: newContact.firstName ?? '',
      middleName: newContact.middleName ?? '',
      lastName: newContact.lastName ?? '',
      dateOfBirth: newContact.dateOfBirth,
      title: newContact.title ?? '',
      jobTitle: _formData?.jobTitle.value,
      portalEnabled: _formData?.portalEnabled.value ?? false,
      contactTypes: _formData?.contactTypes.value ?? [Enum$ContactType.NONE],
      contactPreferences: gqlContactPreferences,
      address: existingAddress != null
          ? null
          : Input$CreateAddressInput(
              address1: _formData?.address.value?.address1 ?? '',
              address2: _formData?.address.value?.address2,
              address3: _formData?.address.value?.address3 ?? '',
              address4: _formData?.address.value?.address4,
              address5: _formData?.address.value?.address5,
              address6: _formData?.address.value?.address6,
              postCode: _formData?.address.value?.postCode ?? '',
              countryCode: parseCountryCode(_formData?.country.value?.value),
              geoLocation: _formData?.address.value?.geoLocation != null
                  ? Input$UpdateLatLongInput(
                      latitude: _formData!.address.value!.geoLocation!.latitude!
                          .toDouble(),
                      longitude: _formData!
                          .address
                          .value!
                          .geoLocation!
                          .longitude!
                          .toDouble(),
                    )
                  : null,
              what3Words: _formData?.address.value?.what3Words,
            ),
      addressKey: newContact.addressKey,
      proofOfIdentification: (newContact.proofOfIdentification ?? [])
          .map(coreApiService.accountService.toIdentificationInput)
          .toList(),
      proofOfAddress: (newContact.proofOfAddress ?? [])
          .map(coreApiService.accountService.toIdentificationInput)
          .toList(),
      resolveConflictAccountContactInputs: resolveConflictInputs,
    );

    final (success, error) = await coreApiService.accountService
        .createAccountContact(gqlCreateContact);
    if (success) {
      contact = newContact;
      clearResolvedConflicts();
    }
    toggleProcessing();

    return (success, error ?? '');
  }

  bool showMessageWhileRemoveMainContact() {
    final selectedTypes = data.contactTypes.value;
    final hasMainContact = selectedTypes.contains(Enum$ContactType.MAIN);
    final otherContactsWithMain =
        account?.contacts
            ?.where(
              (c) =>
                  c.id != contact?.id &&
                  (c.contactTypes?.contains(Enum$ContactType.MAIN.toJson()) ??
                      false),
            )
            .isNotEmpty ??
        false;
    return !hasMainContact && !otherContactsWithMain;
  }

  Enum$CountryId? parseCountryCode(String? countryCode) {
    try {
      return Enum$CountryId.values.firstWhere(
        (e) => e.toString().split('.').last == countryCode,
      );
    } catch (e) {
      return null;
    }
  }

  @override
  void setAccount(Account? a) {
    account = a;
  }

  @override
  Future<(bool, String)> add() {
    throw UnimplementedError();
  }
}
