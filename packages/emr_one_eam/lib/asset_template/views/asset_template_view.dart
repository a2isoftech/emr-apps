import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_eam/asset_template/controllers/asset_template_controller.dart';
import 'package:emr_one_eam/base/base.dart';
import 'package:emr_one_eam/common/common.dart';
import 'package:emr_one_eam/models/asset_template.dart';
import 'package:emr_one_eam/widgets/eam_dropdown.dart';
import 'package:emr_one_eam/widgets/eam_textbox.dart';
import 'package:emr_one_eam/widgets/list_card_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AssetTemplateView extends BasePage {
  AssetTemplateView({required super.controller, super.key});

  @override
  State<StatefulWidget> createState() => AssetTemplateViewState();
}

class AssetTemplateViewState
    extends BasePageState<AssetTemplateView, IAssetTemplateController> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ValueListenableBuilder(
              valueListenable: controller.isBusy,
              builder: (context, value, child) {
                if (value) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: EmrColours.primaryBlue,
                    ),
                  );
                }
                return Row(
                  children: [
                    Expanded(
                      child: ValueListenableBuilder(
                        valueListenable: controller.selectedAssetTemplate,
                        builder: (context2, value2, child2) {
                          if (value2 != null) {
                            return Column(
                              children: [
                                Flexible(
                                  // flex: 6,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: _editTemplateWidget(),
                                      ),
                                      ValueListenableBuilder(
                                        valueListenable:
                                            controller.isPropertyEdit,
                                        builder: (context, value, child) {
                                          return Visibility(
                                            visible:
                                                value ==
                                                    AssetTemplateShowType
                                                        .attributes ||
                                                value ==
                                                    AssetTemplateShowType
                                                        .counters,
                                            child: const VerticalDivider(
                                              width: 1,
                                            ),
                                          );
                                        },
                                      ),
                                      _getPropertyEditView(),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          }
                          return Container();
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _getPropertyEditView() => ValueListenableBuilder(
    valueListenable: controller.isPropertyEdit,
    builder: (context, value, child) {
      return Visibility(
        visible: value != null,
        child: Expanded(
          flex: 2,
          child: value == AssetTemplateShowType.attributes
              ? _editPropertiesWidget()
              : value == AssetTemplateShowType.counters
              ? _editCounterWidget()
              : _editOtherPropertyWidget(),
        ),
      );
    },
  );
  Widget _editPropertiesWidget() {
    return ValueListenableBuilder(
      valueListenable: controller.selectedProperty,
      builder: (context, value, child) {
        if (value == null) {
          return Text(context.l10n.noProperySelectedMessage);
        }
        final isAssetType = value.name == EamConstants.assetType;
        var listType = '';
        controller.isListType.value = false;
        if (value.dataType != null &&
            value.dataType!.contains(EamConstants.list)) {
          controller.isListType.value = true;
          final listTypes = value.dataType!.split('.');
          if (listTypes.length > 1) {
            listType = listTypes[1];
          }
        }

        final dataTypeEditior = TextEditingController(
          text: controller.isListType.value
              ? context.l10n.list
              : value.dataType,
        );
        final listTypeEditor = TextEditingController(text: listType);

        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        controller.isPropertyEdit.value = null;
                        controller.selectedProperty.value = null;
                      },
                      icon: const Icon(Icons.arrow_back_outlined),
                    ),
                    Text(
                      context.l10n.editTemplateProperty,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        resetProperty(value);
                        controller.isPropertyEdit.value = null;
                        controller.selectedProperty.value = null;
                      },
                      icon: const Icon(Icons.refresh),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                EAMTextBox(
                  isEnabled: !isAssetType,
                  labelText: context.l10n.propertyName,
                  validationMessage: context.l10n.nameNotBlank,
                  controller: TextEditingController(text: value.name),
                  onChanged: (text) {
                    setState(() {
                      controller.selectedProperty.value!.name = text;
                      controller.isSaveEnabled.value = true;
                    });
                  },
                ),
                const SizedBox(height: 10),
                TypeAheadFormField<String>(
                  onSuggestionSelected: (suggestion) {
                    dataTypeEditior.text = suggestion;

                    if (suggestion == context.l10n.list) {
                      controller.isListType.value = true;
                    } else {
                      controller.isListType.value = false;
                      controller.selectedProperty.value!.dataType = suggestion;
                      setState(() {});
                    }
                    controller.isSaveEnabled.value = true;
                  },
                  itemBuilder: (context, itemData) =>
                      ListTile(title: Text(itemData)),
                  suggestionsCallback: (pattern) {
                    if (!isAssetType) {
                      return ConstantLists.staticDataTypes;
                    }
                    return [];
                  },
                  textFieldConfiguration: TextFieldConfiguration(
                    decoration: FormStyles.textFieldDecoration(context)
                        .copyWith(
                          isDense: true,
                          contentPadding: const EdgeInsets.all(12),
                          hintText: context.l10n.dataType,
                          labelText: context.l10n.dataType,
                          labelStyle: const TextStyle(color: Colors.grey),
                        ),
                    controller: dataTypeEditior,
                  ),
                ),
                const SizedBox(height: 10),
                ValueListenableBuilder(
                  valueListenable: controller.isListType,
                  builder: (context, value, child) {
                    return Visibility(
                      visible: value,
                      child: TypeAheadFormField<String>(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return context.l10n.cannotBeEmptyText;
                          }
                          return null;
                        },
                        onSuggestionSelected: (suggestion) {
                          listTypeEditor.text = suggestion;
                          if (value) {
                            controller.selectedProperty.value!.dataType =
                                '${EamConstants.list}.$suggestion';
                            controller.isSaveEnabled.value = true;
                            setState(() {});
                          }
                        },
                        itemBuilder: (context, itemData) =>
                            ListTile(title: Text(itemData)),
                        suggestionsCallback: (pattern) {
                          // if (isAssetType)
                          return controller.getEamListsOnSuggestion(pattern);
                          // return [];
                        },
                        textFieldConfiguration: TextFieldConfiguration(
                          decoration: FormStyles.textFieldDecoration(context)
                              .copyWith(
                                isDense: true,
                                contentPadding: const EdgeInsets.all(12),
                                hintText: context.l10n.listType,
                                labelText: context.l10n.listType,
                                labelStyle: const TextStyle(color: Colors.grey),
                              ),
                          controller: listTypeEditor,
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(context.l10n.required),
                    Switch(
                      value: value.isMandatory ?? false,
                      onChanged: (changedValue) async {
                        setState(() {
                          value.isMandatory =
                              !(controller
                                      .selectedProperty
                                      .value!
                                      .isMandatory ??
                                  false);
                          controller.isSaveEnabled.value = true;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _editCounterWidget() {
    return ValueListenableBuilder(
      valueListenable: controller.selectedCounter,
      builder: (context, value, child) {
        if (value == null) {
          return Text(context.l10n.noCounterSelectedText);
        }

        final incrementTypeEditior = TextEditingController(
          text: value.incrementType,
        );

        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        controller.isPropertyEdit.value = null;
                        controller.selectedCounter.value = null;
                      },
                      icon: const Icon(Icons.arrow_back_outlined),
                    ),
                    Text(
                      context.l10n.editCounterProperty,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        resetCounter(value);
                        controller.isPropertyEdit.value = null;
                        controller.selectedCounter.value = null;
                      },
                      icon: const Icon(Icons.refresh),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                EAMTextBox(
                  labelText: context.l10n.counterName,
                  validationMessage: context.l10n.nameNotBlank,
                  controller: TextEditingController(text: value.name),
                  onChanged: (text) {
                    setState(() {
                      controller.selectedCounter.value!.name = text;
                      controller.isSaveEnabled.value = true;
                    });
                  },
                ),
                const SizedBox(height: 10),
                EAMTextBox(
                  isEnabled: false,
                  labelText: context.l10n.dataType,
                  controller: TextEditingController(text: value.dataType),
                  onChanged: null,
                ),
                const SizedBox(height: 10),
                TypeAheadFormField<String>(
                  onSuggestionSelected: (suggestion) {
                    incrementTypeEditior.text = suggestion;
                    controller.selectedCounter.value!.incrementType =
                        suggestion;
                    controller.isSaveEnabled.value = true;
                    setState(() {});
                  },
                  itemBuilder: (context, itemData) =>
                      ListTile(title: Text(itemData)),
                  suggestionsCallback: (pattern) {
                    return ConstantLists.counterTypeList;
                  },
                  textFieldConfiguration: TextFieldConfiguration(
                    decoration: FormStyles.textFieldDecoration(context)
                        .copyWith(
                          isDense: true,
                          contentPadding: const EdgeInsets.all(12),
                          hintText: context.l10n.counterType,
                          labelText: context.l10n.counterType,
                          labelStyle: const TextStyle(color: Colors.grey),
                        ),
                    controller: incrementTypeEditior,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(context.l10n.active),
                    Switch(
                      value: value.active ?? false,
                      onChanged: (changedValue) async {
                        setState(() {
                          value.active =
                              !(controller.selectedCounter.value!.active ??
                                  false);
                          controller.isSaveEnabled.value = true;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _editOtherPropertyWidget() {
    return ValueListenableBuilder(
      valueListenable: controller.selectedOtherProperty,
      builder: (context, value, child) {
        if (value == null) {
          return Center(child: Text(context.l10n.selectAProperty));
        }
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        controller.isPropertyEdit.value = null;
                        controller.selectedOtherProperty.value = null;
                      },
                      icon: const Icon(Icons.arrow_back_outlined),
                    ),
                    Text(
                      context.l10n.editProperty,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        controller.isPropertyEdit.value = null;
                        controller.selectedOtherProperty.value = null;
                      },
                      icon: const Icon(Icons.refresh),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(value.entries.first.value),
                const SizedBox(height: 20),
              ],
            ),
          ),
        );
      },
    );
  }

  void resetCounter(AssetTemplateCounter counter) {
    setState(() {
      final originalCounter = controller.originalCounters
          .where((element) => element.id == counter.id)
          .firstOrNull;
      if (originalCounter != null) {
        controller.selectedCounter.value = originalCounter;
        counter.name = originalCounter.name;
        counter.incrementType = originalCounter.incrementType;
        counter.active = originalCounter.active;
      }
    });
  }

  void resetProperty(AssetTemplateProperty property) {
    setState(() {
      final originalProperty = controller.originalProperties
          .where((element) => element.id == property.id)
          .firstOrNull;
      if (originalProperty != null) {
        controller.selectedProperty.value = originalProperty;
        property.name = originalProperty.name;
        property.dataType = originalProperty.dataType;
        property.isMandatory = originalProperty.isMandatory;
      }
    });
  }

  Widget _editTemplateWidget() {
    final tempProps =
        controller.selectedAssetTemplate.value?.templateProperties;
    final tempCounters =
        controller.selectedAssetTemplate.value?.assetTemplateCounters;
    controller.isD365Sync.value =
        controller.selectedAssetTemplate.value != null &&
        (controller.selectedAssetTemplate.value?.syncTargets ?? []).any(
          (element) => element.name == SyncTarget.d365.toUpperCase(),
        );
    controller.isTrade2Sync.value =
        controller.selectedAssetTemplate.value != null &&
        (controller.selectedAssetTemplate.value?.syncTargets ?? []).any(
          (element) => element.name == SyncTarget.trade2.toUpperCase(),
        );
    final codeFormat = controller.selectedAssetTemplate.value?.codeFormat;
    final codeEditor = TextEditingController(
      text: controller.selectedAssetTemplate.value?.codeFormat,
    );
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  context.l10n.editAssetTemplate,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          controller.setSelectedTemplate(null);
                        },
                        child: Text(context.l10n.close),
                      ),
                      const SizedBox(width: 10),
                      ValueListenableBuilder(
                        valueListenable: controller.isSaveEnabled,
                        builder: (context2, saveEnabled, child) {
                          return ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.resolveWith<Color>((
                                    Set<WidgetState> states,
                                  ) {
                                    if (!saveEnabled) {
                                      return Colors.grey;
                                    }
                                    return Theme.of(context)
                                        .colorScheme
                                        .primary; // The component's default.
                                  }),
                            ),
                            onPressed: !saveEnabled
                                ? null
                                : () async {
                                    final modifiedProperties = controller
                                        .modifiedProperties();
                                    if (modifiedProperties.isNotEmpty) {
                                      await EmrDialog.cancelOk(
                                        context,
                                        titleText: context.l10n.areYouSure,
                                        contentText:
                                            '''
${context.l10n.belowPropertiesModified} \n ${modifiedProperties.join('''
, ''')} \n ${context.l10n.sureToSaveChanges}''',
                                        onOk: () async {
                                          await _saveTemplate();
                                        },
                                      );
                                    } else {
                                      await _saveTemplate();
                                    }
                                  },
                            child: Text(context.l10n.save),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            EAMTextBox(
              labelText: context.l10n.name,
              validationMessage: context.l10n.nameNotBlank,
              controller: TextEditingController(
                text: controller.selectedAssetTemplate.value?.name,
              ),
              onChanged: (text) {
                controller.changeTemplateName(text);
              },
            ),
            const SizedBox(height: 10),
            EAMTextBox(
              inputFormatters: [
                FilteringTextInputFormatter.allow(
                  RegExp(
                    '${controller.selectedAssetTemplate.value?.codeFormat}[0]*',
                  ),
                ),
              ],
              isEnabled: true,
              labelText: context.l10n.codeFormat,
              controller: codeEditor,
              onChanged: (text) {
                if (text == null || text.isEmpty) {
                  codeEditor.text = codeFormat ?? '';
                  controller.selectedAssetTemplate.value?.codeFormat =
                      codeFormat;
                }
                controller.isSaveEnabled.value = true;
              },
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text('${context.l10n.syncTargets}:'),
                const SizedBox(width: 20),
                Row(
                  children: [
                    ValueListenableBuilder(
                      valueListenable: controller.isD365Sync,
                      builder: (context, value, child) {
                        return IconButton(
                          onPressed: () {
                            controller.isD365Sync.value = !value;
                            updateSyncTargets(
                              SyncTarget.d365,
                              enabled: controller.isD365Sync.value,
                            );
                          },
                          icon: FaIcon(
                            value
                                ? FontAwesomeIcons.circleCheck
                                : FontAwesomeIcons.circleXmark,
                            color: value ? Colors.green : Colors.red,
                          ),
                        );
                      },
                    ),
                    const SizedBox(width: 5),
                    Text(context.l10n.syncToD365),
                  ],
                ),
                const SizedBox(width: 50),
                Row(
                  children: [
                    ValueListenableBuilder(
                      valueListenable: controller.isTrade2Sync,
                      builder: (context, value, child) {
                        return IconButton(
                          onPressed: () {
                            controller.isTrade2Sync.value = !value;
                            updateSyncTargets(
                              SyncTarget.trade2,
                              enabled: controller.isTrade2Sync.value,
                            );
                          },
                          icon: FaIcon(
                            value
                                ? FontAwesomeIcons.circleCheck
                                : FontAwesomeIcons.circleXmark,
                            color: value ? Colors.green : Colors.red,
                          ),
                        );
                      },
                    ),
                    const SizedBox(width: 5),
                    Text(context.l10n.syncToTrade2),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            ValueListenableBuilder(
              valueListenable: controller.showType,
              builder: (context2, showType, child) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _filterTypeButtons(showType),
                    const SizedBox(height: 10),
                    if (showType == AssetTemplateShowType.attributes)
                      _addReorderableTemplateProperties(tempProps)
                    else if (showType == AssetTemplateShowType.counters)
                      _addTemplateCounters(tempCounters)
                    else if (showType == AssetTemplateShowType.others)
                      _otherPropertiesWidget(),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _saveTemplate() async {
    final result = await controller.updateAssetTemplate();
    if (result && context.mounted) {
      await showSuccessDialog();
    }
    controller.setSelectedTemplate(null);
  }

  Widget _otherPropertiesWidget() {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    EAMDropdownButtonFormField<bool>(
                      items: const [true, false],
                      controller: TextEditingController(),
                      labelText: context.l10n.permittedHours,
                      onChanged: (p0) {
                        setState(() {
                          controller
                                  .selectedAssetTemplate
                                  .value
                                  ?.permittedHours =
                              p0;
                          controller.isSaveEnabled.value = true;
                        });
                      },
                      value:
                          controller
                              .selectedAssetTemplate
                              .value
                              ?.permittedHours ??
                          false,
                    ),
                    const SizedBox(height: 20),
                    EAMDropdownButtonFormField<bool>(
                      items: const [true, false],
                      controller: TextEditingController(),
                      labelText: context.l10n.shiftHours,
                      onChanged: (p0) {
                        setState(() {
                          controller.selectedAssetTemplate.value?.shiftHours =
                              p0;
                          controller.isSaveEnabled.value = true;
                        });
                      },
                      value:
                          controller.selectedAssetTemplate.value?.shiftHours ??
                          false,
                    ),
                    const SizedBox(height: 20),
                    EAMDropdownButtonFormField<bool>(
                      items: const [true, false],
                      controller: TextEditingController(),
                      labelText: context.l10n.hierarchy,
                      onChanged: (p0) {
                        setState(() {
                          controller.selectedAssetTemplate.value?.hierarchy =
                              p0;
                          controller.isSaveEnabled.value = true;
                        });
                      },
                      value:
                          controller.selectedAssetTemplate.value?.hierarchy ??
                          false,
                    ),
                    const SizedBox(height: 20),
                    EAMDropdownButtonFormField<bool>(
                      items: const [true, false],
                      controller: TextEditingController(),
                      labelText: context.l10n.parentAssetRequired,
                      onChanged: (p0) {
                        setState(() {
                          controller
                                  .selectedAssetTemplate
                                  .value
                                  ?.parentAssetRequired =
                              p0;
                          controller.isSaveEnabled.value = true;
                        });
                      },
                      value:
                          controller
                              .selectedAssetTemplate
                              .value
                              ?.parentAssetRequired ??
                          false,
                    ),
                    const SizedBox(height: 20),
                    EAMDropdownButtonFormField<String>(
                      controller: TextEditingController(),
                      value: controller.selectedAssetTemplate.value!.category,
                      items: controller.assetTemplateCategories
                          .map((e) => e.value!)
                          .toList(),
                      onChanged: (p0) {
                        setState(() {
                          controller.selectedAssetTemplate.value?.category = p0;
                          controller.isSaveEnabled.value = true;
                        });
                      },
                      labelText: context.l10n.category,
                    ),
                    const SizedBox(height: 20),
                    EAMDropdownButtonFormField<bool>(
                      items: const [true, false],
                      controller: TextEditingController(),
                      labelText: context.l10n.location,
                      onChanged: (p0) {
                        setState(() {
                          controller.selectedAssetTemplate.value?.location = p0;
                          controller.isSaveEnabled.value = true;
                        });
                      },
                      value:
                          controller.selectedAssetTemplate.value?.location ??
                          false,
                    ),
                    const SizedBox(height: 20),
                    EAMDropdownButtonFormField<bool>(
                      items: const [true, false],
                      controller: TextEditingController(),
                      labelText: context.l10n.telematics,
                      onChanged: (p0) {
                        setState(() {
                          controller.selectedAssetTemplate.value?.telematics =
                              p0;
                          controller.isSaveEnabled.value = true;
                        });
                      },
                      value:
                          controller.selectedAssetTemplate.value?.telematics ??
                          false,
                    ),
                    const SizedBox(height: 20),
                    EAMDropdownButtonFormField<bool>(
                      items: const [true, false],
                      controller: TextEditingController(),
                      labelText: context.l10n.notifyChanges,
                      onChanged: (p0) {
                        setState(() {
                          controller
                                  .selectedAssetTemplate
                                  .value
                                  ?.notifyChanges =
                              p0;
                          controller.isSaveEnabled.value = true;
                        });
                      },
                      value:
                          controller
                              .selectedAssetTemplate
                              .value
                              ?.notifyChanges ??
                          false,
                    ),
                    const SizedBox(height: 20),
                    EAMDropdownButtonFormField<bool>(
                      items: const [true, false],
                      controller: TextEditingController(),
                      labelText: context.l10n.syncAssettoCMMS,
                      onChanged: (p0) {
                        setState(() {
                          controller
                                  .selectedAssetTemplate
                                  .value
                                  ?.syncAssetToCMMS =
                              p0;
                          controller.isSaveEnabled.value = true;
                        });
                      },
                      value:
                          controller
                              .selectedAssetTemplate
                              .value
                              ?.syncAssetToCMMS ??
                          false,
                    ),
                    const SizedBox(height: 20),
                    EAMDropdownButtonFormField<bool>(
                      items: const [true, false],
                      controller: TextEditingController(),
                      labelText: context.l10n.syncProjecttoCMMS,
                      onChanged: (p0) {
                        setState(() {
                          controller
                                  .selectedAssetTemplate
                                  .value
                                  ?.syncProjectToCMMS =
                              p0;
                          controller.isSaveEnabled.value = true;
                        });
                      },
                      value:
                          controller
                              .selectedAssetTemplate
                              .value
                              ?.syncProjectToCMMS ??
                          false,
                    ),
                    const SizedBox(height: 20),
                    EAMDropdownButtonFormField<bool>(
                      items: const [true, false],
                      controller: TextEditingController(),
                      labelText: context.l10n.syncresourcetoCMMS,
                      onChanged: (p0) {
                        setState(() {
                          controller
                                  .selectedAssetTemplate
                                  .value
                                  ?.syncResouceToCMMS =
                              p0;
                          controller.isSaveEnabled.value = true;
                        });
                      },
                      value:
                          controller
                              .selectedAssetTemplate
                              .value
                              ?.syncResouceToCMMS ??
                          false,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      '''
${context.l10n.reviewAttributes}: ${controller.selectedAssetTemplate.value?.reviewAttributes}''',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _filterTypeButtons(AssetTemplateShowType showType) {
    return Row(
      children: [
        InputChip(
          label: Text(
            context.l10n.attributes,
            style: TextStyle(
              color: showType == AssetTemplateShowType.attributes
                  ? Colors.white
                  : Colors.black,
            ),
          ),
          selectedColor: EamAppColors.success,
          selected: showType == AssetTemplateShowType.attributes,
          onSelected: (value) {
            controller.setShowType(AssetTemplateShowType.attributes);
          },
        ),
        const SizedBox(width: 20),
        InputChip(
          label: Text(
            context.l10n.counters,
            style: TextStyle(
              color: showType == AssetTemplateShowType.counters
                  ? Colors.white
                  : Colors.black,
            ),
          ),
          selectedColor: EamAppColors.success,
          selected: showType == AssetTemplateShowType.counters,
          onSelected: (value) {
            controller.setShowType(AssetTemplateShowType.counters);
          },
        ),
        const SizedBox(width: 20),
        InputChip(
          label: Text(
            context.l10n.others,
            style: TextStyle(
              color: showType == AssetTemplateShowType.others
                  ? Colors.white
                  : Colors.black,
            ),
          ),
          selectedColor: EamAppColors.success,
          selected: showType == AssetTemplateShowType.others,
          onSelected: (value) {
            controller.setShowType(AssetTemplateShowType.others);
          },
        ),
      ],
    );
  }

  void updateSyncTargets(String syncTarget, {bool enabled = false}) {
    if (enabled) {
      final exists = controller.selectedAssetTemplate.value?.syncTargets!
          .where((element) => element.name == syncTarget)
          .firstOrNull;
      if (exists == null) {
        controller.selectedAssetTemplate.value?.syncTargets!.add(
          AssetTemplateSyncTarget(name: syncTarget),
        );
      }
    } else {
      controller.selectedAssetTemplate.value?.syncTargets!.removeWhere(
        (element) => element.name == syncTarget,
      );
    }
    controller.isSaveEnabled.value = true;
  }

  Future<void> showSuccessDialog() async {
    await EmrDialog.ok(
      context,
      titleText: context.l10n.success,
      contentText: context.l10n.listUpdatedSuccessfully,
    );
  }

  Widget _addReorderableTemplateProperties(List<AssetTemplateProperty>? props) {
    if (props == null || props.isEmpty) {
      return Center(child: Text(context.l10n.noAttributes));
    }
    return ReorderableListView(
      shrinkWrap: true,
      buildDefaultDragHandles: false,
      scrollController: ScrollController(),
      padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
      children: props
          .map(
            (e) => Column(
              key: Key('${props.indexOf(e)}'),
              children: [
                ReorderableDragStartListener(
                  index: props.indexOf(e),
                  child: ListCardItemWidget(
                    widgetsForCardItem: [
                      FaIcon(
                        (e.viewerGroupIds ?? []).isNotEmpty
                            ? FontAwesomeIcons.lock
                            : FontAwesomeIcons.unlock,
                      ),
                      const SizedBox(width: 30),
                      Expanded(flex: 3, child: Text(e.name ?? '')),
                      Expanded(flex: 4, child: Text(e.dataType ?? '')),
                      Expanded(
                        flex: 2,
                        child: Text(
                          e.isMandatory ?? false
                              ? context.l10n.required
                              : context.l10n.notRequired,
                        ),
                      ),
                      Expanded(
                        child: ValueListenableBuilder(
                          valueListenable: controller.selectedProperty,
                          builder: (context, value, child) {
                            return IconButton(
                              icon:
                                  value != null &&
                                      controller.selectedProperty.value?.id ==
                                          e.id
                                  ? const Icon(Icons.arrow_forward)
                                  : controller.isPropertyModified(e)
                                  ? const Icon(Icons.credit_score_sharp)
                                  : const Icon(Icons.edit),
                              onPressed: () {
                                controller.setSelectedProperty(e);
                                controller.togglePropertyEditPanel(
                                  AssetTemplateShowType.attributes,
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          )
          .toList(),
      onReorder: (oldIndex, newIndex) {
        setState(() {
          final newItem = controller
              .selectedAssetTemplate
              .value
              ?.templateProperties!
              .removeAt(oldIndex);

          controller.selectedAssetTemplate.value?.templateProperties!.insert(
            (newIndex > oldIndex) ? newIndex - 1 : newIndex,
            newItem ?? AssetTemplateProperty(),
          );
          controller.isSaveEnabled.value = true;
        });
      },
    );
  }

  Widget _addTemplateCounters(List<AssetTemplateCounter>? counters) {
    if (counters == null || counters.isEmpty) {
      return Center(child: Text(context.l10n.noCounters));
    }
    return SizedBox(
      height: 300,
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
        children: counters
            .map(
              (e) => Column(
                key: Key('${counters.indexOf(e)}'),
                children: [
                  ListCardItemWidget(
                    widgetsForCardItem: [
                      Expanded(flex: 3, child: Text(e.key ?? '')),
                      Expanded(flex: 3, child: Text(e.name ?? '')),
                      Expanded(flex: 3, child: Text(e.dataType ?? '')),
                      Expanded(flex: 3, child: Text(e.incrementType ?? '')),
                      Expanded(flex: 2, child: Text(e.groupId ?? '')),
                      Expanded(
                        child: ValueListenableBuilder(
                          valueListenable: controller.selectedCounter,
                          builder: (context, value, child) {
                            return IconButton(
                              icon:
                                  value != null &&
                                      controller.selectedCounter.value?.id ==
                                          e.id
                                  ? const Icon(Icons.arrow_forward)
                                  : controller.isCounterModified(e)
                                  ? const Icon(Icons.credit_score_sharp)
                                  : const Icon(Icons.edit),
                              onPressed: () {
                                controller.setSelectedCounter(e);
                                controller.togglePropertyEditPanel(
                                  AssetTemplateShowType.counters,
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            )
            .toList(),
      ),
    );
  }

  dynamic getPropertyValue(String propertyName) {
    switch (propertyName) {
      case 'Category':
        return controller.selectedAssetTemplate.value?.category ?? '';
      case 'Hierarchy':
        return controller.selectedAssetTemplate.value?.hierarchy ?? false;
      case 'Location':
        return controller.selectedAssetTemplate.value?.location ?? false;
      case 'NotifyChanges':
        return controller.selectedAssetTemplate.value?.notifyChanges ?? false;
      case 'ParentAssetRequired':
        return controller.selectedAssetTemplate.value?.parentAssetRequired ??
            false;
      case 'PermittedHours':
        return controller.selectedAssetTemplate.value?.permittedHours ?? false;
      case 'ReviewAttributes':
        return controller.selectedAssetTemplate.value?.reviewAttributes ?? '';
      case 'ShiftHours':
        return controller.selectedAssetTemplate.value?.shiftHours ?? false;
      case 'SyncAssetToCMMS':
        return controller.selectedAssetTemplate.value?.syncAssetToCMMS ?? false;
      case 'SyncProjectToCMMS':
        return controller.selectedAssetTemplate.value?.syncProjectToCMMS ??
            false;
      case 'SyncResouceToCMMS':
        return controller.selectedAssetTemplate.value?.syncResouceToCMMS ??
            false;
      case 'Telematics':
        return controller.selectedAssetTemplate.value?.telematics ?? false;
    }
    return '';
  }

  @override
  void initState() {
    super.initState();
    controller.isBusy.value = false;
    controller.pageControlEvents.pageSize = 100;
    controller.search();
    controller.getAssetTemplateCategories();
  }

  @override
  void dispose() {
    controller.reset();
    super.dispose();
  }
}
