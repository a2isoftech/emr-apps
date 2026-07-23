import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pallet.g.dart';

enum PalletState {
  @JsonValue(0)
  empty,
  @JsonValue(1)
  inProgress,
  @JsonValue(2)
  packed,
  @JsonValue(3)
  onPackingList,
}

enum PalletType {
  @JsonValue(0)
  normal,
  @JsonValue(1)
  polyJointBag,
  @JsonValue(2)
  leadJointBag,
}

@JsonSerializable(fieldRename: FieldRename.none)
class Pallet extends CodedEntity {
  Pallet({
    required super.code,
    required super.created,
    required super.modified,
    required super.id,
    required this.yardId,
    this.lotIds = const [],
  });

  factory Pallet.fromJson(Map<String, dynamic> json) => _$PalletFromJson(json);

  final String yardId;
  late PalletState state;
  late PalletType type;
  late List<String> lotIds;
  late UomValue grossWeightUom;
  late UomValue tareWeightUom;
  late String? packingListId;
  late PackingList? packingListDetails;
  late List<Lot> lotDetails;
  late List<Comment> comments;
  late List<String>? photos;

  Map<String, dynamic> toJson() => _$PalletToJson(this);
}
