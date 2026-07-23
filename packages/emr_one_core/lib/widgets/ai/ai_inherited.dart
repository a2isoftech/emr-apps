// see: https://github.com/flutter/packages/blob/main/packages/go_router/lib/src/inherited_go_router.dart

import 'package:emr_one_core/widgets/ai/ai_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

/// AIHelper implementation of InheritedWidget.
///
/// Used for to find the current AIHelper in the widget tree.
/// {@category Telemetry}
class InheritedAIHelper extends InheritedWidget {
  /// Default constructor for the inherited go router.
  const InheritedAIHelper({
    required super.child,
    required this.aiHelper,
    super.key,
  });

  /// The [AIHelper] that is made available to the widget tree.
  final AIHelper aiHelper;

  @override
  // ignore: prefer_expression_function_bodies
  bool updateShouldNotify(covariant InheritedAIHelper oldWidget) {
    // avoid rebuilding the widget tree if the aihelper has not changed
    return aiHelper != oldWidget.aiHelper;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<AIHelper>('aiHelper', aiHelper));
  }
}
