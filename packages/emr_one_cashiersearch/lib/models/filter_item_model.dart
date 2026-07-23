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

  final String key;
  final String value;

  @override
  String toString() {
    return key;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return (other is FilterItem) &&
        other.key == key &&
        other.value == value;
  }

  @override
  int get hashCode => Object.hash(key, value);
}
