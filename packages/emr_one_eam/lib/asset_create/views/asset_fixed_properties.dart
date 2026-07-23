import 'package:collection/collection.dart';
import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_eam/asset_create/asset_create.dart';
import 'package:emr_one_eam/common/constants.dart';
import 'package:emr_one_eam/common/styles.dart';
import 'package:emr_one_eam/models/models.dart';
import 'package:emr_one_eam/screen_access.dart';
import 'package:emr_one_eam/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:uuid/uuid.dart';

class AssetFixedProperties extends StatefulWidget {
  const AssetFixedProperties({
    required this.controller,
    this.onBackPressed,
    this.onNextPressed,
    super.key,
  });

  final IAssetCreateController controller;
  final VoidCallback? onBackPressed;
  final VoidCallback? onNextPressed;

  @override
  State<AssetFixedProperties> createState() => _AssetFixedPropertiesState();
}

class _AssetFixedPropertiesState extends State<AssetFixedProperties> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: ResponsiveGridRow(
                children: [
                  if (!widget.controller.newAsset) ...[
                    ResponsiveGridCol(
                      xs: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: _assetCode(),
                      ),
                    ),
                    ResponsiveGridCol(
                      xs: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: _assetName(),
                      ),
                    ),
                  ],
                  ResponsiveGridCol(
                    xs: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: _category(),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: _assetTemplate(),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: _getDepot(),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: _approved(),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: _friendlyName(),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: _functionalLocation(),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: _assetType(),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: _make(),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: _model(),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: _serialNumber(),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: _codaAnalysisCode(),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: _dateOfAcquisition(),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: _farLeasedExpensed(),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: _yearOfManufacture(),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: _condition(),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: _status(),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: _warrentyStartDate(),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: _warrentyPeriod(),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: _statutary(),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: _dateOfstatutary(),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: _statutaryInterval(),
                    ),
                  ),
                ],
              ),
            ),
            ValueListenableBuilder(
              valueListenable: widget.controller.isTransferInProcess,
              builder: (BuildContext context, value, Widget? child) {
                return Visibility(
                  visible: value,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Wrap(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: _getTransfertToDepo(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: _transfertToDepoDate(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            context.l10n.eamTransferBeingApproved,
                            style:
                                const TextStyle(color: EmrColours.secondaryRed),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            ValueListenableBuilder(
              valueListenable: widget.controller.isDisposalInProcess,
              builder: (BuildContext context, value, Widget? child) {
                return Visibility(
                  visible: value,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Wrap(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: _disposalStatus(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: _disposalDate(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: _salesInvoiceNo(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            context.l10n.eamDisposalBeingApproved,
                            style:
                                const TextStyle(color: EmrColours.secondaryRed),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _assetCode() => TextFormField(
        initialValue: widget.controller.assetCode,
        decoration: FormStyles.textFieldDecoration(context).copyWith(
          isDense: true,
          contentPadding: const EdgeInsets.all(12),
          hintText: context.l10n.assetCode,
          labelText: context.l10n.assetCode,
          labelStyle: const TextStyle(color: Colors.grey),
        ),
        readOnly: true,
      );

  Widget _assetName() {
    final assetNameTextEditController = TextEditingController(text: '');
    assetNameTextEditController.text =
        widget.controller.assetToCreate.value!.displayName ?? '';
    return TextFormField(
      controller: assetNameTextEditController,
      decoration: FormStyles.textFieldDecoration(context).copyWith(
        isDense: true,
        contentPadding: const EdgeInsets.all(12),
        hintText: context.l10n.assetName,
        labelText: context.l10n.assetName,
        labelStyle: const TextStyle(color: Colors.grey),
      ),
      readOnly: !widget.controller.newAsset && widget.controller.isReadOnly,
    );
  }

  Widget _category() {
    final categoryTextEditController = TextEditingController(text: '');
    categoryTextEditController.text =
        widget.controller.assetToCreate.value!.category ??
            widget.controller.selectedTemplate?.category ??
            '';
    return TextFormField(
      controller: categoryTextEditController,
      decoration: FormStyles.textFieldDecoration(context).copyWith(
        isDense: true,
        contentPadding: const EdgeInsets.all(12),
        hintText: context.l10n.category,
        labelText: context.l10n.category,
        labelStyle: const TextStyle(color: Colors.grey),
      ),
      readOnly: true,
    );
  }

  Widget _assetTemplate() {
    final assetTemplateTextEditController = TextEditingController(text: '');
    if (widget.controller.newAsset) {
      assetTemplateTextEditController.text =
          widget.controller.selectedTemplate?.name ?? '';
    } else {
      assetTemplateTextEditController.text =
          widget.controller.assetToCreate.value!.assetTemplate ?? '';
    }
    return TextFormField(
      controller: assetTemplateTextEditController,
      decoration: FormStyles.textFieldDecoration(context).copyWith(
        isDense: true,
        contentPadding: const EdgeInsets.all(12),
        hintText: context.l10n.assetTemplate,
        labelText: context.l10n.assetTemplate,
        labelStyle: const TextStyle(color: Colors.grey),
      ),
      readOnly: true,
    );
  }

  Widget _approved() {
    final access = Provider.of<ScreenAccess>(context, listen: false);
    final approvedTextEditController =
        TextEditingController(text: context.l10n.no);
    approvedTextEditController.text =
        widget.controller.assetToCreate.value!.approved ?? false
            ? context.l10n.yes
            : context.l10n.no;
    if (widget.controller.newAsset || !access.isEAMFinanceAdmin(context)) {
      return TextFormField(
        controller: approvedTextEditController,
        decoration: FormStyles.textFieldDecoration(context).copyWith(
          isDense: true,
          contentPadding: const EdgeInsets.all(12),
          hintText: context.l10n.approved,
          labelText: context.l10n.approved,
          labelStyle: const TextStyle(color: Colors.grey),
        ),
        readOnly: true,
      );
    }
    return TypeAheadFormField<String>(
      onSuggestionSelected: (suggestion) {
        approvedTextEditController.text = suggestion;
        if (suggestion == context.l10n.yes) {
          widget.controller.assetToCreate.value!.approved = true;
        } else {
          widget.controller.assetToCreate.value!.approved = false;
        }
        widget.controller.isValueChanged.value = true;
      },
      itemBuilder: (context, itemData) => ListTile(
        title: Text(itemData),
      ),
      suggestionsCallback: (pattern) {
        return [context.l10n.yes, context.l10n.no];
      },
      textFieldConfiguration: TextFieldConfiguration(
        controller: approvedTextEditController,
        decoration: EamDecorations.getCommonTextBoxStyle(
          context,
          context.l10n.approved,
        ),
      ),
    );
  }

  Widget _getDepot() {
    final depotTextEditController = TextEditingController(text: '');
    depotTextEditController.text =
        widget.controller.assetToCreate.value!.depotNo ?? '';
    return ValueListenableBuilder(
      valueListenable: widget.controller.depots,
      builder: (context, depots, child) => TypeAheadFormField<ListValue>(
        autovalidateMode: AutovalidateMode.always,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return '*${context.l10n.required}';
          }
          return null;
        },
        onSuggestionSelected: (suggestion) {
          depotTextEditController.text = suggestion.value ?? '';
          widget.controller.assetToCreate.value?.depotNo = suggestion.value;
          widget.controller.depotSelected(suggestion.value!);
          widget.controller.isValueChanged.value = true;
        },
        itemBuilder: (context, itemData) => ListTile(
          title: Text(itemData.value ?? ''),
          subtitle: Text(itemData.text ?? ''),
        ),
        suggestionsCallback: (pattern) {
          if (!widget.controller.newAsset) {
            return [];
          }
          return depots.where(
            (e) =>
                e.text!.toLowerCase().contains(
                      pattern.toLowerCase(),
                    ) ||
                e.value!.toLowerCase().contains(pattern.toLowerCase()),
          );
        },
        textFieldConfiguration: TextFieldConfiguration(
          controller: depotTextEditController,
          decoration:
              EamDecorations.getCommonTextBoxStyle(context, context.l10n.depot),
          onChanged: (value) {
            if (!widget.controller.newAsset || widget.controller.isReadOnly) {
              depotTextEditController.text =
                  widget.controller.assetToCreate.value?.depotNo ?? '';
            }
          },
        ),
      ),
    );
  }

  Widget _friendlyName() {
    final friendlyNameTextEditController = TextEditingController(text: '');
    friendlyNameTextEditController.text =
        widget.controller.assetToCreate.value!.name ?? '';
    return TextFormField(
      controller: friendlyNameTextEditController,
      decoration: EamDecorations.getCommonTextBoxStyle(
        context,
        context.l10n.friendlyName,
      ),
      onChanged: (value) {
        widget.controller.assetToCreate.value!.name = value;
        widget.controller.isValueChanged.value = true;
      },
      readOnly: widget.controller.isReadOnly,
    );
  }

  Widget _statutary() {
    final siTextEditController = TextEditingController(text: context.l10n.no);
    siTextEditController.text =
        widget.controller.assetToCreate.value!.statutoryInspection ?? false
            ? context.l10n.yes
            : context.l10n.no;
    return TypeAheadFormField<String>(
      onSuggestionSelected: (suggestion) {
        siTextEditController.text = suggestion;
        if (suggestion == context.l10n.yes) {
          widget.controller.assetToCreate.value!.statutoryInspection = true;
        } else {
          widget.controller.assetToCreate.value!.statutoryInspection = false;
        }

        widget.controller.isStatutoryInspectionSetYes.value =
            widget.controller.assetToCreate.value!.statutoryInspection ?? false;
        widget.controller.isValueChanged.value = true;
      },
      itemBuilder: (context, itemData) => ListTile(
        title: Text(itemData),
      ),
      suggestionsCallback: (pattern) {
        if (widget.controller.isReadOnly) return [];
        return [context.l10n.yes, context.l10n.no];
      },
      textFieldConfiguration: TextFieldConfiguration(
        controller: siTextEditController,
        decoration: EamDecorations.getCommonTextBoxStyle(
          context,
          context.l10n.statutoryInspection,
        ),
        onChanged: (value) {
          if (widget.controller.isReadOnly) {
            siTextEditController.text =
                widget.controller.assetToCreate.value?.statutoryInspection ??
                        false
                    ? context.l10n.yes
                    : context.l10n.no;
          }
        },
      ),
    );
  }

  Widget _dateOfstatutary() => ValueListenableBuilder(
        valueListenable: widget.controller.isStatutoryInspectionSetYes,
        builder: (context, value, child) {
          final activeLocale = Localizations.localeOf(context);
          final siDateTextEditController = TextEditingController(text: '');
          if (widget.controller.assetToCreate.value!
                      .lastStatutoryInspectionDate !=
                  null &&
              widget.controller.assetToCreate.value!
                  .lastStatutoryInspectionDate!.isNotEmpty) {
            final parsedDate = DateTime.tryParse(
              widget
                  .controller.assetToCreate.value!.lastStatutoryInspectionDate!,
            );
            if (parsedDate != null) {
              siDateTextEditController.text =
                  DateFormat.yMd(activeLocale.toString())
                      .format(parsedDate.toLocal());
            }
          }
          return Visibility(
            visible: value,
            child: TextFormField(
              controller: siDateTextEditController,
              decoration: FormStyles.textFieldDecoration(context).copyWith(
                isDense: true,
                contentPadding: const EdgeInsets.all(12),
                labelStyle: const TextStyle(color: Colors.grey),
                labelText: context.l10n.lastDateStatutoryInspection,
                hintText: context.l10n.lastDateStatutoryInspection,
                suffixIcon: IconButton(
                  icon: const Icon(Icons.calendar_month_outlined),
                  onPressed: () async {
                    if (!widget.controller.isReadOnly) {
                      final currentFocus = FocusScope.of(context);
                      if (!currentFocus.hasPrimaryFocus &&
                          currentFocus.focusedChild != null) {
                        FocusManager.instance.primaryFocus?.unfocus();
                      }
                      await showDialog<SelectedDates>(
                        context: context,
                        builder: (context) => DatePickerWidget(
                          selectedDate:
                              SelectedDates.date(date: DateTime.now()),
                          datePickerType: DatePickerType.date,
                        ),
                        barrierDismissible: false,
                      ).then((result) {
                        if (result is SelectedDates) {
                          siDateTextEditController.text =
                              DateFormat.yMd(activeLocale.toString())
                                  .format(result.date!.toLocal());
                          widget.controller.assetToCreate.value!
                                  .lastStatutoryInspectionDate =
                              result.date!.toIso8601String();
                          widget.controller.isValueChanged.value = true;
                        }
                      });
                    }
                  },
                ),
              ),
              readOnly: true,
            ),
          );
        },
      );

  Widget _statutaryInterval() {
    final siIntervalTextEditController = TextEditingController(text: '');
    siIntervalTextEditController.text = widget.controller.assetToCreate.value!
            .statutoryInspectionIntervalMonths ??
        '';
    return ValueListenableBuilder(
      valueListenable: widget.controller.isStatutoryInspectionSetYes,
      builder: (context, value, child) {
        return Visibility(
          visible: value,
          child: TextFormField(
            readOnly: widget.controller.isReadOnly,
            keyboardType: TextInputType.number,
            controller: siIntervalTextEditController,
            decoration: EamDecorations.getCommonTextBoxStyle(
              context,
              context.l10n.statutoryInspectionIntervalMonths,
            ),
            onChanged: (value) {
              widget.controller.assetToCreate.value!
                  .statutoryInspectionIntervalMonths = value;
              widget.controller.isValueChanged.value = true;
            },
          ),
        );
      },
    );
  }

  Widget _functionalLocation() {
    final functionalLocationTextEditController =
        TextEditingController(text: '');
    functionalLocationTextEditController.text =
        widget.controller.assetToCreate.value!.functionalLocationCode ?? '';
    return ValueListenableBuilder(
      valueListenable: widget.controller.functionalLocations,
      builder: (context, functionalLocations, child) =>
          TypeAheadFormField<ListValue>(
        autovalidateMode: AutovalidateMode.always,
        validator: (value) {
          if (functionalLocations.isNotEmpty &&
              (value == null || value.isEmpty)) {
            return '*${context.l10n.required}';
          }
          return null;
        },
        onSuggestionSelected: (suggestion) {
          functionalLocationTextEditController.text = suggestion.value!;
          widget.controller.assetToCreate.value!.functionalLocationCode =
              suggestion.value;
          widget.controller.isValueChanged.value = true;
        },
        itemBuilder: (context, itemData) => ListTile(
          title: Text(itemData.value ?? ''),
          subtitle: Text(itemData.text ?? ''),
        ),
        suggestionsCallback: (pattern) {
          if (widget.controller.isReadOnly) {
            return [];
          }
          return functionalLocations.where(
            (e) =>
                e.text!.toLowerCase().contains(
                      pattern.toLowerCase(),
                    ) ||
                e.value!.toLowerCase().contains(pattern.toLowerCase()),
          );
        },
        textFieldConfiguration: TextFieldConfiguration(
          controller: functionalLocationTextEditController,
          decoration: EamDecorations.getCommonTextBoxStyle(
            context,
            context.l10n.functionalLocation,
          ),
          onChanged: (value) {
            if (widget.controller.isReadOnly) {
              functionalLocationTextEditController.text = widget
                      .controller.assetToCreate.value?.functionalLocationCode ??
                  '';
            }
          },
        ),
      ),
    );
  }

  Widget _warrentyStartDate() {
    final warrantyDateController = TextEditingController(text: '');
    final property = widget.controller.assetToCreate.value!.assetProperties
        ?.firstWhereOrNull((e) => e.name == EamConstants.warrentyStartDate);
    if (property != null &&
        property.propertyValue != null &&
        property.propertyValue!.isNotEmpty) {
      final parsedDate = DateTime.tryParse(property.propertyValue!);
      if (parsedDate != null) {
        final locale = Localizations.localeOf(context);
        warrantyDateController.text =
            DateFormat.yMd(locale.toString()).format(parsedDate.toLocal());
      }
    }
    return TextFormField(
      validator: (text) {
        if ((property?.isMandatory ?? false) &&
            (text == null || text.isEmpty)) {
          return '*${context.l10n.required}';
        }
        return null;
      },
      controller: warrantyDateController,
      decoration: FormStyles.textFieldDecoration(context).copyWith(
        isDense: true,
        contentPadding: const EdgeInsets.all(12),
        labelStyle: const TextStyle(color: Colors.grey),
        labelText: property?.name,
        hintText: property?.name,
        suffixIcon: IconButton(
          icon: const Icon(Icons.calendar_month_outlined),
          onPressed: () async {
            if (widget.controller.isReadOnly) {
              return;
            }
            if (!(property?.userCanUpdate ?? true)) {
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
                if (mounted) {
                  final activeLocale = Localizations.localeOf(context);
                  warrantyDateController.text =
                      DateFormat.yMd(activeLocale.toString())
                          .format(result.date!);
                  final property = widget
                      .controller.assetToCreate.value!.assetProperties
                      ?.firstWhereOrNull(
                    (e) => e.name == EamConstants.warrentyStartDate,
                  );
                  if (property != null) {
                    property.propertyValue = result.date!.toIso8601String();
                  } else {
                    if (widget.controller.selectedTemplate != null &&
                        widget.controller.selectedTemplate!
                                .templateProperties !=
                            null) {
                      final assetTypeProperty = widget
                          .controller.selectedTemplate!.templateProperties
                          ?.where(
                            (element) =>
                                element.name == EamConstants.warrentyStartDate,
                          )
                          .firstOrNull;

                      if (assetTypeProperty != null) {
                        final newProperty = AssetProperty(
                          id: const Uuid().v4(),
                          active: true,
                          dataType: assetTypeProperty.dataType,
                          isMandatory: assetTypeProperty.isMandatory,
                          name: assetTypeProperty.name,
                          sequence: assetTypeProperty.sequence,
                          templatePropertyId:
                              widget.controller.selectedTemplate?.id,
                          propertyValue: result.date!.toIso8601String(),
                        );
                        widget.controller.assetToCreate.value!
                                .assetProperties ??
                            List.empty(growable: true);
                        widget.controller.assetToCreate.value!.assetProperties
                            ?.add(newProperty);
                      }
                    }
                  }
                  widget.controller.isValueChanged.value = true;
                }
              }
            });
          },
        ),
      ),
      readOnly: true,
    );
  }

  Widget _warrentyPeriod() {
    final warrantyPeriodController = TextEditingController(text: '');
    final property = widget.controller.assetToCreate.value!.assetProperties
        ?.firstWhereOrNull((e) => e.name == EamConstants.warrentyPeriod);

    if (property != null) {
      warrantyPeriodController.text = property.propertyValue ?? '';
    }
    return ValueListenableBuilder(
      valueListenable: widget.controller.warrentyPeriod,
      builder: (context, assetTypes, child) => TypeAheadFormField<ListValue>(
        autovalidateMode: AutovalidateMode.always,
        onSuggestionSelected: (suggestion) {
          warrantyPeriodController.text = suggestion.value!;
          final property = widget
              .controller.assetToCreate.value!.assetProperties
              ?.firstWhereOrNull((e) => e.name == EamConstants.warrentyPeriod);
          if (property != null) {
            property.propertyValue = suggestion.value;
          } else {
            if (widget.controller.selectedTemplate != null &&
                widget.controller.selectedTemplate!.templateProperties !=
                    null) {
              final assetTypeProperty =
                  widget.controller.selectedTemplate!.templateProperties
                      ?.where(
                        (element) =>
                            element.name == EamConstants.warrentyPeriod,
                      )
                      .firstOrNull;

              if (assetTypeProperty != null) {
                final newProperty = AssetProperty(
                  id: const Uuid().v4(),
                  active: true,
                  dataType: assetTypeProperty.dataType,
                  isMandatory: assetTypeProperty.isMandatory,
                  name: assetTypeProperty.name,
                  sequence: assetTypeProperty.sequence,
                  templatePropertyId: widget.controller.selectedTemplate?.id,
                  propertyValue: suggestion.value,
                );
                widget.controller.assetToCreate.value!.assetProperties ??
                    List.empty(growable: true);
                widget.controller.assetToCreate.value!.assetProperties
                    ?.add(newProperty);
              }
            }
          }
          widget.controller.isValueChanged.value = true;
        },
        itemBuilder: (context, itemData) => ListTile(
          title: Text(itemData.text ?? ''),
          subtitle: Text(itemData.value ?? ''),
        ),
        suggestionsCallback: (pattern) {
          if (widget.controller.isReadOnly) {
            return [];
          }
          return widget.controller.warrentyPeriod.value.where(
            (e) =>
                e.text!.toLowerCase().contains(
                      pattern.toLowerCase(),
                    ) ||
                e.value!.toLowerCase().contains(pattern.toLowerCase()),
          );
        },
        textFieldConfiguration: TextFieldConfiguration(
          controller: warrantyPeriodController,
          decoration: EamDecorations.getCommonTextBoxStyle(
            context,
            property?.name,
          ),
          onChanged: (value) {
            if (widget.controller.isReadOnly) {
              warrantyPeriodController.text =
                  widget.controller.assetToCreate.value?.assetType ?? '';
            }
          },
        ),
      ),
    );
  }

  Widget _assetType() {
    final assetTypesTextEditController = TextEditingController(text: '');
    assetTypesTextEditController.text =
        widget.controller.assetToCreate.value!.assetType ?? '';
    final property = widget.controller.assetToCreate.value!.assetProperties
        ?.firstWhereOrNull((e) => e.name == EamConstants.assetType);
    if (property != null) {
      assetTypesTextEditController.text = property.propertyValue ?? '';
    }
    return ValueListenableBuilder(
      valueListenable: widget.controller.assetTypes,
      builder: (context, assetTypes, child) => TypeAheadFormField<ListValue>(
        autovalidateMode: AutovalidateMode.always,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return '*${context.l10n.required}';
          }
          return null;
        },
        onSuggestionSelected: (suggestion) {
          assetTypesTextEditController.text = suggestion.value!;
          final property = widget
              .controller.assetToCreate.value!.assetProperties
              ?.firstWhereOrNull((e) => e.name == EamConstants.assetType);
          if (property != null) {
            property.propertyValue = suggestion.value;
          } else {
            if (widget.controller.selectedTemplate != null &&
                widget.controller.selectedTemplate!.templateProperties !=
                    null) {
              final assetTypeProperty = widget
                  .controller.selectedTemplate!.templateProperties
                  ?.where((element) => element.name == EamConstants.assetType)
                  .firstOrNull;

              if (assetTypeProperty != null) {
                final newProperty = AssetProperty(
                  id: const Uuid().v4(),
                  active: true,
                  dataType: assetTypeProperty.dataType,
                  isMandatory: assetTypeProperty.isMandatory,
                  name: assetTypeProperty.name,
                  sequence: assetTypeProperty.sequence,
                  templatePropertyId: widget.controller.selectedTemplate?.id,
                  propertyValue: suggestion.value,
                );
                widget.controller.assetToCreate.value!.assetProperties ??
                    List.empty(growable: true);
                widget.controller.assetToCreate.value!.assetProperties
                    ?.add(newProperty);
              }
            }
          }
          widget.controller.isValueChanged.value = true;
        },
        itemBuilder: (context, itemData) => ListTile(
          title: Text(itemData.text ?? ''),
          subtitle: Text(itemData.value ?? ''),
        ),
        suggestionsCallback: (pattern) {
          if (widget.controller.isReadOnly) {
            return [];
          }
          return assetTypes.where(
            (e) =>
                e.text!.toLowerCase().contains(
                      pattern.toLowerCase(),
                    ) ||
                e.value!.toLowerCase().contains(pattern.toLowerCase()),
          );
        },
        textFieldConfiguration: TextFieldConfiguration(
          controller: assetTypesTextEditController,
          decoration: EamDecorations.getCommonTextBoxStyle(
            context,
            context.l10n.assetType,
          ),
          onChanged: (value) {
            if (widget.controller.isReadOnly) {
              assetTypesTextEditController.text =
                  widget.controller.assetToCreate.value?.assetType ?? '';
            }
          },
        ),
      ),
    );
  }

  Widget _make() {
    final makeTextEditController = TextEditingController(text: '');
    makeTextEditController.text =
        widget.controller.assetToCreate.value!.make ?? '';
    return TextFormField(
      autovalidateMode: AutovalidateMode.always,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '*${context.l10n.required}';
        }
        return null;
      },
      controller: makeTextEditController,
      decoration:
          EamDecorations.getCommonTextBoxStyle(context, context.l10n.make),
      onChanged: (value) {
        widget.controller.assetToCreate.value!.make = value;
        widget.controller.isValueChanged.value = true;
      },
      readOnly: widget.controller.isReadOnly,
    );
  }

  Widget _model() {
    final modelTextEditController = TextEditingController(text: '');
    modelTextEditController.text =
        widget.controller.assetToCreate.value!.model ?? '';
    return TextFormField(
      autovalidateMode: AutovalidateMode.always,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '*${context.l10n.required}';
        }
        return null;
      },
      controller: modelTextEditController,
      decoration:
          EamDecorations.getCommonTextBoxStyle(context, context.l10n.model),
      onChanged: (value) {
        widget.controller.assetToCreate.value!.model = value;
        widget.controller.isValueChanged.value = true;
      },
      readOnly: widget.controller.isReadOnly,
    );
  }

  Widget _serialNumber() {
    final serialNoTextEditController = TextEditingController(text: '');
    serialNoTextEditController.text =
        widget.controller.assetToCreate.value!.serialNumber ?? '';
    return TextFormField(
      controller: serialNoTextEditController,
      decoration: EamDecorations.getCommonTextBoxStyle(
        context,
        context.l10n.serialNumber,
      ),
      onChanged: (value) {
        widget.controller.assetToCreate.value!.serialNumber = value;
        widget.controller.isValueChanged.value = true;
      },
      readOnly: widget.controller.isReadOnly,
    );
  }

  Widget _codaAnalysisCode() {
    final codaAnalysisCodeTextEditController = TextEditingController(text: '');
    codaAnalysisCodeTextEditController.text =
        widget.controller.assetToCreate.value!.codaAnalysisCode ?? '';
    return TextFormField(
      controller: codaAnalysisCodeTextEditController,
      decoration: EamDecorations.getCommonTextBoxStyle(
        context,
        context.l10n.codaAnalysisCode,
      ),
      onChanged: (value) {
        widget.controller.assetToCreate.value!.codaAnalysisCode = value;
        widget.controller.isValueChanged.value = true;
      },
      readOnly: widget.controller.isReadOnly,
    );
  }

  Widget _dateOfAcquisition() {
    final dateofAcquisitionTextEditController = TextEditingController(text: '');
    final locale = Localizations.localeOf(context);
    dateofAcquisitionTextEditController.text =
        widget.controller.assetToCreate.value!.dateOfAcquisition != null
            ? DateFormat.yMd(locale.toString()).format(
                widget.controller.assetToCreate.value!.dateOfAcquisition!
                    .toLocal(),
              )
            : '';
    return TextFormField(
      autovalidateMode: AutovalidateMode.always,
      validator: (value) {
        if ((value == null || value.isEmpty) && widget.controller.newAsset) {
          return '*${context.l10n.required}';
        }
        return null;
      },
      controller: dateofAcquisitionTextEditController,
      decoration: FormStyles.textFieldDecoration(context).copyWith(
        isDense: true,
        contentPadding: const EdgeInsets.all(12),
        labelStyle: const TextStyle(color: Colors.grey),
        labelText: context.l10n.dateOfAquisition,
        hintText: context.l10n.dateOfAquisition,
        suffixIcon: IconButton(
          icon: const Icon(Icons.calendar_month_outlined),
          onPressed: () async {
            if (!widget.controller.isReadOnly) {
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
                  widget.controller.assetToCreate.value!.dateOfAcquisition =
                      result.date!.toUtc();
                  dateofAcquisitionTextEditController.text =
                      DateFormat.yMd(locale.toString()).format(
                    widget.controller.assetToCreate.value!.dateOfAcquisition!
                        .toLocal(),
                  );
                  widget.controller.isValueChanged.value = true;
                }
              });
            }
          },
        ),
      ),
      readOnly: true,
    );
  }

  Widget _farLeasedExpensed() {
    final farLeasedExpensedTextEditController = TextEditingController(text: '');
    farLeasedExpensedTextEditController.text =
        widget.controller.assetToCreate.value!.farLeasedExpensed ?? '';
    return ValueListenableBuilder(
      valueListenable: widget.controller.farLeasedExpenses,
      builder: (context, farLeasedExpenses, child) =>
          TypeAheadFormField<ListValue>(
        autovalidateMode: AutovalidateMode.always,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return '*${context.l10n.required}';
          }
          return null;
        },
        onSuggestionSelected: (suggestion) {
          farLeasedExpensedTextEditController.text = suggestion.text!;
          widget.controller.assetToCreate.value!.farLeasedExpensed =
              suggestion.value;
          widget.controller.isValueChanged.value = true;
        },
        itemBuilder: (context, itemData) => ListTile(
          title: Text(itemData.text ?? ''),
        ),
        suggestionsCallback: (pattern) {
          if (widget.controller.isReadOnly) {
            return [];
          }
          return farLeasedExpenses.where(
            (e) =>
                e.text!.toLowerCase().contains(
                      pattern.toLowerCase(),
                    ) ||
                e.value!.toLowerCase().contains(pattern.toLowerCase()),
          );
        },
        textFieldConfiguration: TextFieldConfiguration(
          controller: farLeasedExpensedTextEditController,
          decoration: EamDecorations.getCommonTextBoxStyle(
            context,
            context.l10n.farLeaseExpensed,
          ),
          onChanged: (value) {
            if (widget.controller.isReadOnly) {
              farLeasedExpensedTextEditController.text =
                  widget.controller.assetToCreate.value?.farLeasedExpensed ??
                      '';
            }
          },
        ),
      ),
    );
  }

  Widget _yearOfManufacture() {
    final yearOfManufactureTextEditController = TextEditingController(text: '');
    yearOfManufactureTextEditController.text =
        widget.controller.assetToCreate.value!.yearOfManufacture?.toString() ??
            '';
    return ValueListenableBuilder(
      valueListenable: widget.controller.years,
      builder: (context, years, child) => TypeAheadFormField<ListValue>(
        onSuggestionSelected: (suggestion) {
          yearOfManufactureTextEditController.text = suggestion.text!;
          if (suggestion.value != null || suggestion.value!.isNotEmpty) {
            widget.controller.assetToCreate.value!.yearOfManufacture =
                int.parse(suggestion.value!);
          }
          widget.controller.isValueChanged.value = true;
        },
        itemBuilder: (context, itemData) => ListTile(
          title: Text(itemData.text ?? ''),
        ),
        suggestionsCallback: (pattern) {
          if (widget.controller.isReadOnly) {
            return [];
          }
          return years.where(
            (e) =>
                e.text!.toLowerCase().contains(
                      pattern.toLowerCase(),
                    ) ||
                e.value!.toLowerCase().contains(pattern.toLowerCase()),
          );
        },
        textFieldConfiguration: TextFieldConfiguration(
          controller: yearOfManufactureTextEditController,
          decoration: EamDecorations.getCommonTextBoxStyle(
            context,
            context.l10n.yearOfManufacture,
          ),
          onChanged: (value) {
            if (widget.controller.isReadOnly) {
              yearOfManufactureTextEditController.text = widget
                      .controller.assetToCreate.value?.yearOfManufacture
                      ?.toString() ??
                  '';
            }
          },
        ),
      ),
    );
  }

  Widget _condition() {
    final conditionTextEditController = TextEditingController(text: '');
    conditionTextEditController.text =
        widget.controller.assetToCreate.value!.condition ?? '';
    return ValueListenableBuilder(
      valueListenable: widget.controller.conditions,
      builder: (context, conditions, child) => TypeAheadFormField<ListValue>(
        autovalidateMode: AutovalidateMode.always,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return '*${context.l10n.required}';
          }
          return null;
        },
        onSuggestionSelected: (suggestion) {
          conditionTextEditController.text = suggestion.text!;
          widget.controller.assetToCreate.value!.condition = suggestion.value;
          widget.controller.isValueChanged.value = true;
        },
        itemBuilder: (context, itemData) => ListTile(
          title: Text(itemData.text ?? ''),
        ),
        suggestionsCallback: (pattern) {
          if (widget.controller.isReadOnly) {
            return [];
          }
          return conditions.where(
            (e) =>
                e.text!.toLowerCase().contains(
                      pattern.toLowerCase(),
                    ) ||
                e.value!.toLowerCase().contains(pattern.toLowerCase()),
          );
        },
        textFieldConfiguration: TextFieldConfiguration(
          controller: conditionTextEditController,
          decoration: EamDecorations.getCommonTextBoxStyle(
            context,
            context.l10n.condition,
          ),
          onChanged: (value) {
            if (widget.controller.isReadOnly) {
              conditionTextEditController.text =
                  widget.controller.assetToCreate.value?.condition ?? '';
            }
          },
        ),
      ),
    );
  }

  Widget _status() {
    final statusTextEditController = TextEditingController(text: '');
    statusTextEditController.text =
        widget.controller.assetToCreate.value!.status ?? '';
    return ValueListenableBuilder(
      valueListenable: widget.controller.statuses,
      builder: (context, statuses, child) => TypeAheadFormField<ListValue>(
        autovalidateMode: AutovalidateMode.always,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return '*${context.l10n.required}';
          }
          return null;
        },
        onSuggestionSelected: (suggestion) {
          statusTextEditController.text = suggestion.text!;
          widget.controller.assetToCreate.value!.status = suggestion.value;
          widget.controller.isValueChanged.value = true;
        },
        itemBuilder: (context, itemData) => ListTile(
          title: Text(itemData.text ?? ''),
        ),
        suggestionsCallback: (pattern) {
          if (widget.controller.isReadOnly) {
            return [];
          }
          return statuses.where(
            (e) =>
                (e.text!.isNotEmpty &&
                    e.text!.toLowerCase().contains(
                          pattern.toLowerCase(),
                        )) ||
                (e.value!.isNotEmpty &&
                    e.value!.toLowerCase().contains(pattern.toLowerCase())),
          );
        },
        textFieldConfiguration: TextFieldConfiguration(
          controller: statusTextEditController,
          decoration: EamDecorations.getCommonTextBoxStyle(
            context,
            context.l10n.status,
          ),
          onChanged: (value) {
            if (widget.controller.isReadOnly) {
              statusTextEditController.text =
                  widget.controller.assetToCreate.value?.status ?? '';
            }
          },
        ),
      ),
    );
  }

  Widget _getTransfertToDepo() => ValueListenableBuilder(
        valueListenable: widget.controller.isTransferInProcess,
        builder: (context, value, child) {
          final transfertToDepoTextEditController =
              TextEditingController(text: '');
          transfertToDepoTextEditController.text =
              widget.controller.assetToCreate.value!.transferToDepotNo ?? '';
          return Visibility(
            visible: value,
            child: TextFormField(
              controller: transfertToDepoTextEditController,
              decoration: EamDecorations.getCommonTextBoxStyle(
                context,
                context.l10n.transferToDepot,
              ),
              onChanged: (value) => {},
              readOnly: true,
            ),
          );
        },
      );

  Widget _transfertToDepoDate() => ValueListenableBuilder(
        valueListenable: widget.controller.isTransferInProcess,
        builder: (context, value, child) {
          final locale = Localizations.localeOf(context);
          final transfertEffectiveFromTextEditController =
              TextEditingController(text: '');
          transfertEffectiveFromTextEditController.text = widget.controller
                      .assetToCreate.value!.transferToDepotNoEffectiveFrom !=
                  null
              ? DateFormat.yMd(locale.toString()).format(
                  widget.controller.assetToCreate.value!
                      .transferToDepotNoEffectiveFrom!
                      .toLocal(),
                )
              : '';
          return Visibility(
            visible: value,
            child: TextFormField(
              controller: transfertEffectiveFromTextEditController,
              decoration: EamDecorations.getCommonTextBoxStyle(
                context,
                context.l10n.effectiveFrom,
              ),
              onChanged: (value) => {},
              readOnly: true,
            ),
          );
        },
      );
  Widget _disposalDate() => ValueListenableBuilder(
        valueListenable: widget.controller.isDisposalInProcess,
        builder: (context, value, child) {
          final locale = Localizations.localeOf(context);
          final disposalEffectiveFromTextEditController =
              TextEditingController(text: '');
          disposalEffectiveFromTextEditController.text = widget
                      .controller.assetToCreate.value!.disposalEffectiveFrom !=
                  null
              ? DateFormat.yMd(locale.toString()).format(
                  widget.controller.assetToCreate.value!.disposalEffectiveFrom!
                      .toLocal(),
                )
              : '';
          return Visibility(
            visible: value,
            child: TextFormField(
              controller: disposalEffectiveFromTextEditController,
              decoration: EamDecorations.getCommonTextBoxStyle(
                context,
                context.l10n.effectiveFrom,
              ),
              onChanged: (value) => {},
              readOnly: true,
            ),
          );
        },
      );
  Widget _disposalStatus() => ValueListenableBuilder(
        valueListenable: widget.controller.isDisposalInProcess,
        builder: (context, value, child) {
          final disposalStatusTextEditController =
              TextEditingController(text: '');
          disposalStatusTextEditController.text =
              widget.controller.assetToCreate.value!.disposalStatus ?? '';
          return Visibility(
            visible: value,
            child: TextFormField(
              controller: disposalStatusTextEditController,
              decoration: EamDecorations.getCommonTextBoxStyle(
                context,
                context.l10n.disposalStatus,
              ),
              onChanged: (value) => {},
              readOnly: true,
            ),
          );
        },
      );

  Widget _salesInvoiceNo() => ValueListenableBuilder(
        valueListenable: widget.controller.isDisposalInProcess,
        builder: (context, value, child) {
          final salesInvoiceController = TextEditingController(text: '');
          salesInvoiceController.text =
              widget.controller.assetToCreate.value!.salesInvoiceNo ?? '';
          return Visibility(
            visible: value,
            child: TextFormField(
              controller: salesInvoiceController,
              decoration: EamDecorations.getCommonTextBoxStyle(
                context,
                context.l10n.salesInvoiceNumber,
              ),
              onChanged: (value) => {},
              readOnly: true,
            ),
          );
        },
      );
}
