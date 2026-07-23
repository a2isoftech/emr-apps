import 'package:emr_core_api/models/models.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class UpdateAccountInput {
  UpdateAccountInput({
    required this.code,
    this.name,
    this.industryGroup,
    this.originatingCountry,
    this.sicCodeId,
    this.preferredPaymentMethod,
    this.preferredYard,
    this.celAgreement,
    this.cfcAgreement,
    this.businessDetail,
    this.contacts,
    this.addresses,
    this.locations,
    this.bankAccounts,
    this.validTerritoryIds,
    this.managers,
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
    this.currencyId,
    this.accountStatus,
    this.parentAccount,
    this.taxSettings,
    this.amiceCompanyNumber,
    this.reportingFrequency,
    this.productEWCs,
  });

  final String code;
  final String? name;
  final String? industryGroup;
  final String? originatingCountry;
  final String? sicCodeId;
  final String? preferredPaymentMethod;
  final String? preferredYard;
  final BusinessDetail? businessDetail;
  final LegalAgreement? celAgreement;
  final LegalAgreement? cfcAgreement;
  final List<UpdateContactInput>? contacts;
  final List<Address>? addresses;
  final List<UpdateLocationInput>? locations;
  final List<BankAccount>? bankAccounts;
  final List<String>? validTerritoryIds;
  final List<UpdateManagerInput>? managers;
  final List<LoyaltyCard>? loyaltyCards;
  final List<PrepaymentCard>? prepaymentCards;
  final List<ProductEWC>? productEWCs;
  String? customerVatGroupType;
  String? supplierVatGroupType;
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
}
