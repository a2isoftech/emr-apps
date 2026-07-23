import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/src/logging/helpers/log_directory_helper.dart';
import 'package:emr_one_core/src/logging/loggers/emr_logger.dart';
import 'package:emr_one_core/src/logging/services/application_insights_service.dart';
import 'package:emr_one_core/src/logging/services/text_file_cleanup_service.dart';
import 'package:emr_one_core/src/logging/sinks/sinks.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:package_info_plus/package_info_plus.dart' show PackageInfo;

class LoggerRegistrationHandler {
  static Future<void> register({
    required String appInsightsConnectionString,
    required UserService userService,
    required String app,
    required String environment,
    required LoggerConfigurations loggerConfigurations,
    required Client client,
  }) async {
    if (!kIsWeb && loggerConfigurations.textFileLogger != null) {
      final logDirectory = await LogDirectoryHelper.getLogDirectory();
      if (logDirectory != null) {
        await TextFileCleanupService(
          logDirectory: logDirectory,
          retentionInDays: loggerConfigurations.textFileLogger!.retentionInDays,
        ).cleanup();

        EmrLoggerFactory.fromSink(
          EmrOneCoreLogging.kTextFileLogger,
          loggerConfigurations.textFileLogger!.levels
              .map(EmrLogLevel.fromString)
              .toList(),
          TextFileSink(
            logDirectory: logDirectory,
          ),
        );
      }
    }

    Future<ApplicationInsightsService> getService() async {
      final packageInfo = await PackageInfo.fromPlatform();
      final version = '${packageInfo.version}.${packageInfo.buildNumber}';
      return ApplicationInsightsService(
        userService: userService,
        app: app,
        environment: environment,
        connectionString: appInsightsConnectionString,
        client: client,
        version: version,
      );
    }

    if (!kDebugMode && loggerConfigurations.appInsightsEventLogger != null) {
      EmrLoggerFactory.fromSink(
        EmrOneCoreLogging.kAppInsightsEventLogger,
        loggerConfigurations.appInsightsEventLogger!.levels
            .map(EmrLogLevel.fromString)
            .toList(),
        ApplicationInsightsEventSink(
          appInsightsService: await getService(),
        ),
      );
    }
    if (!kDebugMode &&
        loggerConfigurations.appInsightsTelemetryLogger != null) {
      EmrLoggerFactory.fromSink(
        EmrOneCoreLogging.kAppInsightsTelemetryLogger,
        loggerConfigurations.appInsightsTelemetryLogger!.levels
            .map(EmrLogLevel.fromString)
            .toList(),
        ApplicationInsightsTelemetrySink(
          appInsightsService: await getService(),
        ),
      );
    }

    final consoleLevels = kDebugMode
        ? [EmrLogLevel.all]
        : kIsWeb
            ? loggerConfigurations.webConsoleLogger?.levels
                    .map(EmrLogLevel.fromString)
                    .toList() ??
                [EmrLogLevel.off]
            : [EmrLogLevel.off];
    EmrLoggerFactory.fromSink(
      EmrOneCoreLogging.kConsoleLogger,
      consoleLevels,
      ConsoleSink(),
    );
  }
}
