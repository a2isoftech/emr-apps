// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logger_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoggerConfigurations _$LoggerConfigurationsFromJson(
        Map<String, dynamic> json) =>
    LoggerConfigurations()
      ..webConsoleLogger = json['webConsoleLogger'] == null
          ? null
          : LoggerConfiguration.fromJson(
              json['webConsoleLogger'] as Map<String, dynamic>)
      ..textFileLogger = json['textFileLogger'] == null
          ? null
          : TextFileLoggerConfiguration.fromJson(
              json['textFileLogger'] as Map<String, dynamic>)
      ..appInsightsEventLogger = json['appInsightsEventLogger'] == null
          ? null
          : AppInsightsLoggerConfiguration.fromJson(
              json['appInsightsEventLogger'] as Map<String, dynamic>)
      ..appInsightsTelemetryLogger = json['appInsightsTelemetryLogger'] == null
          ? null
          : AppInsightsLoggerConfiguration.fromJson(
              json['appInsightsTelemetryLogger'] as Map<String, dynamic>);

Map<String, dynamic> _$LoggerConfigurationsToJson(
        LoggerConfigurations instance) =>
    <String, dynamic>{
      'webConsoleLogger': instance.webConsoleLogger,
      'textFileLogger': instance.textFileLogger,
      'appInsightsEventLogger': instance.appInsightsEventLogger,
      'appInsightsTelemetryLogger': instance.appInsightsTelemetryLogger,
    };

TextFileLoggerConfiguration _$TextFileLoggerConfigurationFromJson(
        Map<String, dynamic> json) =>
    TextFileLoggerConfiguration(
      levels:
          (json['levels'] as List<dynamic>).map((e) => e as String).toList(),
      retentionInDays: (json['retentionInDays'] as num?)?.toInt() ?? 7,
      daysToShare: (json['daysToShare'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$TextFileLoggerConfigurationToJson(
        TextFileLoggerConfiguration instance) =>
    <String, dynamic>{
      'levels': instance.levels,
      'retentionInDays': instance.retentionInDays,
      'daysToShare': instance.daysToShare,
    };

AppInsightsLoggerConfiguration _$AppInsightsLoggerConfigurationFromJson(
        Map<String, dynamic> json) =>
    AppInsightsLoggerConfiguration(
      levels:
          (json['levels'] as List<dynamic>).map((e) => e as String).toList(),
      connectionString: json['connectionString'] as String?,
    );

Map<String, dynamic> _$AppInsightsLoggerConfigurationToJson(
        AppInsightsLoggerConfiguration instance) =>
    <String, dynamic>{
      'levels': instance.levels,
      'connectionString': instance.connectionString,
    };

LoggerConfiguration _$LoggerConfigurationFromJson(Map<String, dynamic> json) =>
    LoggerConfiguration(
      levels:
          (json['levels'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$LoggerConfigurationToJson(
        LoggerConfiguration instance) =>
    <String, dynamic>{
      'levels': instance.levels,
    };
