import 'package:emr_core_api/models/inventory/ticket/legacy/trade2_media_asset.dart';
import 'package:emr_core_api/models/inventory/ticket/legacy/trade2_ticket_line.dart';
import 'package:json_annotation/json_annotation.dart';

part 'trade2_ticket.g.dart';

enum Trade2TicketType {
  @JsonValue('INWARDS')
  inwards,
  @JsonValue('OUTWARDS')
  outwards
}

enum Trade2TicketStatus {
  @JsonValue('OPEN')
  open,
  @JsonValue('FINISHED')
  finished,
  @JsonValue('CLOSED')
  closed
}

enum Trade2TicketCategory {
  @JsonValue('NORMAL')
  normal,
  @JsonValue('INTER_DEPOT')
  interDepot,
  @JsonValue('MERCHANT_TRUCK_TRADE')
  merchantTruckTrade,
  @JsonValue('TRUE_TRUCK_TRADE')
  trueTruckTrade,
  @JsonValue('INTER_YARD_TRANSFER')
  interYardTransfer
}

enum Trade2PriceOriginType {
  @JsonValue('NOT_SET')
  notSet,
  @JsonValue('GPL')
  gPL,
  @JsonValue('SPOT')
  spot,
  @JsonValue('FIXED')
  fixed,
  @JsonValue('PRICE_MATRIX')
  priceMatrix,
  @JsonValue('MANUAL')
  manual,
  @JsonValue('DIRT')
  dirt,
  @JsonValue('MANUAL_WEIGHBRIDGE')
  manualWeighbridge
}

@JsonSerializable(fieldRename: FieldRename.none)
class Trade2Ticket {
  Trade2Ticket(
    this.id,
    this.key,
    this.publishedToTrade,
    this.createdDate,
    this.createdDateEpoch,
    this.createdBy,
    this.ticketStatus,
    this.trade2Key,
  );

  factory Trade2Ticket.fromJson(Map<String, dynamic> json) =>
      _$Trade2TicketFromJson(json);

  Map<String, dynamic> toJson() => _$Trade2TicketToJson(this);

  final String id;
  final String key;
  final int? trade2Key;
  late String? partyAccountNo;
  late String? partyName;
  late String depotNo;
  late String yardId;
  late String yardCode;
  late int ticketNumber;
  late Trade2TicketCategory ticketCategory;
  final Trade2TicketStatus ticketStatus;
  late Trade2TicketType ticketType;
  final DateTime? publishedToTrade;
  final DateTime createdDate;
  final int createdDateEpoch;
  final String createdBy;
  late double price;
  late List<Trade2TicketLine> lines;
  late List<Trade2MediaAsset> mediaAssets;
  late String currency;
  late DateTime ticketDate;
  late String? vehicleNo;
  late String? locationCode;
  late String? locationName;
}
