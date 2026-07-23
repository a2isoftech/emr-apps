import 'package:emr_one_cashiersearch/common/enums.dart';
import 'package:emr_one_cashiersearch/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'account.g.dart';

@JsonSerializable(explicitToJson: true)
class Account {
  Account({
    required this.code,
    required this.name,
    required this.type,
    this.locations,
    this.id,
    this.sicCode,
    this.celAgreement,
    this.preferredPaymentMethod,
    this.allowPayment,
    this.bankAccounts,
    this.prepaymentCards,
    this.businessDetail,
    this.accountStatus = AccountStatus.none,
    this.settings,
    this.secoreAgreement,
    this.sicCodeId,
    this.addresses,
    this.accountAddresses,
    this.accountSubTypes,
    List<ContactsKeyValuePair>? accountContacts,
  }) : accountContacts = accountContacts ?? <ContactsKeyValuePair>[];

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
  Map<String, dynamic> toJson() => _$AccountToJson(this);

  final String? id;
  final String code;
  final String name;
  final Agreement? celAgreement;
  final List<ContactsKeyValuePair> accountContacts;
  final String? sicCode;
  final AccountType type;
  final String? preferredPaymentMethod;
  final bool? allowPayment;
  final List<BankAccount>? bankAccounts;
  final List<PrepaymentCard>? prepaymentCards;
  final BusinessDetail? businessDetail;
  final AccountStatus accountStatus;
  final AccountSettings? settings;
  final Agreement? secoreAgreement;
  final List<AccountLocation>? locations;
  final String? sicCodeId;
  final List<AccountAddressDictionary?>? addresses;
  final List<Address?>? accountAddresses;
  final List<KeyValuePairOfAccountSubTypeAndBool>? accountSubTypes;
}

@JsonSerializable(explicitToJson: true)
class ContactsKeyValuePair {
  ContactsKeyValuePair({this.key, this.value});
  factory ContactsKeyValuePair.fromJson(Map<String, dynamic> json) =>
      _$ContactsKeyValuePairFromJson(json);
  Map<String, dynamic> toJson() => _$ContactsKeyValuePairToJson(this);
  String? key;
  Contacts? value;
}

@JsonSerializable(explicitToJson: true)
class Agreement {
  Agreement({this.agreementDate, this.expiryDate});
  factory Agreement.fromJson(Map<String, dynamic> json) =>
      _$AgreementFromJson(json);
  Map<String, dynamic> toJson() => _$AgreementToJson(this);
  DateTime? agreementDate;
  DateTime? expiryDate;
}

@JsonSerializable(explicitToJson: true)
class AccountSettings {
  AccountSettings({required this.isDigitalWalletActivated});
  factory AccountSettings.fromJson(Map<String, dynamic> json) =>
      _$AccountSettingsFromJson(json);
  Map<String, dynamic> toJson() => _$AccountSettingsToJson(this);
  final bool isDigitalWalletActivated;
}

@JsonSerializable(explicitToJson: true)
class Media {
  Media({required this.url, this.type});
  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
  Map<String, dynamic> toJson() => _$MediaToJson(this);
  final String url;
  final String? type;
}

@JsonSerializable(explicitToJson: true)
class Contacts {
  Contacts({
    required this.title,
    required this.firstName,
    required this.lastName,
    required this.dateOfBirth,
    required this.contactTypes,
    required this.contactPreferences,
    this.signature,
    this.proofOfIdentification,
    this.proofOfAddress,
  });
  factory Contacts.fromJson(Map<String, dynamic> json) =>
      _$ContactsFromJson(json);
  Map<String, dynamic> toJson() => _$ContactsToJson(this);

  String title;
  String firstName;
  String lastName;
  DateTime? dateOfBirth;
  Media? signature;
  List<ProofDocument>? proofOfIdentification;
  List<ProofDocument>? proofOfAddress;
  ContactPreference contactPreferences;
  List<String> contactTypes;
}

