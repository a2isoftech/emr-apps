import 'package:json_annotation/json_annotation.dart';

part 'update_bank_and_notes_request.g.dart';

@JsonSerializable()
class UpdateBankAndNotesRequest {
  UpdateBankAndNotesRequest({
    required this.batchQuoteId,
    required this.bankSortCode,
    required this.bankAccountNumber,
    required this.notes,
  });

  factory UpdateBankAndNotesRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateBankAndNotesRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateBankAndNotesRequestToJson(this);

  final int batchQuoteId;
  String? bankSortCode;
  String? bankAccountNumber;
  String? notes;
}
