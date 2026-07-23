import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:json_annotation/json_annotation.dart';

part 'packinglist.g.dart';

enum PackingListState {
  @JsonValue(0)
  empty,
  @JsonValue(1)
  inProgress,
  @JsonValue(2)
  packed,
  @JsonValue(3)
  completed,
}

enum SpinnerForPackingListOperations {
  @JsonValue(0)
  stopSpinner,
  @JsonValue(1)
  savingPackingListState,
  @JsonValue(2)
  removingItemsFromPackingList
}

@JsonSerializable(fieldRename: FieldRename.none)
class PackingList extends DocumentBase {
  PackingList({
    required super.id,
    required super.created,
    required super.modified,
    required this.yardId,
    required this.accountCode,
    required this.accountName,
    required this.packingListRef,
  });

  factory PackingList.fromJson(Map<String, dynamic> json) =>
      _$PackingListFromJson(json);

  final String yardId;
  final String accountCode;
  final String accountName;
  late PackingListState state;
  late UomValue? grossWeightUom;
  final int packingListRef;
  late List<String> lotIds;
  late List<String> palletIds;
  late List<Lot> lotDetails;
  late List<Pallet> palletDetails;
  late int? trade2Id;
  String? changeVector;

  Map<String, dynamic> toJson() => _$PackingListToJson(this);
}
