import 'package:emr_sharedtypes/models/created.dart';
import 'package:emr_sharedtypes/models/modified.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ticket_remittance.g.dart';

@JsonSerializable(explicitToJson: true)
class TicketRemittance {
  TicketRemittance({
    required this.mediaUrl,
    required this.created,
    required this.modified,
  });

  factory TicketRemittance.fromJson(Map<String, dynamic> json) =>
      _$TicketRemittanceFromJson(json);
  final String mediaUrl;
  Created created;
  Modified modified;

  Map<String, dynamic> toJson() => _$TicketRemittanceToJson(this);
}
