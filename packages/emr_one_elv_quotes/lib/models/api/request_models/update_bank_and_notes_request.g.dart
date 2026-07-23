// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_bank_and_notes_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateBankAndNotesRequest _$UpdateBankAndNotesRequestFromJson(
  Map<String, dynamic> json,
) => UpdateBankAndNotesRequest(
  batchQuoteId: (json['batchQuoteId'] as num).toInt(),
  bankSortCode: json['bankSortCode'] as String?,
  bankAccountNumber: json['bankAccountNumber'] as String?,
  notes: json['notes'] as String?,
);

Map<String, dynamic> _$UpdateBankAndNotesRequestToJson(
  UpdateBankAndNotesRequest instance,
) => <String, dynamic>{
  'batchQuoteId': instance.batchQuoteId,
  'bankSortCode': instance.bankSortCode,
  'bankAccountNumber': instance.bankAccountNumber,
  'notes': instance.notes,
};
