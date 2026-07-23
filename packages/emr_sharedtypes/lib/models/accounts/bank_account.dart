import 'package:emr_sharedtypes/models/models.dart';

class BankAccount {
  BankAccount({
    this.bankName,
    this.accountHolderName,
    this.sortCode,
    this.accountNumber,
    this.currencyId,
    this.address,
    this.ibanCode,
    this.reference,
    this.swiftCode,
    this.bankAccountType,
    this.countryCurrencyId,
    this.fasterPaymentSupported,
    this.verificationType,
    this.comments,
  });

  String? bankName;
  String? accountHolderName;
  String? sortCode;
  String? accountNumber;
  String? currencyId;
  Address? address;
  String? ibanCode;
  String? reference;
  String? swiftCode;
  String? bankAccountType;
  String? countryCurrencyId;
  bool? fasterPaymentSupported;
  String? verificationType;
  String? comments;
}
