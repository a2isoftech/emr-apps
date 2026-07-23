import 'dart:async';
import 'dart:convert';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_core_api/models/document.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/emr_one_data_management_constants.dart';
import 'package:emr_one_data_management/models/filter_item.dart';
import 'package:emr_one_data_management/screens/weighbridge_configurations/form_data/weighbridge_config_model.dart';
import 'package:flutter/material.dart';

class WeighbridgeConfigurationFormController {
  WeighbridgeConfigurationFormController({
    required this.userInfoService,
    required this.id,
    required this.referenceDataService,
  });

  final String id;
  final UserInfoService userInfoService;
  final ReferenceDataService referenceDataService;
  WeighbridgeConfigModel? model;
  bool isAddMode = true;
  String? changeVector;
  ValueNotifier<bool> isFormValid = ValueNotifier<bool>(true);
  Map<String, dynamic>? weighbridgeAppConfig;

  void dispose() {
    removeListeners();
  }

  void removeListeners() {
    if (model == null) {
      return;
    }
    model!.yard.removeListener(_onYardChanged);
  }

  void addListeners() {
    if (model == null) {
      return;
    }
    model!.yard.addListener(_onYardChanged);
  }

  void _onYardChanged() {
    if (model == null) {
      return;
    }
    model!.yardId.value = model!.yard.value.key;
  }

  Future<(bool isSuccess, String message)>
      onMachineNameChangedValidate() async {
    if (model == null) {
      return (true, '');
    }
    if (isAddMode) {
      model!.id.value = 'WeighbridgeConfigurations/${model!.machineName.value}';

      final response = await referenceDataService.getWeighbridgeConfiguration(
        id: 'WeighbridgeConfigurations/${model!.machineName.value}',
      );

      if (response.data != null) {
        isAddMode = false;
        model!.machineName.value = response.data!.entity.machineName;
        model!.id.value = response.data!.entity.id;
        changeVector = response.data!.changeVector;
        model!.weighbridgeId.value = response.data!.entity.weighbridgeId;
        model!.ipAddress.value = response.data!.entity.ipAddress;
        model!.yardId.value = response.data!.entity.yardId;
        model!.configurations.value = response.data!.entity.configurations;
        model!.yard.value = FilterItem(
          key: response.data!.entity.yardId,
          value: response.data!.entity.yardId.split('/').last,
        );
        model!.userInfoId.value = userInfoService.userInfo.id;
        return (
          false,
          'A weighbridge config with this machine name already exists.'
        );
      }
    }
    return (true, '');
  }

  String setupWeighbridgeAppConfig() {
    if (weighbridgeAppConfig == null || model == null) {
      return '';
    }
    model!.configurations.value =
        Map<String, dynamic>.from(weighbridgeAppConfig!);
    model!.configurations.value['WEIGHBRIDGE_ID'] = model!.weighbridgeId.value;
    model!.configurations.value['TOKEN_ENDPOINT'] =
        (weighbridgeAppConfig!['TOKEN_ENDPOINT'] as String)
            .replaceAll('<IP_ADDRESS>', model!.ipAddress.value);
    model!.configurations.value['GATEWAY_ENDPOINT'] =
        (weighbridgeAppConfig!['GATEWAY_ENDPOINT'] as String)
            .replaceAll('<IP_ADDRESS>', model!.ipAddress.value);
    model!.configurations.value['MEDIA_SERVICE_EDGE_ENDPOINT'] =
        (weighbridgeAppConfig!['MEDIA_SERVICE_EDGE_ENDPOINT'] as String)
            .replaceAll('<IP_ADDRESS>', model!.ipAddress.value);
    model!.configurations.value['YARD_CODE'] = model!.yard.value.value;
    model!.configurations.value['LOG_CONFIGURATION'] = {
      'LOG_ERRORS': model!.logErrors.value,
      'LOG_INFO': model!.logInfo.value,
      'LOGGER_CONFIGURATIONS': {
        'IS_AI_HELPER_LOGGER_ENABLED': model!.aiHelperLog.value,
        'IS_CONSOLE_LOGGER_ENABLED': model!.consoleLogger.value,
      },
    };
    model!.configurations.value['GENERATE_CONSIGNMENT_NOTE_URL'] =
        (weighbridgeAppConfig!['GENERATE_CONSIGNMENT_NOTE_URL'] as String)
            .replaceAll('<IP_ADDRESS>', model!.ipAddress.value);
    model!.configurations.value['PI_PRINT_TIMEOUT_IN_SECONDS'] =
        model!.piPrintTimeoutInSeconds.value;

    const encoder = JsonEncoder.withIndent('  ');
    return encoder.convert(model!.configurations.value);
  }

