import 'package:emr_one_yard_logistics/models/lot_ticketinfo.dart';
import 'package:emr_one_yard_logistics/models/lot_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_lot.g.dart';

@JsonSerializable()
class CreateLot {
  CreateLot({
    required this.code,
    required this.ticketInfo,
    required this.lotType,
  });
  factory CreateLot.fromJson(Map<String, dynamic> json) =>
      _$CreateLotFromJson(json);

  final String code;
  final TicketInfo ticketInfo;
  final LotType lotType;

  Map<String, dynamic> toJson() => _$CreateLotToJson(this);
}
