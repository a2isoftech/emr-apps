// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Account _$AccountFromJson(Map<String, dynamic> json) => Account(
  code: json['code'] as String,
  name: json['name'] as String,
  type: $enumDecode(_$AccountTypeEnumMap, json['type']),
  locations: (json['locations'] as List<dynamic>?)
      ?.map((e) => AccountLocation.fromJson(e as Map<String, dynamic>))
      .toList(),
  id: json['id'] as String?,
  sicCode: json['sicCode'] as String?,
  celAgreement: json['celAgreement'] == null
      ? null
      : Agreement.fromJson(json['celAgreement'] as Map<String, dynamic>),
  preferredPaymentMethod: json['preferredPaymentMethod'] as String?,
  allowPayment: json['allowPayment'] as bool?,
  bankAccounts: (json['bankAccounts'] as List<dynamic>?)
      ?.map((e) => BankAccount.fromJson(e as Map<String, dynamic>))
      .toList(),
  prepaymentCards: (json['prepaymentCards'] as List<dynamic>?)
      ?.map((e) => PrepaymentCard.fromJson(e as Map<String, dynamic>))
      .toList(),
  businessDetail: json['businessDetail'] == null
      ? null
      : BusinessDetail.fromJson(json['businessDetail'] as Map<String, dynamic>),
  accountStatus:
      $enumDecodeNullable(_$AccountStatusEnumMap, json['accountStatus']) ??
      AccountStatus.none,
  settings: json['settings'] == null
      ? null
      : AccountSettings.fromJson(json['settings'] as Map<String, dynamic>),
  secoreAgreement: json['secoreAgreement'] == null
      ? null
      : Agreement.fromJson(json['secoreAgreement'] as Map<String, dynamic>),
  sicCodeId: json['sicCodeId'] as String?,
  addresses: (json['addresses'] as List<dynamic>?)
      ?.map(
        (e) => e == null
            ? null
            : AccountAddressDictionary.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  accountAddresses: (json['accountAddresses'] as List<dynamic>?)
      ?.map(
        (e) => e == null ? null : Address.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  accountSubTypes: (json['accountSubTypes'] as List<dynamic>?)
      ?.map(
        (e) => KeyValuePairOfAccountSubTypeAndBool.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  accountContacts: (json['accountContacts'] as List<dynamic>?)
      ?.map((e) => ContactsKeyValuePair.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$AccountToJson(Account instance) => <String, dynamic>{
  'id': instance.id,
  'code': instance.code,
  'name': instance.name,
  'celAgreement': instance.celAgreement?.toJson(),
  'accountContacts': instance.accountContacts.map((e) => e.toJson()).toList(),
  'sicCode': instance.sicCode,
  'type': instance.type.toJson(),
  'preferredPaymentMethod': instance.preferredPaymentMethod,
  'allowPayment': instance.allowPayment,
  'bankAccounts': instance.bankAccounts?.map((e) => e.toJson()).toList(),
  'prepaymentCards': instance.prepaymentCards?.map((e) => e.toJson()).toList(),
  'businessDetail': instance.businessDetail?.toJson(),
  'accountStatus': _$AccountStatusEnumMap[instance.accountStatus]!,
  'settings': instance.settings?.toJson(),
  'secoreAgreement': instance.secoreAgreement?.toJson(),
  'locations': instance.locations?.map((e) => e.toJson()).toList(),
  'sicCodeId': instance.sicCodeId,
  'addresses': instance.addresses?.map((e) => e?.toJson()).toList(),
  'accountAddresses': instance.accountAddresses
      ?.map((e) => e?.toJson())
      .toList(),
  'accountSubTypes': instance.accountSubTypes?.map((e) => e.toJson()).toList(),
};

const _$AccountTypeEnumMap = {
  AccountType.retail: 'RETAIL',
  AccountType.business: 'BUSINESS',
  AccountType.yard: 'YARD',
};

const _$AccountStatusEnumMap = {
  AccountStatus.none: 'NONE',
  AccountStatus.draft: 'DRAFT',
  AccountStatus.live: 'LIVE',
};

ContactsKeyValuePair _$ContactsKeyValuePairFromJson(
  Map<String, dynamic> json,
) => ContactsKeyValuePair(
  key: json['key'] as String?,
  value: json['value'] == null
      ? null
      : Contacts.fromJson(json['value'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ContactsKeyValuePairToJson(
  ContactsKeyValuePair instance,
) => <String, dynamic>{'key': instance.key, 'value': instance.value?.toJson()};

Agreement _$AgreementFromJson(Map<String, dynamic> json) => Agreement(
  agreementDate: json['agreementDate'] == null
      ? null
      : DateTime.parse(json['agreementDate'] as String),
  expiryDate: json['expiryDate'] == null
      ? null
      : DateTime.parse(json['expiryDate'] as String),
);

Map<String, dynamic> _$AgreementToJson(Agreement instance) => <String, dynamic>{
  'agreementDate': instance.agreementDate?.toIso8601String(),
  'expiryDate': instance.expiryDate?.toIso8601String(),
};

AccountSettings _$AccountSettingsFromJson(Map<String, dynamic> json) =>
    AccountSettings(
      isDigitalWalletActivated: json['isDigitalWalletActivated'] as bool,
    );

Map<String, dynamic> _$AccountSettingsToJson(AccountSettings instance) =>
    <String, dynamic>{
      'isDigitalWalletActivated': instance.isDigitalWalletActivated,
    };

Media _$MediaFromJson(Map<String, dynamic> json) =>
    Media(url: json['url'] as String, type: json['type'] as String?);

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
  'url': instance.url,
  'type': instance.type,
};

Contacts _$ContactsFromJson(Map<String, dynamic> json) => Contacts(
  title: json['title'] as String,
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  dateOfBirth: json['dateOfBirth'] == null
      ? null
      : DateTime.parse(json['dateOfBirth'] as String),
  contactTypes: (json['contactTypes'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  contactPreferences: ContactPreference.fromJson(
    json['contactPreferences'] as Map<String, dynamic>,
  ),
  signature: json['signature'] == null
      ? null
      : Media.fromJson(json['signature'] as Map<String, dynamic>),
  proofOfIdentification: (json['proofOfIdentification'] as List<dynamic>?)
      ?.map((e) => ProofDocument.fromJson(e as Map<String, dynamic>))
      .toList(),
  proofOfAddress: (json['proofOfAddress'] as List<dynamic>?)
      ?.map((e) => ProofDocument.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ContactsToJson(Contacts instance) => <String, dynamic>{
  'title': instance.title,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
  'signature': instance.signature?.toJson(),
  'proofOfIdentification': instance.proofOfIdentification
      ?.map((e) => e.toJson())
      .toList(),
  'proofOfAddress': instance.proofOfAddress?.map((e) => e.toJson()).toList(),
  'contactPreferences': instance.contactPreferences.toJson(),
  'contactTypes': instance.contactTypes,
};

ContactPreference _$ContactPreferenceFromJson(Map<String, dynamic> json) =>
    ContactPreference(
      mobile: json['mobile'] == null
          ? null
          : ContactMethod.fromJson(json['mobile'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : ContactMethod.fromJson(json['email'] as Map<String, dynamic>),
      phone: json['phone'] == null
          ? null
          : ContactMethod.fromJson(json['phone'] as Map<String, dynamic>),
      fax: json['fax'] == null
          ? null
          : ContactMethod.fromJson(json['fax'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : ContactMethod.fromJson(json['post'] as Map<String, dynamic>),
      otherContactMethods:
          (json['otherContactMethods'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(k, ContactMethod.fromJson(e as Map<String, dynamic>)),
          ),
    );

Map<String, dynamic> _$ContactPreferenceToJson(ContactPreference instance) =>
    <String, dynamic>{
      'mobile': instance.mobile?.toJson(),
      'email': instance.email?.toJson(),
      'phone': instance.phone?.toJson(),
      'fax': instance.fax?.toJson(),
      'post': instance.post?.toJson(),
      'otherContactMethods': instance.otherContactMethods?.map(
        (k, e) => MapEntry(k, e.toJson()),
      ),
    };

ContactMethod _$ContactMethodFromJson(Map<String, dynamic> json) =>
    ContactMethod(json['value'] as String, enabled: json['enabled'] as bool);

Map<String, dynamic> _$ContactMethodToJson(ContactMethod instance) =>
    <String, dynamic>{'value': instance.value, 'enabled': instance.enabled};

ProofDocument _$ProofDocumentFromJson(Map<String, dynamic> json) =>
    ProofDocument(
      media: Media.fromJson(json['media'] as Map<String, dynamic>),
      validFrom: DateTime.parse(json['validFrom'] as String),
      validTo: DateTime.parse(json['validTo'] as String),
      type: json['type'] as String,
      subType: json['subType'] as String,
    );

Map<String, dynamic> _$ProofDocumentToJson(ProofDocument instance) =>
    <String, dynamic>{
      'media': instance.media.toJson(),
      'validFrom': instance.validFrom.toIso8601String(),
      'validTo': instance.validTo.toIso8601String(),
      'type': instance.type,
      'subType': instance.subType,
    };

BankAccount _$BankAccountFromJson(Map<String, dynamic> json) =>
    BankAccount(
        bankName: json['bankName'] as String,
        accountHolderName: json['accountHolderName'] as String,
        accountNumber: json['accountNumber'] as String,
        sortCode: json['sortCode'] as String,
        isDefault: json['isDefault'] as bool? ?? false,
      )
      ..currencyId = json['currencyId'] as String?
      ..ibanCode = json['ibanCode'] as String?
      ..swiftCode = json['swiftCode'] as String?
      ..refernce = json['refernce'] as String?;

Map<String, dynamic> _$BankAccountToJson(BankAccount instance) =>
    <String, dynamic>{
      'bankName': instance.bankName,
      'accountHolderName': instance.accountHolderName,
      'sortCode': instance.sortCode,
      'accountNumber': instance.accountNumber,
      'currencyId': instance.currencyId,
      'ibanCode': instance.ibanCode,
      'swiftCode': instance.swiftCode,
      'refernce': instance.refernce,
      'isDefault': instance.isDefault,
    };

PrepaymentCard _$PrepaymentCardFromJson(Map<String, dynamic> json) =>
    PrepaymentCard(
      code: json['code'] as String,
      panDigits: (json['panDigits'] as num).toInt(),
      issuerType: $enumDecode(
        _$PrepayCardIssuerTypeEnumMap,
        json['issuerType'],
      ),
      issueDate: DateTime.parse(json['issueDate'] as String),
      active: json['active'] as bool? ?? false,
    );

Map<String, dynamic> _$PrepaymentCardToJson(PrepaymentCard instance) =>
    <String, dynamic>{
      'code': instance.code,
      'panDigits': instance.panDigits,
      'issuerType': _$PrepayCardIssuerTypeEnumMap[instance.issuerType]!,
      'issueDate': instance.issueDate.toIso8601String(),
      'active': instance.active,
    };

const _$PrepayCardIssuerTypeEnumMap = {
  PrepayCardIssuerType.none: 'NONE',
  PrepayCardIssuerType.quantum: 'QUANTUM',
  PrepayCardIssuerType.incendia: 'INCENDIA',
  PrepayCardIssuerType.tuxedo: 'TUXEDO',
  PrepayCardIssuerType.test: 'TEST',
  PrepayCardIssuerType.secore: 'SECORE',
};

AccountLocation _$AccountLocationFromJson(Map<String, dynamic> json) =>
    AccountLocation(
      code: json['code'] as String,
      name: json['name'] as String,
      addressKey: json['addressKey'] as String,
    );

Map<String, dynamic> _$AccountLocationToJson(AccountLocation instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'addressKey': instance.addressKey,
    };

AccountAddressDictionary _$AccountAddressDictionaryFromJson(
  Map<String, dynamic> json,
) => AccountAddressDictionary(
  key: json['key'] as String,
  value: Address.fromJson(json['value'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AccountAddressDictionaryToJson(
  AccountAddressDictionary instance,
) => <String, dynamic>{'key': instance.key, 'value': instance.value.toJson()};

KeyValuePairOfAccountSubTypeAndBool
_$KeyValuePairOfAccountSubTypeAndBoolFromJson(Map<String, dynamic> json) =>
    KeyValuePairOfAccountSubTypeAndBool(
      key: $enumDecode(_$EnumAccountSubTypeEnumMap, json['key']),
      value: json['value'] as bool,
    );

Map<String, dynamic> _$KeyValuePairOfAccountSubTypeAndBoolToJson(
  KeyValuePairOfAccountSubTypeAndBool instance,
) => <String, dynamic>{
  'key': _$EnumAccountSubTypeEnumMap[instance.key]!,
  'value': instance.value,
};

const _$EnumAccountSubTypeEnumMap = {
  EnumAccountSubType.none: 'NONE',
  EnumAccountSubType.trader: 'TRADER',
  EnumAccountSubType.customer: 'CUSTOMER',
  EnumAccountSubType.haulier: 'HAULIER',
  EnumAccountSubType.tradeSupplier: 'TRADE_SUPPLIER',
  EnumAccountSubType.overheadSupplier: 'OVERHEAD_SUPPLIER',
};
