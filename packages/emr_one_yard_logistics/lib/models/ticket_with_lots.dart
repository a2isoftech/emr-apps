import 'package:emr_one_yard_logistics/models/lot.dart' show Lot;
import 'package:emr_one_yard_logistics/models/lot_ticketinfo.dart';
import 'package:emr_sharedtypes/uom/uom_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ticket_with_lots.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class TicketWithLots {
  TicketWithLots({
    required this.ticketInfo,
    required this.lotList,
    required this.ticketSplitWeightTolerancePercent,
    required this.ticketNetWeightMT,
    required this.totalLotWeightMT,
  });

  factory TicketWithLots.fromJson(Map<String, dynamic> json) {
    final decoded = json['lotList'] as List<dynamic>;

    final lotsWithVector = decoded.map((e) {
      final map = e as Map<String, dynamic>; // cast safely
      final lot = Lot.fromJson(map['entity'] as Map<String, dynamic>)
        ..changeVector = map['changeVector'] as String?;

      return lot;
    }).toList();

    return TicketWithLots(
      ticketInfo:
          TicketInfo.fromJson(json['ticketInfo'] as Map<String, dynamic>),
      lotList: lotsWithVector,
      ticketSplitWeightTolerancePercent:
          (json['ticketSplitWeightTolerancePercent'] as num).toDouble(),
      ticketNetWeightMT:
          UomValue.fromJson(json['ticketNetWeightMT'] as Map<String, dynamic>),
      totalLotWeightMT:
          UomValue.fromJson(json['totalLotWeightMT'] as Map<String, dynamic>),
    );
  }

  final TicketInfo ticketInfo;
  final UomValue ticketNetWeightMT;
  final UomValue totalLotWeightMT;
  final double ticketSplitWeightTolerancePercent;
  final List<Lot> lotList;

  Map<String, dynamic> toJson() => _$TicketWithLotsToJson(this);
}
