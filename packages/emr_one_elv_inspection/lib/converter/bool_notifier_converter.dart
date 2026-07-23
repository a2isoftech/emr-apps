import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

class BoolNotifierConverter
    implements JsonConverter<ValueNotifier<bool>, bool> {
  const BoolNotifierConverter();

  @override
  ValueNotifier<bool> fromJson(bool json) => ValueNotifier<bool>(json);

  @override
  bool toJson(ValueNotifier<bool> object) => object.value;
}
