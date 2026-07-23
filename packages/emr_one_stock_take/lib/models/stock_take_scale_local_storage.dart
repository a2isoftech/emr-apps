import 'package:json_annotation/json_annotation.dart';

part 'stock_take_scale_local_storage.g.dart';

@JsonSerializable()
class StockTakeScaleLocalStorage {
  StockTakeScaleLocalStorage({required this.lastUsedScale, required this.id});

  factory StockTakeScaleLocalStorage.fromJson(Map<String, dynamic> json) =>
      _$StockTakeScaleLocalStorageFromJson(json);

  final String id;
  final String lastUsedScale;

  Map<String, dynamic> toJson() => _$StockTakeScaleLocalStorageToJson(this);
}
