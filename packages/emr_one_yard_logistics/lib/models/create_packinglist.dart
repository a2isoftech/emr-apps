import 'package:json_annotation/json_annotation.dart';

part 'create_packinglist.g.dart';

@JsonSerializable()
class CreatePackingList {
  CreatePackingList({
    required this.yardCode,
    required this.accountCode,
    required this.accountName,
  });
  factory CreatePackingList.fromJson(Map<String, dynamic> json) =>
      _$CreatePackingListFromJson(json);

  final String yardCode;
  final String accountCode;
  final String accountName;

  Map<String, dynamic> toJson() => _$CreatePackingListToJson(this);
}
