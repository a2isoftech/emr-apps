import 'package:json_annotation/json_annotation.dart';

part 'managed_buyer.g.dart';

@JsonSerializable()
class ManagedBuyer {
  ManagedBuyer({required this.username, required this.azureId});

  factory ManagedBuyer.fromJson(Map<String, dynamic> json) =>
      _$ManagedBuyerFromJson(json);

  Map<String, dynamic> toJson() => _$ManagedBuyerToJson(this);
  final String username;
  final String azureId;
}
