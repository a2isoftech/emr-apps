import 'package:emr_one_data_management/emr_one_data_management.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/foundation.dart';

class CompanyBankAccountFormData {
  CompanyBankAccountFormData({
    String? territoryCode,
    String? territoryId,
    String? id,
    String? bankName,
    String? code,
    String? defaultAccount,
    String? sortCode,
    String? accountNumber,
    String? addressLine1,
    String? addressLine2,
    String? addressLine3,
    String? addressLine4,
    String? addressLine5,
    String? addressLine6,
    String? postCode,
    String? companyCode,
    String? companyId,
    Company? company,
    Territory? territory,
  }) {
    this.id = ValueNotifier(id);
    this.territoryCode = ValueNotifier(territoryCode);
    this.territoryId = ValueNotifier(territoryId);
    this.companyCode = ValueNotifier(companyCode);
    this.companyId = ValueNotifier(companyId);
    this.bankName = ValueNotifier(bankName);
    this.defaultAccount = ValueNotifier(defaultAccount);
    this.accountNumber = ValueNotifier(accountNumber);
    this.sortCode = ValueNotifier(sortCode);
    this.addressLine1 = ValueNotifier(addressLine1);
    this.addressLine2 = ValueNotifier(addressLine2);
    this.addressLine3 = ValueNotifier(addressLine3);
    this.addressLine4 = ValueNotifier(addressLine4);
    this.addressLine5 = ValueNotifier(addressLine5);
    this.addressLine6 = ValueNotifier(addressLine6);
    this.postCode = ValueNotifier(postCode);
    this.code = ValueNotifier(code);
    this.company = ValueNotifier(company);
    this.territory = ValueNotifier(territory);
  }

  factory CompanyBankAccountFormData.fromCompanyBankAccount(
    CompanyBankAccount companyBankAccount,
  ) => CompanyBankAccountFormData(
    id: companyBankAccount.id,
    code: companyBankAccount.code,
    bankName: companyBankAccount.bankName,
    defaultAccount: companyBankAccount.defaultAccount,
    companyCode: companyBankAccount.companyCode,
    companyId: companyBankAccount.companyId,
    territoryCode: companyBankAccount.territoryCode,
    territoryId: companyBankAccount.territoryId,
    company: companyBankAccount.company,
    territory: companyBankAccount.territory,
    sortCode: companyBankAccount.sortCode,
    accountNumber: companyBankAccount.accountNumber,
    addressLine1: companyBankAccount.address.address1,
    addressLine2: companyBankAccount.address.address2,
    addressLine3: companyBankAccount.address.address3,
    addressLine4: companyBankAccount.address.address4,
    addressLine5: companyBankAccount.address.address5,
    addressLine6: companyBankAccount.address.address6,
    postCode: companyBankAccount.address.postCode,
  );

  CompanyBankAccount toCompanyBankAccount() => CompanyBankAccount(
    territoryCode: territory.value!.code,
    territoryId: territory.value!.id!,
    companyCode: company.value!.code,
    companyId: company.value!.id,
    bankName: bankName.value ?? '',
    defaultAccount: defaultAccount.value ?? '',
    code: code.value ?? '',
    id: id.value ?? EmrOneDataManagementConstants.kEmptyGuid,
    company: company.value,
    territory: territory.value,
    sortCode: sortCode.value!,
    accountNumber: accountNumber.value!,
    address: Address(
      address1: addressLine1.value,
      address2: addressLine2.value,
      address3: addressLine3.value,
      address4: addressLine4.value,
      address5: addressLine5.value,
      address6: addressLine6.value,
      postCode: postCode.value,
    ),
  );

  late final ValueNotifier<String?> id;

  late final ValueNotifier<String?> territoryCode;

  late final ValueNotifier<String?> territoryId;

  late final ValueNotifier<String?> bankName;

  late final ValueNotifier<String?> code;

  late final ValueNotifier<String?> companyCode;

  late final ValueNotifier<String?> companyId;

  late final ValueNotifier<String?> defaultAccount;

  late final ValueNotifier<String?> accountNumber;

  late final ValueNotifier<String?> sortCode;

  late final ValueNotifier<String?> addressLine1;

  late final ValueNotifier<String?> addressLine2;

  late final ValueNotifier<String?> addressLine3;

  late final ValueNotifier<String?> addressLine4;

  late final ValueNotifier<String?> addressLine5;

  late final ValueNotifier<String?> addressLine6;

  late final ValueNotifier<String?> postCode;

  late final ValueNotifier<Company?> company;

  late final ValueNotifier<Territory?> territory;
}
