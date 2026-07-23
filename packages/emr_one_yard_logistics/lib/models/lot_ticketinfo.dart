import 'package:json_annotation/json_annotation.dart';

part 'lot_ticketinfo.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class TicketInfo {
  TicketInfo({
    required this.ticketId,
    required this.ticketNumber,
    required this.yardCode,
    required this.partyAccountNo,
    required this.partyName,
    required this.vehicleRegNo,
    required this.ticketDate,
  });

  factory TicketInfo.fromJson(Map<String, dynamic> json) =>
      _$TicketInfoFromJson(json);

  final String ticketId;
  final int ticketNumber;
  final String yardCode;
  final String partyAccountNo;
  final String partyName;
  final String? vehicleRegNo;
  final DateTime ticketDate;

  Map<String, dynamic> toJson() => _$TicketInfoToJson(this);
}
