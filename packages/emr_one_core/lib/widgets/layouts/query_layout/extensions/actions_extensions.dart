import 'package:emr_one_core/widgets/layouts/query_layout/emr_action.dart';
import 'package:flutter/widgets.dart';

extension EmrQueryLayoutHybridActionsExtensions<T>
    on Map<Type, EmrAction<Intent>> {
  /// Returns a map of non-contextual actions.
  Map<Type, EmrAction<Intent>> get nonContextualActions {
    final actions = <Type, EmrAction<Intent>>{};
    for (final entry in entries) {
      if (entry.value.isContextual == false) {
        actions[entry.key] = entry.value;
      }
    }
    return actions;
  }

  /// Returns a map of contextual actions.
  Map<Type, EmrAction<Intent>> get contextualActions {
    final actions = <Type, EmrAction<Intent>>{};
    for (final entry in entries) {
      if (entry.value.isContextual) {
        actions[entry.key] = entry.value;
      }
    }
    return actions;
  }

  /// Returns a map of primary actions.
  Map<Type, EmrAction<Intent>> get primaryActions {
    final actions = <Type, EmrAction<Intent>>{};
    for (final entry in entries) {
      if (entry.value.isPrimary && !entry.value.isContextual) {
        actions[entry.key] = entry.value;
      }
    }
    return actions;
  }

  /// Returns a map of secondary actions.
  Map<Type, EmrAction<Intent>> get secondaryActions {
    final actions = <Type, EmrAction<Intent>>{};
    for (final entry in entries) {
      if (!entry.value.isPrimary && !entry.value.isContextual) {
        actions[entry.key] = entry.value;
      }
    }
    return actions;
  }
}