  Future<void> loadConfig({bool? clone}) async {
    weighbridgeAppConfig =
        await referenceDataService.getWeighbridgeAppConfiguration();
    if (id.endsWith(EmrOneDataManagementConstants.kEmptyGuid) && isAddMode) {
      model = WeighbridgeConfigModel.fromNew();
      changeVector = null;
      isAddMode = true;
      model!
        ..aiHelperLog.value = ((weighbridgeAppConfig?['LOG_CONFIGURATION']
                        as Map<String, dynamic>?)?['LOGGER_CONFIGURATIONS']
                    as Map<String, dynamic>?)?['IS_AI_HELPER_LOGGER_ENABLED']
                as bool? ??
            true
        ..consoleLogger.value = ((weighbridgeAppConfig?['LOG_CONFIGURATION']
                        as Map<String, dynamic>?)?['LOGGER_CONFIGURATIONS']
                    as Map<String, dynamic>?)?['IS_AI_HELPER_LOGGER_ENABLED']
                as bool? ??
            true
        ..logErrors.value = ((weighbridgeAppConfig?['LOG_CONFIGURATION']
                as Map<String, dynamic>?)?['LOG_ERRORS'] as bool? ??
            true)
        ..logInfo.value = ((weighbridgeAppConfig?['LOG_CONFIGURATION']
                as Map<String, dynamic>?)?['LOG_INFO'] as bool? ??
            true)
        ..piPrintTimeoutInSeconds.value =
            (weighbridgeAppConfig?['PI_PRINT_TIMEOUT_IN_SECONDS'] as int?) ?? 0;
    } else {
      final response =
          await referenceDataService.getWeighbridgeConfiguration(id: id);
      if (response.success) {
        model = WeighbridgeConfigModel.fromWeighbridgeConfiguration(
          response.data!.entity,
        );
        model!.userInfoId.value = userInfoService.userInfo.id;
        changeVector = response.data!.changeVector;
        isAddMode = false;
        if (clone ?? false) {
          model!.id.value = '';
          model!.machineName.value = '';
          model!.ipAddress.value = '';
          changeVector = null;
          isAddMode = true;
        }
      } else {
        throw Exception(response.message);
      }
    }
    addListeners();
  }

  Future<(bool isSuccess, String? message)> onWeighbridgeConfigSave() async {
    final weighbridgeConfig = model!.toWeighbridgeConfiguration();

    final result = await referenceDataService.saveWeighbridgeConfiguration(
      configDocument: Document(
        entity: weighbridgeConfig,
        changeVector: changeVector ?? '',
      ),
    );
    return (result.success, result.success ? '' : result.message);
  }

  List<FilterItem> searchYards(String query) {
    return userInfoService.userInfo.depots
        .where(
          (e) =>
              e.yardCode != null &&
              e.yardCode!.toLowerCase().contains(query.toLowerCase()),
        )
        .map((e) => e.yardCode!)
        .toSet()
        .map(
          (yardCode) => FilterItem(
            key: 'yards/$yardCode',
            value: yardCode,
          ),
        )
        .toList();
  }
}
