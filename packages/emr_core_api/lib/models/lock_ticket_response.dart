import 'package:json_annotation/json_annotation.dart';

part 'lock_ticket_response.g.dart';

@JsonSerializable()
class LockTicketResponse {
  LockTicketResponse({
    this.isSuccess = true,
    this.ticketId = '',
    this.lockedBy,
  });

  factory LockTicketResponse.fromJson(Map<String, dynamic> json) =>
      _$LockTicketResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LockTicketResponseToJson(this);

  final bool isSuccess;
  final String ticketId;
  final String? lockedBy;
}
