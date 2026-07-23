import 'package:json_annotation/json_annotation.dart';

part 'split_ticket_by_lot_purity_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class SplitTicketByLotPurityRequest {
  SplitTicketByLotPurityRequest({
    required this.ticketId,
  });

  factory SplitTicketByLotPurityRequest.fromJson(Map<String, dynamic> json) =>
      _$SplitTicketByLotPurityRequestFromJson(json);

  final String ticketId;

  Map<String, dynamic> toJson() => _$SplitTicketByLotPurityRequestToJson(this);
}
