import 'package:json_annotation/json_annotation.dart';

part 'remove_items_from_packinglist.g.dart';

@JsonSerializable()
class RemoveItemsFromPackingList {
  RemoveItemsFromPackingList({
    required this.packingListId,
    this.palletId,
    this.lotId,
  });

  factory RemoveItemsFromPackingList.fromJson(Map<String, dynamic> json) =>
      _$RemoveItemsFromPackingListFromJson(json);

  final String packingListId;
  late String? palletId;
  late String? lotId;

  Map<String, dynamic> toJson() => _$RemoveItemsFromPackingListToJson(this);
}
