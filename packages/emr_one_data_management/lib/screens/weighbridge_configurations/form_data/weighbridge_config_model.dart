import 'package:emr_one_data_management/models/filter_item.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/foundation.dart';

class WeighbridgeConfigModel {
  WeighbridgeConfigModel({
    required String id,
    required String machineName,
    required String weighbridgeId,
    required String yardId,
    required String ipAddress,
    bool logInfo = true,
    bool logErrors = true,
    bool aiHelperLog = true,
    bool consoleLogger = true,
    Map<String, dynamic> configurations = const {},
    FilterItem? yard,
    String userInfoId = '',
    int piPrintTimeoutInSeconds = 0,
  }) {
    this.id = ValueNotifier(id);
    this.machineName = ValueNotifier(machineName);
    this.weighbridgeId = ValueNotifier(weighbridgeId);
    this.ipAddress = ValueNotifier(ipAddress);
    this.yardId = ValueNotifier(yardId);
    this.configurations = ValueNotifier(configurations);
    this.yard = ValueNotifier(
      yard ?? FilterItem(key: yardId, value: yardId.split('/').last),
    );
    this.userInfoId = ValueNotifier(userInfoId);
    this.logInfo = ValueNotifier(logInfo);
    this.logErrors = ValueNotifier(logErrors);
    this.aiHelperLog = ValueNotifier(aiHelperLog);
    this.consoleLogger = ValueNotifier(consoleLogger);
    this.piPrintTimeoutInSeconds = ValueNotifier(piPrintTimeoutInSeconds);
  }

  factory WeighbridgeConfigModel.fromNew() => WeighbridgeConfigModel(
        id: '',
        machineName: '',
        weighbridgeId: '',
        ipAddress: '',
        yardId: '',
      );

  factory WeighbridgeConfigModel.fromWeighbridgeConfiguration(
    WeighbridgeConfiguration config,
  ) =>
      WeighbridgeConfigModel(
        id: config.id,
        weighbridgeId: config.weighbridgeId,
        machineName: config.machineName,
        ipAddress: config.ipAddress,
        yardId: config.yardId,
        configurations: config.configurations,
        yard: FilterItem(
          key: config.yardId,
          value: config.yardId.split('/').last,
        ),
        logInfo: (config.configurations['LOG_CONFIGURATION']
                as Map<String, dynamic>)['LOG_INFO'] as bool? ??
            true,
        logErrors: (config.configurations['LOG_CONFIGURATION']
                as Map<String, dynamic>)['LOG_ERRORS'] as bool? ??
            true,
        aiHelperLog: ((config.configurations['LOG_CONFIGURATION']
                        as Map<String, dynamic>)['LOGGER_CONFIGURATIONS']
                    as Map<String, dynamic>)['IS_AI_HELPER_LOGGER_ENABLED']
                as bool? ??
            true,
        consoleLogger: ((config.configurations['LOG_CONFIGURATION']
                        as Map<String, dynamic>)['LOGGER_CONFIGURATIONS']
                    as Map<String, dynamic>)['IS_CONSOLE_LOGGER_ENABLED']
                as bool? ??
            true,
        piPrintTimeoutInSeconds:
            (config.configurations['PI_PRINT_TIMEOUT_IN_SECONDS'] as int?) ?? 0,
      );

  WeighbridgeConfiguration toWeighbridgeConfiguration() =>
      WeighbridgeConfiguration(
        id: 'WeighbridgeConfigurations/${machineName.value}',
        machineName: machineName.value,
        weighbridgeId: weighbridgeId.value,
        yardId: yardId.value,
        ipAddress: ipAddress.value,
        configurations: configurations.value,
        active: true,
        tags: [],
        created: Created(userInfoId: userInfoId.value),
        modified: Modified(userInfoId: userInfoId.value),
      );

  late final ValueNotifier<String> id;
  late final ValueNotifier<String> machineName;
  late final ValueNotifier<String> weighbridgeId;
  late final ValueNotifier<String> ipAddress;
  late final ValueNotifier<String> yardId;
  late final ValueNotifier<FilterItem> yard;
  late final ValueNotifier<Map<String, dynamic>> configurations;
  late final ValueNotifier<String> userInfoId;
  late final ValueNotifier<bool> logInfo;
  late final ValueNotifier<bool> logErrors;
  late final ValueNotifier<bool> aiHelperLog;
  late final ValueNotifier<bool> consoleLogger;
  late final ValueNotifier<int> piPrintTimeoutInSeconds;
}
