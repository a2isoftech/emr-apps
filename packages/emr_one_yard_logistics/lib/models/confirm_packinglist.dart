import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'confirm_packinglist.g.dart';

@JsonSerializable()
class ConfirmPackingList {
  ConfirmPackingList({
    required this.id,
    required this.packingListState,
  });
  factory ConfirmPackingList.fromJson(Map<String, dynamic> json) =>
      _$ConfirmPackingListFromJson(json);

  final String id;
  final PackingListState packingListState;

  Map<String, dynamic> toJson() => _$ConfirmPackingListToJson(this);
}
