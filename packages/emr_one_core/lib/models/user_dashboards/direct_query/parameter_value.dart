import 'package:flutter/foundation.dart';

class DirectQueryParameterValue {
  DirectQueryParameterValue({
    required this.name,
    required this.value,
  });

  // clone factory method
  factory DirectQueryParameterValue.clone(
    DirectQueryParameterValue other,
  ) {
    return DirectQueryParameterValue(
      name: ValueNotifier(other.name.value),
      value: ValueNotifier(other.value.value),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name.value,
      'value': value.value,
    };
  }

  final ValueNotifier<String> name;
  final ValueNotifier<String> value;
}
