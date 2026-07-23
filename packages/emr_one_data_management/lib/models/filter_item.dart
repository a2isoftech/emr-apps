import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
@immutable
class FilterItem
{
    
  const FilterItem({
    required this.key,
    required this.value,
  });

  factory FilterItem.fromJson(Map<String, dynamic> json) => FilterItem(
      key: json['key'] as String,
      value: json['value'] as String,
    );

  final String key;
  final String value;

  @override
  String toString() {
    return key;
  }

  Map<String, dynamic> toJson() => FilterItem._toJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return (other is FilterItem) &&
        other.key == key &&
        other.value == value;
  }

  @override
  int get hashCode => Object.hash(key, value);

  static Map<String, dynamic> _toJson(FilterItem instance) {
    return <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };
  }

}
