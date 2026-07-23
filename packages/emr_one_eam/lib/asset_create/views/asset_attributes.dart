import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_eam/asset_create/controllers/asset_create_controller.dart';
import 'package:emr_one_eam/common/colors.dart';
import 'package:emr_one_eam/common/constants.dart';
import 'package:emr_one_eam/common/styles.dart';
import 'package:emr_one_eam/models/asset.dart';
import 'package:emr_one_eam/models/asset_template.dart';
import 'package:emr_one_eam/models/create_asset_input.dart';
import 'package:emr_one_eam/models/list_value.dart';
import 'package:emr_one_eam/models/selected_dates.dart';
import 'package:emr_one_eam/widgets/date_picker_dialog.dart';
import 'package:emr_one_eam/widgets/eam_textbox.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:uuid/uuid.dart';

class AssetAttributes extends StatefulWidget {
  const AssetAttributes({required this.controller, super.key});
  final IAssetCreateController controller;

  @override
  State<AssetAttributes> createState() => _AssetAttributesState();
}

class _AssetAttributesState extends State<AssetAttributes> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: widget.controller.assetToCreate,
      builder: (context, value, child) {
        return Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Visibility(
                        visible: isAttributesPresent(),
                        child: ValueListenableBuilder(
                          valueListenable:
                              widget.controller.selectedAttributeTab,
                          builder: (context, value, child) {
                            return InputChip(
                              showCheckmark: false,
                              selectedColor: EamAppColors.inProgress,
                              selected: value == AttributeTypes.assetProperty,
                              onPressed: () {
                                widget.controller.selectedAttributeTab.value =
                                    AttributeTypes.assetProperty;
                              },
                              label: Text(context.l10n.attribute),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Visibility(
                        visible: isCountersPresent(),
                        child: ValueListenableBuilder(
                          valueListenable:
                              widget.controller.selectedAttributeTab,
                          builder: (context, value, child) {
                            return InputChip(
                              showCheckmark: false,
                              selectedColor: EamAppColors.inProgress,
                              selected: value == AttributeTypes.counter,
                              onPressed: () {
                                widget.controller.selectedAttributeTab.value =
                                    AttributeTypes.counter;
                              },
                              label: Text(context.l10n.counters),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Visibility(
                        visible: isShiftHoursPresent(),
                        child: ValueListenableBuilder(
                          valueListenable:
                              widget.controller.selectedAttributeTab,
                          builder: (context, value, child) {
                            return InputChip(
                              showCheckmark: false,
                              selectedColor: EamAppColors.inProgress,
                              selected: value == AttributeTypes.shiftHour,
                              onPressed: () {
                                widget.controller.selectedAttributeTab.value =
                                    AttributeTypes.shiftHour;
                              },
                              label: Text(context.l10n.shiftHours),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Visibility(
                        visible: isPermittedHoursPresent(),
                        child: ValueListenableBuilder(
                          valueListenable:
                              widget.controller.selectedAttributeTab,
                          builder: (context, value, child) {
                            return InputChip(
                              showCheckmark: false,
                              selectedColor: EamAppColors.inProgress,
                              selected: value == AttributeTypes.permittedHour,
                              onPressed: () {
                                widget.controller.selectedAttributeTab.value =
                                    AttributeTypes.permittedHour;
                              },
                              label: Text(context.l10n.permittedHours),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                ValueListenableBuilder(
                  valueListenable: widget.controller.selectedAttributeTab,
                  builder: (context, value, child) {
                    if (value == AttributeTypes.assetProperty) {
                      return ValueListenableBuilder(
                        valueListenable: widget.controller.assetToCreate,
                        builder: (context, value, child) {
                          return ResponsiveGridRow(
                            children: [
                              if (widget.controller.newAsset &&
                                  widget.controller.selectedTemplate != null &&
                                  widget.controller.selectedTemplate!
                                          .templateProperties !=
                                      null) ...[
                                ...widget.controller.selectedTemplate!
                                    .templateProperties!
                                    .where(
                                      (element) =>
                                          element.name !=
                                              EamConstants.assetType &&
                                          element.name !=
                                              EamConstants.warrentyPeriod &&
                                          element.name !=
                                              EamConstants.warrentyStartDate,
                                    )
                                    .map(getTemplatePropertyWidget),
                              ] else if (value != null &&
                                  value.assetProperties != null) ...[
                                ...value.assetProperties!
                                    .where(
                                      (element) =>
                                          element.name !=
                                              EamConstants.assetType &&
                                          element.name !=
                                              EamConstants.warrentyPeriod &&
                                          element.name !=
                                              EamConstants.warrentyStartDate &&
                                          (element.userCanView ?? true),
                                    )
                                    .map(getPropertyWidget),
                              ] else
                                ...[],
                            ],
                          );
                        },
                      );
                    } else if (value == AttributeTypes.counter) {
                      return ValueListenableBuilder(
                        valueListenable: widget.controller.assetToCreate,
                        builder: (context, value, child) {
                          return Column(
                            children: [
                              if (value != null &&
                                  value.assetCounters != null) ...[
                                ...value.assetCounters!.map(getCounterWidget),
                              ] else
                                ...[],
                            ],
                          );
                        },
                      );
                    } else if (value == AttributeTypes.shiftHour) {
                      return getShiftHours();
                    } else if (value == AttributeTypes.permittedHour) {
                      return getPermittedHours();
                    }
                    return Container();
                  },
                ),
                const SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void initState() {
    widget.controller.selectedAttribute.value = null;
    super.initState();
  }

  Widget getShiftHours() {
    return Visibility(
      visible: widget.controller.assetToCreate.value != null &&
          widget.controller.assetToCreate.value!.shiftHours != null &&
          widget.controller.assetToCreate.value!.shiftHours!.isNotEmpty,
      child: Column(
        children: widget.controller.assetToCreate.value!.shiftHours!
            .map(getHourWidget)
            .toList(),
      ),
    );
  }

  Widget getHourWidget(HourResult hourData) {
    return ResponsiveGridRow(
      children: [
        ResponsiveGridCol(
          xs: 4,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              hourData.key ?? '-',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        ResponsiveGridCol(
          xs: 4,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              readOnly: widget.controller.isReadOnly,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: getTimeValidator,
              controller: TextEditingController(
                text: hourData.value.start,
              ),
              onChanged: (value) {
                hourData.value.start = value;
                widget.controller.assetToCreate.value?.shiftHours ??
                    List.empty(growable: true);
                widget.controller.assetToCreate.value?.shiftHours!
                    .removeWhere((element) => element.key == hourData.key);
                widget.controller.assetToCreate.value?.shiftHours!
                    .add(hourData);
              },
              decoration: FormStyles.textFieldDecoration(context).copyWith(
                isDense: true,
                contentPadding: const EdgeInsets.all(12),
                labelStyle: const TextStyle(color: Colors.grey),
                labelText: context.l10n.startTime,
                hintText: '00:00',
              ),
            ),
          ),
        ),
        ResponsiveGridCol(
          xs: 4,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              readOnly: widget.controller.isReadOnly,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: getTimeValidator,
              controller: TextEditingController(
                text: hourData.value.end,
              ),
              onChanged: (value) {
                hourData.value.end = value;
                widget.controller.assetToCreate.value?.shiftHours ??
                    List.empty(growable: true);
                widget.controller.assetToCreate.value?.shiftHours!
                    .removeWhere((element) => element.key == hourData.key);
                widget.controller.assetToCreate.value?.shiftHours!
                    .add(hourData);
              },
              decoration: FormStyles.textFieldDecoration(context).copyWith(
                isDense: true,
                contentPadding: const EdgeInsets.all(12),
                labelStyle: const TextStyle(color: Colors.grey),
                labelText: context.l10n.endTime,
                hintText: '00:00',
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget getPermittedHourWidget(HourResult hourData) {
    return ResponsiveGridRow(
      children: [
        ResponsiveGridCol(
          xs: 4,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              hourData.key ?? '-',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        ResponsiveGridCol(
          xs: 4,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              readOnly: widget.controller.isReadOnly,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: getTimeValidator,
              controller: TextEditingController(
                text: hourData.value.start,
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                hourData.value.start = value;
                widget.controller.assetToCreate.value?.permittedHours ??
                    List.empty(growable: true);
                widget.controller.assetToCreate.value?.permittedHours!
                    .removeWhere((element) => element.key == hourData.key);
                widget.controller.assetToCreate.value?.permittedHours!
                    .add(hourData);
              },
              decoration: FormStyles.textFieldDecoration(context).copyWith(
                isDense: true,
                contentPadding: const EdgeInsets.all(12),
                labelStyle: const TextStyle(color: Colors.grey),
                labelText: context.l10n.startTime,
                hintText: '00:00',
              ),
            ),
          ),
        ),
        ResponsiveGridCol(
          xs: 4,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              readOnly: widget.controller.isReadOnly,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: getTimeValidator,
              controller: TextEditingController(
                text: hourData.value.end,
              ),
              onChanged: (value) {
                hourData.value.end = value;
                widget.controller.assetToCreate.value?.permittedHours ??
                    List.empty(growable: true);
                widget.controller.assetToCreate.value?.permittedHours!
                    .removeWhere((element) => element.key == hourData.key);
                widget.controller.assetToCreate.value?.permittedHours!
                    .add(hourData);
              },
              decoration: FormStyles.textFieldDecoration(context).copyWith(
                isDense: true,
                contentPadding: const EdgeInsets.all(12),
                labelStyle: const TextStyle(color: Colors.grey),
                labelText: context.l10n.endTime,
                hintText: '00:00',
              ),
            ),
          ),
        ),
      ],
    );
  }

  String? getTimeValidator(String? value) {
    if (value != null && value.isNotEmpty) {
      final parts = value.split(':');
      if (parts.length == 1) {
        final onlyHour = int.tryParse(parts[0]);
        if (onlyHour == null || onlyHour < 0 || onlyHour > 23) {
          return 'Enter a valid time';
        }
      } else if (parts.length == 2) {
        final hour = int.tryParse(parts[0]);
        int? minute = 0;
        if (parts[1].isNotEmpty) {
          minute = int.tryParse(parts[1]);
        }
        if (hour == null ||
            hour < 0 ||
            hour > 23 ||
            minute == null ||
            minute < 0 ||
            minute > 59) {
          return context.l10n.validateTimeMessage;
        }
      } else {
        return context.l10n.validateTimeMessage;
      }
    }
    return null;
  }

  Widget getPermittedHours() {
    return Visibility(
      visible: widget.controller.assetToCreate.value != null &&
          widget.controller.assetToCreate.value!.permittedHours != null &&
          widget.controller.assetToCreate.value!.permittedHours!.isNotEmpty,
      child: Column(
        children: widget.controller.assetToCreate.value!.permittedHours!
            .map(getPermittedHourWidget)
            .toList(),
      ),
    );
  }

  bool isAttributesPresent() {
    return (!widget.controller.newAsset &&
            widget.controller.assetToCreate.value != null &&
            widget.controller.assetToCreate.value!.assetProperties != null &&
            widget.controller.assetToCreate.value!.assetProperties!.length >
                1) ||
        (widget.controller.newAsset &&
            widget.controller.selectedTemplate != null &&
            widget.controller.selectedTemplate!.templateProperties != null &&
            widget
                .controller.selectedTemplate!.templateProperties!.isNotEmpty &&
            widget.controller.selectedTemplate!.templateProperties!.length > 1);
  }

  bool isCountersPresent() {
    return widget.controller.assetToCreate.value != null &&
        widget.controller.assetToCreate.value!.assetCounters != null &&
        widget.controller.assetToCreate.value!.assetCounters!.isNotEmpty;
  }

  bool isShiftHoursPresent() {
    return (widget.controller.assetToCreate.value != null &&
            widget.controller.assetToCreate.value!.shiftHours != null &&
            widget.controller.assetToCreate.value!.shiftHours!.isNotEmpty) ||
        (widget.controller.selectedTemplate != null &&
            widget.controller.selectedTemplate!.shiftHours != null &&
            widget.controller.selectedTemplate!.shiftHours!);
  }

  bool isPermittedHoursPresent() {
    return (widget.controller.assetToCreate.value != null &&
            widget.controller.assetToCreate.value!.permittedHours != null &&
            widget
                .controller.assetToCreate.value!.permittedHours!.isNotEmpty) ||
        (widget.controller.selectedTemplate != null &&
            widget.controller.selectedTemplate!.permittedHours != null &&
            widget.controller.selectedTemplate!.permittedHours!);
  }

  Widget getCounterWidget(AssetCounter counter) {
    var timeStamp = '';
    if (counter.valueTimestamp != null) {
      final activeLocale = Localizations.localeOf(context);
      timeStamp = DateFormat.yMd(activeLocale.toString())
          .format(counter.valueTimestamp!.toLocal());
    }
    return ResponsiveGridRow(
      children: [
        ResponsiveGridCol(
          xs: 4,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              readOnly: widget.controller.isReadOnly,
              decoration: EamDecorations.getCommonTextBoxStyle(
                context,
                counter.name ?? context.l10n.counter,
              ),
              controller: TextEditingController(text: counter.value.toString()),
              onChanged: (text) {
                counter.value = double.tryParse(text);
                updateCounterValue(counter);
              },
            ),
          ),
        ),
        ResponsiveGridCol(
          xs: 4,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: TextEditingController(
                text: timeStamp,
              ),
              decoration: FormStyles.textFieldDecoration(context).copyWith(
                isDense: true,
                contentPadding: const EdgeInsets.all(12),
                labelStyle: const TextStyle(color: Colors.grey),
                labelText: context.l10n.recordedOn,
                hintText: context.l10n.recordedOn,
                suffixIcon: IconButton(
                  icon: const Icon(Icons.calendar_month_outlined),
                  onPressed: () async {
                    if (widget.controller.isReadOnly) return;
                    final currentFocus = FocusScope.of(context);
                    if (!currentFocus.hasPrimaryFocus &&
                        currentFocus.focusedChild != null) {
                      FocusManager.instance.primaryFocus?.unfocus();
                    }
                    await showDialog<SelectedDates>(
                      context: context,
                      builder: (context) => DatePickerWidget(
                        selectedDate: SelectedDates.date(date: DateTime.now()),
                        datePickerType: DatePickerType.date,
                      ),
                      barrierDismissible: false,
                    ).then((result) {
                      if (result is SelectedDates) {
                        setState(() {
                          counter.valueTimestamp = result.date!.toUtc();
                          updateCounterValue(counter);
                        });
                      }
                    });
                  },
                ),
              ),
              readOnly: true,
            ),
          ),
        ),
      ],
    );
  }

  ResponsiveGridCol getPropertyWidget(AssetProperty property) {
    return ResponsiveGridCol(
      xs: 4,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: getpropertyValueSelector(property),
      ),
    );
  }

  ResponsiveGridCol getTemplatePropertyWidget(AssetTemplateProperty property) {
    return ResponsiveGridCol(
      xs: 4,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: getTemplatepropertyValueSelector(property),
      ),
    );
  }

  Widget getpropertyValueSelector(AssetProperty property) {
    final propertyValueController = TextEditingController();
    propertyValueController.text = property.propertyValue ?? '';
    if (property.dataType == DataType.text ||
        property.dataType == DataType.numeric) {
      return getTextBox(property);
    }

    if (property.dataType == DataType.yesNo ||
        property.dataType == DataType.boolean) {
      return getSuggestionBox(property, isBool: true);
    }
    if (property.dataType == DataType.list ||
        property.dataType!.contains(DataType.list)) {
      return getSuggestionBox(property);
    }

    if (property.dataType == DataType.date ||
        property.dataType == DataType.dateTime) {
      return getDateTimeSelector(property);
    }

    return getTextBox(property);
  }

  void updateCounterValue(AssetCounter counter) {
    if (widget.controller.assetToCreate.value!.assetCounters == null) {
      widget.controller.assetToCreate.value!.assetCounters = [];
    }
    final propertyInAsset = widget
        .controller.assetToCreate.value!.assetCounters!
        .where((element) => element.name == counter.name)
        .firstOrNull;
    if (propertyInAsset == null) {
      //add it
      widget.controller.assetToCreate.value!.assetCounters!.add(counter);
    } else {
      widget.controller.assetToCreate.value!.assetCounters!
          .where((element) => element.name == counter.name)
          .first
          .valueTimestamp = counter.valueTimestamp;
      widget.controller.assetToCreate.value!.assetCounters!
          .where((element) => element.name == counter.name)
          .first
          .value = counter.value;
    }
    widget.controller.isValueChanged.value = true;
  }

  void updatePropertyValue(AssetProperty property) {
    if (widget.controller.assetToCreate.value!.assetProperties == null) {
      widget.controller.assetToCreate.value!.assetProperties = [];
    }
    final propertyInAsset = widget
        .controller.assetToCreate.value!.assetProperties!
        .where((element) => element.name == property.name)
        .firstOrNull;
    if (propertyInAsset == null) {
      //add it
      widget.controller.assetToCreate.value!.assetProperties!.add(property);
    } else {
      widget.controller.assetToCreate.value!.assetProperties!
          .where((element) => element.name == property.name)
          .first
          .propertyValue = property.propertyValue;
    }
    widget.controller.isValueChanged.value = true;
  }

  AssetProperty? getAssetProperty(String name) {
    if (widget.controller.assetToCreate.value == null ||
        widget.controller.assetToCreate.value!.assetProperties == null) {
      return null;
    }
    final propertyInAsset = widget
        .controller.assetToCreate.value!.assetProperties!
        .where((element) => element.name == name)
        .firstOrNull;
    if (propertyInAsset != null) {
      return propertyInAsset;
    }
    return null;
  }

  Widget getTemplatepropertyValueSelector(AssetTemplateProperty property) {
    final newProperty = AssetProperty(
      id: const Uuid().v4(),
      active: true,
      dataType: property.dataType,
      isMandatory: property.isMandatory,
      name: property.name,
      sequence: property.sequence,
      templatePropertyId: widget.controller.selectedTemplate?.id,
    );

    if (property.name != null || property.name!.isNotEmpty) {
      final assetProperty = getAssetProperty(property.name!);
      newProperty.propertyValue =
          assetProperty != null ? assetProperty.propertyValue ?? '' : '';
    }

    return getpropertyValueSelector(newProperty);
  }

  Widget getTextBox(AssetProperty property) {
    final propertyValueController = TextEditingController();
    propertyValueController.text = property.propertyValue ?? '';
    return EAMTextBox(
      autoValidateMode: AutovalidateMode.always,
      customValidator: (text) {
        if ((property.isMandatory ?? false) && (text == null || text.isEmpty)) {
          return '*${context.l10n.required}';
        }
        if (property.dataType == DataType.numeric) {
          final num = double.tryParse(text!);
          if (text.isNotEmpty && num == null) {
            return context.l10n.validateNumericMessage;
          }
        }
        return null;
      },
      keyboardType: property.dataType == DataType.numeric
          ? TextInputType.number
          : TextInputType.text,
      isReadOnly:
          widget.controller.isReadOnly || (property.userCanUpdate ?? false),
      labelText: property.name,
      hintText: property.name,
      controller: propertyValueController,
      onChanged: (text) {
        property.propertyValue = text;
        updatePropertyValue(property);
      },
    );
  }

  Widget getSuggestionBox(AssetProperty property, {bool isBool = false}) {
    final propertyValueController = TextEditingController(text: '');
    propertyValueController.text = getPropertyValue(property);

    if (isBool) {
      return TypeAheadFormField<String>(
        autoFlipDirection: true,
        validator: (text) {
          if ((property.isMandatory ?? false) &&
              (text == null || text.isEmpty)) {
            return '*${context.l10n.required}';
          }
          return null;
        },
        onSuggestionSelected: (suggestion) {
          propertyValueController.text = suggestion;

          if (suggestion == context.l10n.yes) {
            property.propertyValue = EamConstants.trueText;
          } else {
            property.propertyValue = EamConstants.falseText;
          }
          property.propertyValue = suggestion;
          updatePropertyValue(property);
        },
        itemBuilder: (context, itemData) => ListTile(
          title: Text(itemData),
        ),
        suggestionsCallback: (pattern) {
          if (widget.controller.isReadOnly ||
              !(property.userCanUpdate ?? true)) {
            return [];
          }
          return [context.l10n.yes, context.l10n.no];
        },
        textFieldConfiguration: TextFieldConfiguration(
          enableSuggestions: !widget.controller.isReadOnly,
          decoration:
              EamDecorations.getCommonTextBoxStyle(context, property.name),
          controller: propertyValueController,
          onChanged: (value) {
            if (widget.controller.isReadOnly) {
              propertyValueController.text = getPropertyValue(property);
            }
          },
        ),
      );
    }

    return TypeAheadFormField<ListValue>(
      autoFlipDirection: true,
      validator: (text) {
        if ((property.isMandatory ?? false) && (text == null || text.isEmpty)) {
          return '*${context.l10n.required}';
        }
        return null;
      },
      onSuggestionSelected: (suggestion) {
        propertyValueController.text =
            suggestion.value ?? suggestion.text ?? '';
        property.propertyValue = suggestion.value;
        updatePropertyValue(property);
      },
      itemBuilder: (context, itemData) => ListTile(
        title: Text(itemData.text ?? ''),
        subtitle: Text(itemData.value ?? ''),
      ),
      suggestionsCallback: (pattern) async {
        if (widget.controller.isReadOnly || !(property.userCanUpdate ?? true)) {
          return [];
        }
        final listValues =
            await widget.controller.getListValue(property.dataType!);
        if (listValues != null) {
          return listValues
              .where(
                (element) =>
                    (element.text != null &&
                        element.text!.toLowerCase().contains(pattern)) ||
                    (element.value != null &&
                        element.value!.toLowerCase().contains(pattern)),
              )
              .toList();
        }
        return [];
      },
      textFieldConfiguration: TextFieldConfiguration(
        enableSuggestions: !widget.controller.isReadOnly,
        decoration:
            EamDecorations.getCommonTextBoxStyle(context, property.name),
        controller: propertyValueController,
        onChanged: (value) {
          if (widget.controller.isReadOnly) {
            propertyValueController.text = getPropertyValue(property);
          }
        },
      ),
    );
  }

  String getPropertyValue(AssetProperty property) {
    if (property.dataType == DataType.yesNo ||
        property.dataType == DataType.boolean) {
      if (property.propertyValue != null &&
          property.propertyValue == EamConstants.trueText) {
        return context.l10n.yes;
      } else if (property.propertyValue != null &&
          property.propertyValue == EamConstants.falseText) {
        return context.l10n.no;
      }
    }
    return property.propertyValue ?? '';
  }

  Widget getDateTimeSelector(AssetProperty property) {
    final propertyValueController = TextEditingController(text: '');
    if (property.propertyValue != null && property.propertyValue!.isNotEmpty) {
      final parsedDate = DateTime.tryParse(property.propertyValue!);
      if (parsedDate != null) {
        final locale = Localizations.localeOf(context);
        propertyValueController.text =
            DateFormat.yMd(locale.toString()).format(parsedDate.toLocal());
      }
    }
    return TextFormField(
      validator: (text) {
        if ((property.isMandatory ?? false) && (text == null || text.isEmpty)) {
          return '*${context.l10n.required}';
        }
        return null;
      },
      controller: propertyValueController,
      decoration: FormStyles.textFieldDecoration(context).copyWith(
        isDense: true,
        contentPadding: const EdgeInsets.all(12),
        labelStyle: const TextStyle(color: Colors.grey),
        labelText: property.name,
        hintText: property.name,
        suffixIcon: IconButton(
          icon: const Icon(Icons.calendar_month_outlined),
          onPressed: () async {
            if (widget.controller.isReadOnly) {
              return;
            }
            if (!(property.userCanUpdate ?? true)) {
              return;
            }
            final currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus &&
                currentFocus.focusedChild != null) {
              FocusManager.instance.primaryFocus?.unfocus();
            }
            await showDialog<SelectedDates>(
              context: context,
              builder: (context) => DatePickerWidget(
                selectedDate: SelectedDates.date(date: DateTime.now()),
                datePickerType: DatePickerType.date,
              ),
              barrierDismissible: false,
            ).then((result) {
              if (result is SelectedDates) {
                // setState(() {
                if (mounted) {
                  final activeLocale = Localizations.localeOf(context);

                  property.propertyValue = result.date!.toIso8601String();
                  updatePropertyValue(property);
                  propertyValueController.text =
                      DateFormat.yMd(activeLocale.toString())
                          .format(result.date!);
                }
                // });
              }
            });
          },
        ),
      ),
      readOnly: true,
    );
  }
}
