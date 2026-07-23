import 'package:emr_one_core/src/logging/loggers/emr_log_record.dart';
import 'package:emr_one_core/src/logging/services/application_insights_service.dart';
import 'package:emr_one_core/src/logging/sinks/emr_log_sink.dart';
import 'package:meta/meta.dart';

@internal
class ApplicationInsightsTelemetrySink implements EmrLogSink {
  ApplicationInsightsTelemetrySink({required this.appInsightsService});

  final ApplicationInsightsService appInsightsService;

  @override
  Future<void> log(EmrLogRecord record) =>
      appInsightsService.submitErrorAsTelemetry(
        error: record.error ?? Exception(record.message),
        severity: record.level,
        trace: record.stackTrace ?? StackTrace.current,
        additionalProperties: record.params ?? {},
      );

  @override
  Future<void> dispose() => flush();

  @override
  Future<void> flush() => appInsightsService.processor.flush();
}

class ApplicationInsightsEventSink implements EmrLogSink {
  ApplicationInsightsEventSink({required this.appInsightsService});

  final ApplicationInsightsService appInsightsService;

  @override
  Future<void> log(EmrLogRecord record) => appInsightsService.trackEvent(
        record.message,
        severity: record.level,
        params: record.params,
        type: record.type ?? '',
      );

  @override
  Future<void> dispose() => flush();

  @override
  Future<void> flush() => appInsightsService.processor.flush();
}