@JsonSerializable(explicitToJson: true)
class ContactPreference {
  ContactPreference({
    this.mobile,
    this.email,
    this.phone,
    this.fax,
    this.post,
    this.otherContactMethods,
  });
  factory ContactPreference.fromJson(Map<String, dynamic> json) =>
      _$ContactPreferenceFromJson(json);
  Map<String, dynamic> toJson() => _$ContactPreferenceToJson(this);
  final ContactMethod? mobile;
  final ContactMethod? email;
  final ContactMethod? phone;
  final ContactMethod? fax;
  final ContactMethod? post;
  final Map<String, ContactMethod>? otherContactMethods;
}

@JsonSerializable(explicitToJson: true)
class ContactMethod {
  ContactMethod(
    this.value, {
    required this.enabled,
  });

  factory ContactMethod.fromJson(Map<String, dynamic> json) =>
      _$ContactMethodFromJson(json);
  Map<String, dynamic> toJson() => _$ContactMethodToJson(this);
  String value;
  bool enabled;
}

@JsonSerializable(explicitToJson: true)
class ProofDocument {
  ProofDocument({
    required this.media,
    required this.validFrom,
    required this.validTo,
    required this.type,
    required this.subType,
  });
  factory ProofDocument.fromJson(Map<String, dynamic> json) =>
      _$ProofDocumentFromJson(json);
  Map<String, dynamic> toJson() => _$ProofDocumentToJson(this);
  Media media;
  DateTime validFrom;
  DateTime validTo;
  String type;
  String subType;
}

@JsonSerializable(explicitToJson: true)
class BankAccount {
  BankAccount({
    required this.bankName,
    required this.accountHolderName,
    required this.accountNumber,
    required this.sortCode,
    this.isDefault = false,
  });

  factory BankAccount.fromJson(Map<String, dynamic> json) =>
      _$BankAccountFromJson(json);
  Map<String, dynamic> toJson() => _$BankAccountToJson(this);
  String bankName;
  String accountHolderName;
  String sortCode;
  String accountNumber;
  String? currencyId;
  String? ibanCode;
  String? swiftCode;
  String? refernce;
  bool isDefault;
}

@JsonSerializable(explicitToJson: true)
class PrepaymentCard {
  PrepaymentCard({
    required this.code,
    required this.panDigits,
    required this.issuerType,
    required this.issueDate,
    this.active = false,
  });
  factory PrepaymentCard.fromJson(Map<String, dynamic> json) =>
      _$PrepaymentCardFromJson(json);
  Map<String, dynamic> toJson() => _$PrepaymentCardToJson(this);
  String code;
  int panDigits;
  PrepayCardIssuerType issuerType;
  DateTime issueDate;
  bool active;
}

@JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
class AccountLocation {
  AccountLocation({
    required this.code,
    required this.name,
    required this.addressKey,
  });

  factory AccountLocation.fromJson(Map<String, dynamic> json) =>
      _$AccountLocationFromJson(json);

  Map<String, dynamic> toJson() => _$AccountLocationToJson(this);

  final String code;
  final String name;
  final String addressKey;
}

@JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
class AccountAddressDictionary {
  AccountAddressDictionary({required this.key, required this.value});

  factory AccountAddressDictionary.fromJson(Map<String, dynamic> json) =>
      _$AccountAddressDictionaryFromJson(json);
  final String key;
  final Address value;
  Map<String, dynamic> toJson() => _$AccountAddressDictionaryToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
class KeyValuePairOfAccountSubTypeAndBool {
  KeyValuePairOfAccountSubTypeAndBool({
    required this.key,
    required this.value,
  });

  factory KeyValuePairOfAccountSubTypeAndBool.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$KeyValuePairOfAccountSubTypeAndBoolFromJson(json);

  Map<String, dynamic> toJson() =>
      _$KeyValuePairOfAccountSubTypeAndBoolToJson(this);

  final EnumAccountSubType key;
  final bool value;
}

enum EnumAccountSubType {
  @JsonValue('NONE')
  none,
  @JsonValue('TRADER')
  trader,
  @JsonValue('CUSTOMER')
  customer,
  @JsonValue('HAULIER')
  haulier,
  @JsonValue('TRADE_SUPPLIER')
  tradeSupplier,
  @JsonValue('OVERHEAD_SUPPLIER')
  overheadSupplier
}
