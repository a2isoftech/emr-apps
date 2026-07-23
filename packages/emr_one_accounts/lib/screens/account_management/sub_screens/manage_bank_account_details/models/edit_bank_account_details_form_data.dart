import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:flutter/material.dart';

class EditBankAccountDetailsFormData {
  EditBankAccountDetailsFormData({
    String? accountNumber,
    String? accountHolderName,
    String? sortCode,
    String? bankName,
    String? ibanCode,
    String? reference,
    String? swiftCode,
    String? address1,
    String? address2,
    String? address3,
    String? address4,
    String? address5,
    String? address6,
    String? postCode,
    String? currenyCode,
    bool isFasterPay = false,
    String? countryCurrencyLink,
    String? comments,
  }) {
    this.accountNumber = ValueNotifier(accountNumber);
    this.accountHolderName = ValueNotifier(accountHolderName);
    this.sortCode = ValueNotifier(sortCode);
    this.bankName = ValueNotifier(bankName);
    this.ibanCode = ValueNotifier(ibanCode);
    this.reference = ValueNotifier(reference);
    this.swiftCode = ValueNotifier(swiftCode);

    this.address1 = ValueNotifier(address1);
    this.address2 = ValueNotifier(address2);
    this.address3 = ValueNotifier(address3);
    this.address4 = ValueNotifier(address4);
    this.address5 = ValueNotifier(address5);
    this.address6 = ValueNotifier(address6);
    this.postCode = ValueNotifier(postCode);
    this.currenyCode = ValueNotifier(currenyCode);
    this.isFasterPay = ValueNotifier(isFasterPay);
    this.countryCurrencyLink = ValueNotifier(countryCurrencyLink);
    this.comments = ValueNotifier(comments);
    addressString = ValueNotifier('');
  }

  late final ValueNotifier<String?> accountNumber;
  late final ValueNotifier<String?> accountHolderName;
  late final ValueNotifier<String?> sortCode;
  late final ValueNotifier<String?> bankName;
  late final ValueNotifier<String?> ibanCode;
  late final ValueNotifier<String?> reference;
  late final ValueNotifier<String?> swiftCode;
  late final ValueNotifier<String?> address1;
  late final ValueNotifier<String?> address2;
  late final ValueNotifier<String?> address3;
  late final ValueNotifier<String?> address4;
  late final ValueNotifier<String?> address5;
  late final ValueNotifier<String?> address6;
  late final ValueNotifier<String?> postCode;
  late final ValueNotifier<String?> currenyCode;
  late final ValueNotifier<bool> isFasterPay;
  late final ValueNotifier<String?> countryCurrencyLink;
  late final ValueNotifier<String?> comments;
  late final ValueNotifier<String?> addressString;

  static KeyValuePair<Enum$CountryId, String> defaultCountry = (
    key: Enum$CountryId.UK,
    value: 'UK',
  );

  late ValueNotifier<KeyValuePair<Enum$CountryId, String>> country =
      ValueNotifier(defaultCountry);

  static KeyValuePair<Enum$BankAccountType, String> defaultType = (
    key: Enum$BankAccountType.PERSONAL,
    value: 'PERSONAL',
  );

  late ValueNotifier<KeyValuePair<Enum$BankAccountType, String>>
  bankAccountType = ValueNotifier(defaultType);

  static KeyValuePair<Enum$BankAccountVerificationType, String>
  defaultBankVerificationType = (
    key: Enum$BankAccountVerificationType.NONE,
    value: 'NONE',
  );

  late ValueNotifier<KeyValuePair<Enum$BankAccountVerificationType, String>>
  bankAccountVerificationType = ValueNotifier(defaultBankVerificationType);

  void addListeners(void Function() listener) {
    accountNumber.addListener(listener);
    accountHolderName.addListener(listener);
    sortCode.addListener(listener);
    country.addListener(listener);
    bankAccountType.addListener(listener);
  }

  void removeListeners(void Function() listener) {
    accountNumber.removeListener(listener);
    accountHolderName.removeListener(listener);
    sortCode.removeListener(listener);
    country.removeListener(listener);
    bankAccountType.removeListener(listener);
  }
}
