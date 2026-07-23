import 'package:emr_one_core/models/user_dashboards/user_dashboard_models.dart';
import 'package:flutter/foundation.dart';

class DirectQueryParameterDefinition {
  DirectQueryParameterDefinition({
    required this.name,
    required this.type,
    String? defaultValue,
  }) {
    this.defaultValue = ValueNotifier<String?>(defaultValue);
  }

  // clone factory method
  factory DirectQueryParameterDefinition.clone(
    DirectQueryParameterDefinition other,
  ) {
    return DirectQueryParameterDefinition(
      name: ValueNotifier<String>(other.name.value),
      type: ValueNotifier<DirectQueryParameterType>(other.type.value),
      defaultValue: other.defaultValue.value,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name.value,
      'type': type.value.name,
      'defaultValue': defaultValue.value,
    };
  }

  final ValueNotifier<String> name;
  final ValueNotifier<DirectQueryParameterType> type;
  late final ValueNotifier<String?> defaultValue;
}
