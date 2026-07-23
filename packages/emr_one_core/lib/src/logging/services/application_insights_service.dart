import 'package:azure_application_insights/azure_application_insights.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

@internal
class ApplicationInsightsService {
  ApplicationInsightsService({
    required String connectionString,
    required this.userService,
    required String app,
    required String environment,
    required String version,
    this.client,
    this.timeout = const Duration(seconds: 10),
    Duration flushDelay = const Duration(seconds: 30),
  }) {
    processor = BufferedProcessor(
      flushDelay: flushDelay,
      next: TransmissionProcessor(
        connectionString: connectionString,
        httpClient: client ?? Client(),
        timeout: timeout,
      ),
    );

    telemetryClient = TelemetryClient(
      processor: processor,
    );

    telemetryClient.context
      ..applicationVersion = version
      ..properties['app'] = app
      ..properties['env'] = environment
      ..device.type = kIsWeb ? 'Web' : 'Mobile/Windows';
  }

  static const _loggers = [
    EmrOneCoreLogging.kTextFileLogger,
    EmrOneCoreLogging.kConsoleLogger,
  ];
  late Client? client;
  late Duration timeout;
  late final BufferedProcessor processor;
  late final TelemetryClient telemetryClient;
  late final UserService userService;

  Future<void> trackEvent(
    String name, {
    String? source,
    Map<String, String>? params,
    String type = EmrOneCoreTelemetry.kTypeDefault,
    EmrLogLevel severity = EmrLogLevel.information,
  }) async {
    try {
      _addUserParams();

      params ??= {};

      if (source != null) {
        params.addAll({'source': source});
      }
      params.addAll({
        EmrOneCoreTelemetry.kTypeParamName: type,
        'severity': severity.name,
      });

      telemetryClient.trackEvent(name: name, additionalProperties: params);
    } on Exception catch (ex, trace) {
      EmrLogger.logTo(
        _loggers,
        EmrLogLevel.error,
        'Sending event failed',
        error: ex,
        stackTrace: trace,
        source: 'ApplicationInsightsService.trackEvent',
        params: {'name': name}..addAll(params ?? {}),
      );
    }
  }

  Future<void> submitErrorAsTelemetry({
    required Object error,
    required StackTrace trace,
    required EmrLogLevel severity,
    Map<String, Object> additionalProperties = const <String, Object>{},
  }) async {
    try {
      _addUserParams();
      // Write an error telemetry item.
      telemetryClient.trackError(
        error: error,
        stackTrace: trace,
        severity: toAppInsightsSeverity(severity),
        additionalProperties: additionalProperties,
      );
    } on Exception catch (ex, trace) {
      EmrLogger.logTo(
        _loggers,
        EmrLogLevel.error,
        'Sending error telemetry failed',
        error: ex,
        stackTrace: trace,
        source: 'ApplicationInsightsService.submitErrorAsTelemetry',
        params: {'originalError': error.toString()},
      );
    }
  }

  Severity toAppInsightsSeverity(EmrLogLevel level) {
    return switch (level) {
      EmrLogLevel.verbose => Severity.verbose,
      EmrLogLevel.information => Severity.information,
      EmrLogLevel.warning => Severity.warning,
      EmrLogLevel.error => Severity.error,
      EmrLogLevel.critical => Severity.critical,
      //Unmatched values will have to go in as information.
      _ => Severity.information,
    };
  }

  // We can't add these parameters in the constructor as we won't have a valid
  // UserInfo at that point.
  void _addUserParams() {
    if (userService.hasUser) {
      final user = userService.user;
      final id = user.id.contains('/') ? user.id.split('/')[1] : user.id;
      telemetryClient.context
        ..user.id = id
        ..properties['userId'] = id
        ..properties['userName'] = user.name;
      return;
    }

    telemetryClient.context
      ..user.id = null
      ..properties['userId'] = null
      ..properties['userName'] = null;
  }
}
