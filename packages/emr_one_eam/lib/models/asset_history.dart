import 'package:json_annotation/json_annotation.dart';

part 'asset_history.g.dart';

@JsonSerializable()
class AssetHistory {
  AssetHistory({this.attributes, this.users, this.timestamps});

  factory AssetHistory.fromJson(Map<String, dynamic> json) =>
      _$AssetHistoryFromJson(json);

  List<AssetHistoryAttribute>? attributes;
  List<AssetHistoryUser>? users;
  List<String>? timestamps;

  Map<String, dynamic> toJson() => _$AssetHistoryToJson(this);
}

@JsonSerializable()
class AssetHistoryUser {
  AssetHistoryUser({required this.id, required this.displayName});

  factory AssetHistoryUser.fromJson(Map<String, dynamic> json) =>
      _$AssetHistoryUserFromJson(json);
  String id;
  String displayName;

  Map<String, dynamic> toJson() => _$AssetHistoryUserToJson(this);
}

@JsonSerializable()
class AssetHistoryAttribute {
  AssetHistoryAttribute({
    required this.name,
    required this.key,
    required this.dataType,
    required this.values,
  });

  factory AssetHistoryAttribute.fromJson(Map<String, dynamic> json) =>
      _$AssetHistoryAttributeFromJson(json);
  String name;
  String key;
  String dataType;
  List<AssetHistoryAttributeValue> values;

  Map<String, dynamic> toJson() => _$AssetHistoryAttributeToJson(this);
}

@JsonSerializable()
class AssetHistoryAttributeValue {
  AssetHistoryAttributeValue({required this.text, required this.value});

  factory AssetHistoryAttributeValue.fromJson(Map<String, dynamic> json) =>
      _$AssetHistoryAttributeValueFromJson(json);
  String text;
  String value;

  Map<String, dynamic> toJson() => _$AssetHistoryAttributeValueToJson(this);
}
