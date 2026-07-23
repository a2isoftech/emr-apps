import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:json_annotation/json_annotation.dart';

part 'lot.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class Lot extends CodedEntity {
  Lot({
    required super.code,
    required super.id,
    required this.yardId,
    required super.created,
    required super.modified,
    this.t2LotNumber,
  });

  factory Lot.fromJson(Map<String, dynamic> json) => _$LotFromJson(json);

  final String yardId;
  late LotType type;
  late LotState state;
  late List<String>? tags;
  late List<String>? photos;
  late TicketInfo ticketInfo;
  late InventoryLocationInfo? sourceInventoryLocationInfo;
  late List<Comment> comments;
  late UomValue? grossWeightUom;
  late UomValue tareWeightUom;
  late UomValue netWeightUom;
  final String? t2LotNumber;
  late String? palletId;
  late String? packingListId;
  late Pallet? palletDetails;
  late PackingList? packingListDetails;
  late bool isLotUsedForTicketSplitting;

  Map<String, dynamic> toJson() => _$LotToJson(this);
}
