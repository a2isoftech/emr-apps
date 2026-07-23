import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:emr_sharedtypes/enums/account_type_enum.dart';
import 'package:emr_sharedtypes/graphql/schema.graphql.dart';
import 'package:emr_sharedtypes/models/teams/account_team.dart';

class Account {
  Account(
    this.id,
    this.code,
    this.name,
    this.industryGroup,
    this.celAgreement,
    this.cfcAgreement,
    this.addresses,
    this.preferredYard,
    this.contacts,
    this.businessDetail,
    this.locations,
    this.primaryManager,
    this.managers,
    this.sicCodeId,
    this.prospectId,
    this.originatingCountry,
    this.bankAccounts,
    this.preferredPaymentMethod,
    this.territories,
    this.loyaltyCards,
    this.prepaymentCards,
    this.customerVatGroupType,
    this.supplierVatGroupType,
    this.industryGroups,
    this.financialCustomerGroupId,
    this.financialSupplierGroupId,
    this.settings,
    this.pricingControl,
    this.vIHBNumber,
    this.taxSettings, {
    required this.accountType,
    this.amiceCompanyNumber,
    this.reportingFrequency,
    this.publications = const [],
    this.portalEnabledContacts = const [],
    this.lastTicketDate,
    this.productEWCCodes = const [],
    this.accountSubTypes,
    this.visitFrequency,
    this.accountTeams,
    this.territoryCode,
    this.accountStatus,
  });

  factory Account.empty() => Account.simple('', '', '');

  factory Account.simple(String? id, String? code, String? name) => Account(
    id,
    code,
    name,
    '',
    null,
    null,
    [],
    '',
    [],
    BusinessDetail.empty(),
    [],
    AccountManager.empty(),
    [],
    '',
    '',
    '',
    [],
    null,
    [],
    [],
    [],
    null,
    null,
    null,
    '',
    '',
    null,
    null,
    '',
    null,
    accountType: AccountTypeEnum.none,
  );

  String? id;
  String? code;
  String? name;
  String? industryGroup;
  LegalAgreement? celAgreement;
  LegalAgreement? cfcAgreement;
  List<Address?> addresses;
  String? preferredYard;
  List<Contact>? contacts;
  List<Location> locations;
  AccountManager? primaryManager;
  List<AccountManager>? managers;
  BusinessDetail? businessDetail;
  String? sicCodeId;
  String? prospectId;
  String? originatingCountry;
  List<BankAccount>? bankAccounts;
  Enum$PaymentMethod? preferredPaymentMethod;
  List<Territory>? territories;
  List<LoyaltyCard> loyaltyCards;
  List<PrepaymentCard> prepaymentCards;
  Enum$VatGroupType? customerVatGroupType;
  Enum$VatGroupType? supplierVatGroupType;
  IndustryGroups? industryGroups;
  String? financialCustomerGroupId;
  String? financialSupplierGroupId;
  AccountSettings? settings;
  PricingControl? pricingControl;
  String? vIHBNumber;
  String? currencyId;
  String? accountStatus;
  String? parentAccount;
  TaxSettings? taxSettings;
  int? amiceCompanyNumber;
  String? reportingFrequency;
  String? visitFrequency;
  List<AccountPublication> publications;
  List<String> portalEnabledContacts;
  DateTime? lastTicketDate;
  List<ProductEWC> productEWCCodes;
  AccountTypeEnum accountType;
  List<AccountSubTypeBool>? accountSubTypes;
  List<AccountTeam>? accountTeams;
  String? territoryCode;
}
