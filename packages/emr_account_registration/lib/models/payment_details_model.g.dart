// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentDetailsModel _$PaymentDetailsModelFromJson(Map<String, dynamic> json) =>
    PaymentDetailsModel(
      paidIntoAccount: json['paidIntoAccount'] as bool?,
      sortCode: json['sortCode'] as String?,
      bankAccountNumber: json['bankAccountNumber'] as String?,
      accountHoldername: json['accountHoldername'] as String?,
      bankName: json['bankName'] as String?,
      enableCel: json['enableCel'] as bool?,
      agreeToSecoreTnc: json['agreeToSecoreTnc'] as bool?,
      signatureFileId: json['signatureFileId'] as String,
      signatureFileName: json['signatureFileName'] as String,
      signatureFilePath: json['signatureFilePath'] as String,
      agreeToLegalTnc: json['agreeToLegalTnc'] as bool?,
    );

Map<String, dynamic> _$PaymentDetailsModelToJson(
  PaymentDetailsModel instance,
) => <String, dynamic>{
  'paidIntoAccount': instance.paidIntoAccount,
  'sortCode': instance.sortCode,
  'bankAccountNumber': instance.bankAccountNumber,
  'accountHoldername': instance.accountHoldername,
  'bankName': instance.bankName,
  'enableCel': instance.enableCel,
  'agreeToLegalTnc': instance.agreeToLegalTnc,
  'agreeToSecoreTnc': instance.agreeToSecoreTnc,
  'signatureFileId': instance.signatureFileId,
  'signatureFileName': instance.signatureFileName,
  'signatureFilePath': instance.signatureFilePath,
};
