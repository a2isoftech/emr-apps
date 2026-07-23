import 'dart:async';

import 'package:emr_core_api/extensions/extensions.dart';
import 'package:emr_one_core/emr_one_core.dart' hide LoggerConfiguration;
import 'package:emr_one_core/widgets/layouts/emr_tab_bar_vertical_view/emr_form_buttons.dart';
import 'package:emr_one_data_management/common/utility.dart';
import 'package:emr_one_data_management/emr_one_data_management.dart';
import 'package:emr_one_data_management/models/filter_item.dart';
import 'package:emr_one_data_management/screens/weighbridge_configurations/controllers/weighbridge_config_form_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WeighbridgeConfigurationForm extends StatefulWidget {
  const WeighbridgeConfigurationForm({
    required this.id,
    required this.userInfoService,
    this.clone,
    super.key,
  });

  final String id;
  final bool? clone;
  final UserInfoService userInfoService;

  @override
  State<WeighbridgeConfigurationForm> createState() => _WeighbridgeConfigForm();
}

class _WeighbridgeConfigForm extends State<WeighbridgeConfigurationForm> {
  late final UserInfoService userInfoService;
  late final WeighbridgeConfigurationFormController _formController;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    _formController = WeighbridgeConfigurationFormController(
      userInfoService: widget.userInfoService,
      id: widget.id,
      referenceDataService: context.coreApi.referenceData,
    );
  }

  @override
  void dispose() {
    _formController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext buildContext) {
    return FutureBuilder(
      future: _loadConfig(),
      builder: (context, snapshot) {
        return Form(
          key: _formKey,
          child: (snapshot.connectionState != ConnectionState.done)
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : (_formController.model == null)
                  ? Center(
                      child: Text(context.l10n.weighbridgeConfigNotFound),
                    )
                  : _formFields(),
        );
      },
    );
  }

  Widget _formFields() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 16,
          left: 16,
          right: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: EmrTextFormField(
                    labelText: context.l10n.machineName,
                    hintText: 'e.g. UKMORWMX0003',
                    binding: _formController.model!.machineName,
                    enabled: ValueNotifier(_formController.isAddMode),
                    inputFormatters: [
                      TextInputFormatter.withFunction(
                        (oldValue, newValue) => TextEditingValue(
                          text: newValue.text.toUpperCase(),
                          selection: newValue.selection,
                        ),
                      ),
                    ],
                    validator: (machineName) {
                      final requiredValidatorResult =
                          Validators.required(machineName);
                      if (!machineName!.validateAlphaNumeric()) {
                        return context.l10n.onlyLettersNumbersAllowed;
                      }
                      if (requiredValidatorResult == null &&
                          !machineName.validateLength(13)) {
                        return 'Maximum length is 13 characters';
                      }
                      _onMachineNameChangedValidate();
                      return null;
                    },
                  ),
                ),
                const SizedBox(width: Insets.gutter),
                Expanded(
                  child: EmrTextFormField(
                    labelText: context.l10n.weighbridgeId,
                    hintText: 'e.g. NFADMORNFE7',
                    binding: _formController.model!.weighbridgeId,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    inputFormatters: [
                      TextInputFormatter.withFunction(
                        (oldValue, newValue) => TextEditingValue(
                          text: newValue.text.toUpperCase(),
                          selection: newValue.selection,
                        ),
                      ),
                    ],
                    validator: (weighbridgeId) {
                      final requiredValidatorResult =
                          Validators.required(weighbridgeId);

                      if (requiredValidatorResult == null &&
                          !weighbridgeId!.validateAlphaNumeric()) {
                        return context.l10n.onlyLettersNumbersAllowed;
                      }
                      return requiredValidatorResult;
                    },
                  ),
                ),
              ],
            ),
            Row(
              // IP address
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ip address
                Expanded(
                  child: ValueListenableBuilder(
                    valueListenable: _formController.model!.yard,
                    builder: (context, value, child) =>
                        EmrPickerFormField<FilterItem>(
                      key:
                          value.key.isEmpty ? UniqueKey() : ValueKey(value.key),
                      labelText: context.l10n.yard,
                      binding: _formController.model!.yard,
                      items: (String query) async {
                        final userYardCodes =
                            _formController.searchYards(query);

                        return userYardCodes;
                      },
                      itemTitleText: (item) => item.value,
                      validator: Validators.required,
                    ),
                  ),
                ),
                const SizedBox(width: Insets.gutter),
                Expanded(
                  child: EmrTextFormField(
                    labelText: context.l10n.ipAddress,
                    binding: _formController.model!.ipAddress,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (ipAddress) {
                      final requiredValidatorResult =
                          Validators.required(ipAddress);

                      if (requiredValidatorResult == null &&
                          !ipAddress!.validateIpAddress()) {
                        return context.l10n.ipAddressValidation;
                      }

                      return requiredValidatorResult;
                    },
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: EmrSwitchFormField(
                    labelText: context.l10n.logInfo,
                    binding: _formController.model!.logInfo,
                  ),
                ),
                Expanded(
                  child: EmrSwitchFormField(
                    labelText: context.l10n.logErrors,
                    binding: _formController.model!.logErrors,
                  ),
                ),
                const SizedBox(width: Insets.gutter),
                Expanded(
                  child: EmrSwitchFormField(
                    labelText: context.l10n.aiHelperLog,
                    binding: _formController.model!.aiHelperLog,
                  ),
                ),
                Expanded(
                  child: EmrSwitchFormField(
                    labelText: context.l10n.consoleLogger,
                    binding: _formController.model!.consoleLogger,
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: EmrTextFormField(
                    labelText: context.l10n.piPrintTimeoutInSeconds,
                    binding: _formController.model!.piPrintTimeoutInSeconds,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    validator: Validators.required,
                  ),
                ),
                const SizedBox(width: Insets.gutter),
                const Expanded(child: SizedBox.shrink()),
              ],
            ),
            const Divider(
              color: Colors.grey,
              thickness: 1,
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: Insets.gutter * 2,
                    ),
                    child: SizedBox(
                      height: 425,
                      child: SingleChildScrollView(
                        child: ListenableBuilder(
                          listenable: Listenable.merge([
                            _formController.model!.weighbridgeId,
                            _formController.model!.ipAddress,
                            _formController.model!.yard,
                            _formController.model!.machineName,
                            _formController.model!.id,
                            _formController.model!.configurations,
                            _formController.model!.logInfo,
                            _formController.model!.logErrors,
                            _formController.model!.aiHelperLog,
                            _formController.model!.consoleLogger,
                            _formController.model!.piPrintTimeoutInSeconds,
                          ]),
                          builder: (_, __) {
                            return Text(
                              _formController.setupWeighbridgeAppConfig(),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: EmrFormButtons(
                    onSave: () async {
                      await _onWeighbridgeConfigSave();
                    },
                    onCancel: () => context.pop(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _onMachineNameChangedValidate() async {
    final response = await _formController.onMachineNameChangedValidate();
    if (!response.$1 && mounted) {
      await EmrModal.showMessageBar(
        context,
        response.$2,
        messageType: MessageBarTypes.warning,
      );
    }
  }

  Future<void> _onWeighbridgeConfigSave() async {
    if (validateForm()) {
      final result = await _formController.onWeighbridgeConfigSave();
      if (mounted) {
        if (result.$1) {
          await DataManagementUtility.infoDialogWidget(
            context,
            message: result.$1 ? context.l10n.successfullySaved : result.$2!,
            title: result.$1 ? context.l10n.success : context.l10n.error,
            onAccept: () async => context.pop(),
            onCancel: () async => context.pop(),
          );
        } else {
          await DataManagementUtility.infoDialogWidget(
            context,
            message: result.$2!,
            title: context.l10n.error,
          );
        }
      }
    }
  }

  bool validateForm() {
    return _formKey.currentState?.validate() ?? false;
  }

  Future<void> _loadConfig() async {
    try {
      await _formController.loadConfig(clone: widget.clone);
    } catch (e) {
      if (mounted) {
        await EmrModal.showMessageBar(
          context,
          e.toString(),
          messageType: MessageBarTypes.error,
        );
      }
    }
  }
}
