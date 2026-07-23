import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/widgets/ai/ai_helper.dart';
import 'package:flutter/widgets.dart';

/// {@category Telemetry}
extension AIHelperContextExtensions on BuildContext {
  void trackEvent(
    String name, {
    Map<String, String> params = const <String, String>{},
    String type = EmrOneCoreTelemetry.kTypeDefault,
  }) =>
      AIHelper.of(this).trackEvent(name, params: params, type: type);

  void trackResult(
    String name, {
    Map<String, String> params = const <String, String>{},
    String type = EmrOneCoreTelemetry.kTypeResult,
  }) =>
      AIHelper.of(this).trackEvent(name, params: params, type: type);
}

/// {@category Telemetry}
extension AIHelperHextensions on AIHelper {
  void trackEvent(
    String name, {
    Map<String, String> params = const <String, String>{},
    String type = EmrOneCoreTelemetry.kTypeDefault,
  }) =>
      this.trackEvent(name, params: params, type: type);

  void trackResult(
    String name, {
    Map<String, String> params = const <String, String>{},
    String type = EmrOneCoreTelemetry.kTypeResult,
  }) =>
      this.trackEvent(name, params: params, type: type);
}
