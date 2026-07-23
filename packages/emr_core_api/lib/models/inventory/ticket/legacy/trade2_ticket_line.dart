import 'package:emr_core_api/models/inventory/ticket/ticket_models.dart';
import 'package:emr_sharedtypes/uom/uom_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'trade2_ticket_line.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class Trade2TicketLine {
  Trade2TicketLine();

  factory Trade2TicketLine.fromJson(Map<String, dynamic> json) =>
      _$Trade2TicketLineFromJson(json);

  Map<String, dynamic> toJson() => _$Trade2TicketLineToJson(this);

  late UomValue grossWeight;
  late UomValue netWeight;
  late String gradeId;
  late String gradeCode;
  late String gradeName;
  late int lineNumber;
  late String heapId;
  late String heapCode;
  late UomValue rate;
  String? weightSerial;
  late bool isActive;
  late double price;
  late String ewcCode;
  String? partyContractRef;
  String? partyContractPart;
  late Trade2PriceOriginType priceOrigin;
  String? binNo;
  String? weighedBy;
  String? sealNo;
  String? consgnNo;
  String? comments;
}
