import 'package:json_annotation/json_annotation.dart';

part 'logger_configuration.g.dart';

@JsonSerializable()
class LoggerConfigurations {
  LoggerConfigurations();

  factory LoggerConfigurations.fromJson(Map<String, dynamic> json) =>
      _$LoggerConfigurationsFromJson(json);
  LoggerConfiguration? webConsoleLogger;
  TextFileLoggerConfiguration? textFileLogger;
  AppInsightsLoggerConfiguration? appInsightsEventLogger;
  AppInsightsLoggerConfiguration? appInsightsTelemetryLogger;
}

@JsonSerializable()
class TextFileLoggerConfiguration extends LoggerConfiguration {
  TextFileLoggerConfiguration({
    required super.levels,
    this.retentionInDays = 7,
    this.daysToShare = 1,
  });

  factory TextFileLoggerConfiguration.fromJson(Map<String, dynamic> json) =>
      _$TextFileLoggerConfigurationFromJson(json);

  final int retentionInDays;
  final int daysToShare;
}

@JsonSerializable()
class AppInsightsLoggerConfiguration extends LoggerConfiguration {
  AppInsightsLoggerConfiguration({
    required super.levels,
    this.connectionString,
  });

  factory AppInsightsLoggerConfiguration.fromJson(Map<String, dynamic> json) =>
      _$AppInsightsLoggerConfigurationFromJson(json);

  final String? connectionString;
}

@JsonSerializable()
class LoggerConfiguration {
  LoggerConfiguration({required this.levels});

  factory LoggerConfiguration.fromJson(Map<String, dynamic> json) =>
      _$LoggerConfigurationFromJson(json);

  final List<String> levels;
}
