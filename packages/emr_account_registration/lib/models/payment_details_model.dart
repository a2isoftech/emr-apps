import 'package:json_annotation/json_annotation.dart';

part 'payment_details_model.g.dart';

@JsonSerializable()
class PaymentDetailsModel {
  PaymentDetailsModel({
    required this.paidIntoAccount,
    required this.sortCode,
    required this.bankAccountNumber,
    required this.accountHoldername,
    required this.bankName,
    required this.enableCel,
    required this.agreeToSecoreTnc,
    required this.signatureFileId,
    required this.signatureFileName,
    required this.signatureFilePath,
    required this.agreeToLegalTnc,
  });

  factory PaymentDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentDetailsModelFromJson(json);

  PaymentDetailsModel.init() {
    sortCode = '';
    bankAccountNumber = '';
    accountHoldername = '';
    bankName = '';
    paidIntoAccount = false;
    enableCel = false;
    agreeToLegalTnc = false;
    agreeToSecoreTnc = false;
    signatureFileId = '';
    signatureFileName = '';
    signatureFilePath = '';
  }

  late bool? paidIntoAccount;

  late String? sortCode;

  late String? bankAccountNumber;

  late String? accountHoldername;

  late String? bankName;

  late bool? enableCel;

  late bool? agreeToLegalTnc;

  late bool? agreeToSecoreTnc;

  late String signatureFileId;
  late String signatureFileName;
  late String signatureFilePath;

  Map<String, dynamic> toJson() => _$PaymentDetailsModelToJson(this);
}
