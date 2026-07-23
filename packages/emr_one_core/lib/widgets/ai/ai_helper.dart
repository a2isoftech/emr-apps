import 'package:emr_one_core/appinsights/azure_application_insights.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';

/// {@category Telemetry}
/// This class is now deprecated. Please use EmrLogger or BuildContext logger
/// extensions instead and migrate any existing code.
class AIHelper {
  AIHelper({
    required this.instrumentationKey,
    required this.app,
    required this.env,
    required this.enabled,
    this.client,
    this.timeout = const Duration(seconds: 10),
  }) {
    _instance ??= this;
    processor = BufferedProcessor(
      next: TransmissionProcessor(
        instrumentationKey: instrumentationKey,
        httpClient: client ?? Client(),
        timeout: timeout,
      ),
    );

    telemetryClient = TelemetryClient(
      processor: processor,
    );
  }

  final String instrumentationKey;
  final String app;
  final String env;
  final Client? client;
  final Duration timeout;
  final bool Function() enabled;
  late final BufferedProcessor processor;
  late final TelemetryClient telemetryClient;
  static AIHelper? _instance;

  static AIHelper? get instance => _instance;

  /// Find the current AIHelper in the widget tree.
  static AIHelper of(BuildContext context) {
    final inherited =
        context.dependOnInheritedWidgetOfExactType<InheritedAIHelper>();
    assert(inherited != null, 'No AIHelper found in context');
    return inherited!.aiHelper;
  }

  Future<void> trackEvent(
    String name, {
    Map<String, String> params = const <String, String>{},
    String type = EmrOneCoreTelemetry.kTypeDefault,
    Severity severity = Severity.information,
  }) async {
    if (!enabled()) {
      return;
    }

    try {
// inject some standard params into the event
      final sendParams = <String, String>{};

      sendParams.addAll({
        'app': app,
        'env': env,
        EmrOneCoreTelemetry.kTypeParamName: type,
        'severity': severity.name,
      });

      final userInfo = UserInfoService.instance?.userInfo;

      if (userInfo?.id.isNotEmpty ?? false) {
        sendParams.addAll({'userId': userInfo!.id});
      }

      if (userInfo?.name.isNotEmpty ?? false) {
        sendParams.addAll({'userName': userInfo!.name});
      }

      sendParams.addAll(params);
      telemetryClient.trackEvent(name: name, additionalProperties: sendParams);
    } catch (ex) {
// If UserInfo isn't available, we don't want to track anything.
    }
  }

  Future<void> submitErrorAsTelemetry({
    required bool isFatal,
    required Object error,
    required StackTrace trace,
    Map<String, Object> additionalProperties = const <String, Object>{},
  }) async {
    debugPrint('reporting ${isFatal ? 'fatal' : 'non-fatal'} error: $error');
    debugPrint('$trace');

    try {
// Write an error telemetry item.
      telemetryClient.trackError(
        error: error,
        stackTrace: trace,
        severity: isFatal ? Severity.critical : Severity.error,
        additionalProperties: additionalProperties,
      );

      if (isFatal) {
        await telemetryClient.flush();
      }
    } on Object catch (e, t) {
// We print synchronously here to ensure the output is written in the
//case we force exit.
      debugPrintSynchronously('Sending error telemetry failed: $e\r\n$t');
      debugPrintSynchronously('Original error: $error');
    } finally {
      if (isFatal && kReleaseMode) {
        debugPrintSynchronously('Forcing exit');
      }
    }
  }
}
