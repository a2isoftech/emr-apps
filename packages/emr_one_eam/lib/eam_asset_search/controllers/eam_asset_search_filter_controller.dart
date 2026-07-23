import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_eam/common/constants.dart';
import 'package:emr_one_eam/eam_asset_search/controllers/eam_asset_search_data_controller.dart';
import 'package:emr_one_eam/eam_asset_search/models/favourite_search_parameters.dart';
import 'package:emr_one_eam/eam_asset_search/models/property_filter.dart';
import 'package:emr_one_eam/models/asset_template.dart';
import 'package:emr_one_eam/models/list_value.dart';
import 'package:emr_one_eam/models/selected_dates.dart';
import 'package:emr_one_eam/widgets/date_picker_dialog.dart';
import 'package:emr_one_eam/widgets/eam_dropdown.dart';
import 'package:emr_one_eam/widgets/type_ahead_search_generic.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EamAssetSearchFilterController extends EmrFilterController {
  EamAssetSearchFilterController({required this.dataController})
      : super(
          filterContentBuilder: (context, filter, controller) {
            switch (filter.key) {
              case kDepotNo:
                return EmrFilterAutoComplete<ListValue, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    return dataController.allDepos
                        .where(
                          (e) =>
                              (e.value ?? '')
                                  .toLowerCase()
                                  .contains(pattern.toLowerCase()) ||
                              (e.text ?? '').toLowerCase().contains(pattern),
                        )
                        .toList();
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (p0) => '${p0.text}(${p0.value})',
                  getValue: (p0) => p0.value ?? '',
                  multi: true,
                );
              case kAssetType:
                return EmrFilterAutoComplete<ListValue, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    return dataController.allAssetTypes
                        .where(
                          (e) => (e.text ?? '')
                              .toLowerCase()
                              .contains(pattern.toLowerCase()),
                        )
                        .toList();
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (p0) => '${p0.text}',
                  getValue: (p0) => p0.text ?? '',
                  multi: true,
                );
              case kStatus:
                return EmrFilterAutoComplete<ListValue, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    return dataController.allStatuses
                        .where(
                          (e) =>
                              e.text != null &&
                              e.text!.isNotEmpty &&
                              e.text!
                                  .toLowerCase()
                                  .contains(pattern.toLowerCase()),
                        )
                        .toList();
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (p0) => p0.text ?? '',
                  getValue: (p0) => p0.text ?? '',
                  multi: true,
                );
              case kAssetTemplate:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) => dataController.getSuggestion(
                    pattern,
                    EAMSearch.assetTemplates,
                  ),
                  close: Navigator.of(context).pop,
                  getTitle: (p0) => p0,
                  getValue: (p0) => p0,
                  multi: true,
                );
              case kTerritoryCode:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    return dataController.territoryCodes
                        .where(
                          (e) =>
                              e.toLowerCase().contains(pattern.toLowerCase()),
                        )
                        .toList();
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (p0) => p0,
                  getValue: (p0) => p0,
                  multi: true,
                );
              case kCategory:
                return EmrFilterAutoComplete<ListValue, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    return dataController.categories
                        .where(
                          (e) =>
                              (e.value ?? '')
                                  .toLowerCase()
                                  .contains(pattern.toLowerCase()) ||
                              (e.text ?? '').toLowerCase().contains(pattern),
                        )
                        .toList();
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (p0) => '${p0.value}',
                  getValue: (p0) => p0.value ?? p0.text ?? '',
                  multi: true,
                );
              case kMake:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) =>
                      dataController.getSuggestion(pattern, AssetSearch.make),
                  close: Navigator.of(context).pop,
                  getTitle: (p0) => p0,
                  getValue: (p0) => p0,
                  multi: true,
                );
              case kModel:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) =>
                      dataController.getSuggestion(pattern, AssetSearch.model),
                  close: Navigator.of(context).pop,
                  getTitle: (p0) => p0,
                  getValue: (p0) => p0,
                  multi: true,
                );
              case kSerialNumber:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) => dataController.getSuggestion(
                    pattern,
                    AssetSearch.serialNumber,
                  ),
                  close: Navigator.of(context).pop,
                  getTitle: (p0) => p0,
                  getValue: (p0) => p0,
                  multi: true,
                );
              case kCounters:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) => dataController.getSuggestion(
                    pattern,
                    AssetSearch.counter,
                  ),
                  close: Navigator.of(context).pop,
                  getTitle: (p0) => p0,
                  getValue: (p0) => p0,
                  multi: true,
                );
              case kShowAssets:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    return ['LIVE', 'ALL', 'DISPOSED'];
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (p0) => 'Show Assets: $p0',
                  getValue: (p0) => p0,
                );
              case kName:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    return dataController.getSuggestion(
                      pattern,
                      AssetSearch.friendlyName,
                    );
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (p0) => p0,
                  getValue: (p0) => p0,
                  multi: true,
                );
              case kAssetCode:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    return dataController.getSuggestion(
                      pattern,
                      AssetSearch.assetCode,
                    );
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (p0) => p0,
                  getValue: (p0) => p0,
                  multi: true,
                );
              case kPropertySearch:
                return Column(
                  key: Key(filter.key),
                  children: [
                    TypeAheadSearchGeneric<AssetTemplateProperty>(
                      controller: TextEditingController(),
                      label: 'Asset Template Properties',
                      suggestionsCallback:
                          dataController.getPropertyFilterSuggestion,
                      itemBuilder: (context, option) {
                        return ListTile(title: Text('${option.name}'));
                      },
                      onSuggestionSelected: (p0) {
                        dataController.selectedTemplateProperty = p0;
                        dataController.setOperators();
                        dataController.getPropertyValues();
                        dataController.selectedAssetProperty =
                            AssetPropertyFilter(
                          name: p0.name ?? '-',
                          dataType: p0.dataType,
                        );
                      },
                      valueSelector: (object) => object.name ?? '',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ValueListenableBuilder(
                      valueListenable: dataController.operators,
                      builder: (context, value, child) {
                        final operatorController = TextEditingController();
                        return EAMDropdownButtonFormField(
                          controller: operatorController,
                          hintText: 'Operator',
                          items: value!,
                          onChanged: (Object? value) {
                            if (value is String) {
                              if (dataController.selectedAssetProperty !=
                                  null) {
                                dataController
                                    .selectedAssetProperty!.comparision = value;
                              }
                            }
                          },
                          validationMessage: '-',
                          value: operatorController.text == ''
                              ? null
                              : operatorController.text,
                        );
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ValueListenableBuilder(
                      valueListenable: dataController.propertyValues,
                      builder: (context, value, child) {
                        final valueController = TextEditingController();
                        if (dataController.selectedTemplateProperty != null &&
                            dataController.selectedTemplateProperty!.dataType !=
                                null) {
                          if (dataController
                                      .selectedTemplateProperty!.dataType ==
                                  DataType.date ||
                              dataController
                                      .selectedTemplateProperty!.dataType ==
                                  DataType.dateTime) {
                            return TextFormField(
                              controller: valueController,
                              decoration: InputDecoration(
                                labelText: 'Date',
                                hintText: 'Date',
                                suffixIcon: IconButton(
                                  icon:
                                      const Icon(Icons.calendar_month_outlined),
                                  onPressed: () async {
                                    final currentFocus = FocusScope.of(context);
                                    if (!currentFocus.hasPrimaryFocus &&
                                        currentFocus.focusedChild != null) {
                                      FocusManager.instance.primaryFocus
                                          ?.unfocus();
                                    }
                                    await showDialog<SelectedDates>(
                                      context: context,
                                      builder: (context) => DatePickerWidget(
                                        selectedDate: SelectedDates.date(
                                          date: DateTime.now(),
                                        ),
                                        datePickerType: DatePickerType.date,
                                      ),
                                      barrierDismissible: false,
                                    ).then((result) {
                                      if (result is SelectedDates) {
                                        if (context.mounted) {
                                          final activeLocale =
                                              Localizations.localeOf(context);
                                          valueController.text = DateFormat.yMd(
                                            activeLocale.toString(),
                                          ).format(result.date!.toLocal());
                                          dataController.selectedAssetProperty!
                                              .value = valueController.text;
                                        }
                                      }
                                    });
                                  },
                                ),
                              ),
                              readOnly: true,
                            );
                          }
                        }
                        if (value == null || value.isEmpty) {
                          return TypeAheadSearchGeneric<String>(
                            controller: valueController,
                            onCleared: () {
                              dataController.selectedTemplateProperty = null;
                            },
                            suggestionsCallback: (searchText) async {
                              return [searchText];
                            },
                            itemBuilder: (context, option) {
                              return ListTile(title: Text(option));
                            },
                            valueSelector: (object) => object,
                            onSuggestionSelected: (text) {
                              if (dataController.selectedAssetProperty !=
                                  null) {
                                dataController.selectedAssetProperty!.value =
                                    text;
                              }
                            },
                            hint: 'Property Value',
                            label: 'Property Value',
                          );
                        } else {
                          return EAMDropdownButtonFormField(
                            key: UniqueKey(),
                            controller: valueController,
                            hintText: 'Value',
                            labelText: 'Value',
                            items: value,
                            onChanged: (Object? value) {
                              if (value is String) {
                                if (dataController.selectedAssetProperty !=
                                    null) {
                                  dataController.selectedAssetProperty!.value =
                                      value;
                                }
                              }
                            },
                            validationMessage: '-',
                            value: valueController.text == ''
                                ? null
                                : valueController.text,
                          );
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxHeight: 100),
                      child: Padding(
                        padding:
                            const EdgeInsets.symmetric(vertical: Insets.gutter),
                        child: SingleChildScrollView(
                          child: ValueListenableBuilder(
                            valueListenable: dataController.selectedFilters,
                            builder: (context, propFilters, child) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  for (final item in propFilters)
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            '''
${item.name} ${item.comparision} ${item.value}''',
                                            maxLines: 2,
                                            softWrap: true,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            dataController.selectedFilters.value
                                                .remove(item);
                                            dataController
                                                .selectedFilters.value = [
                                              ...dataController
                                                  .selectedFilters.value,
                                            ];
                                          },
                                          icon: const Icon(Icons.remove_circle),
                                        ),
                                      ],
                                    ),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (dataController.selectedAssetProperty == null &&
                            dataController.selectedFilters.value.isEmpty) {
                          controller.removeFilter(1);
                          Navigator.of(context).pop();
                          return;
                        }
                        if (dataController.selectedAssetProperty != null) {
                          dataController.addPropertyFilter(
                            dataController.selectedAssetProperty!,
                          );
                        }

                        final frVal = dataController.selectedFilters.value[0];
                        final frText =
                            '${frVal.name} ${frVal.comparision} ${frVal.value}';
                        final filterLength =
                            dataController.selectedFilters.value.length;
                        controller.addOrUpdateFilter(
                          filter: filter,
                          text: dataController.selectedFilters.value.length < 2
                              ? frText
                              : '$frText (+${filterLength - 1})',
                          value: dataController.selectedFilters.value,
                        );
                        dataController.selectedAssetProperty = null;
                        Navigator.of(context).pop();
                      },
                      child: const Text('Apply'),
                    ),
                  ],
                );
            }

            throw Exception(
              'filterContentBuilder should return a Widget for ${filter.key}',
            );
          },
          filters: [
            EmrFilterModel<String>(
              key: kShowAssets,
              name: 'Show Assets',
              enableDelete: false,
              value: 'LIVE',
            ),
          ],
          displayMode: EmrFilterDisplayMode.popover,
        );

  final EamAssetSearchDataController dataController;
  ValueNotifier<List<FavouriteSearchParameters>> favourites = ValueNotifier([]);
  ValueNotifier<FavouriteSearchParameters?> favourite = ValueNotifier(null);

  static const kDepotNo = 'DepotNo';
  static const kAssetCode = 'AssetCode';
  static const kAssetType = 'AssetType';
  static const kCategory = 'Category';
  static const kStatus = 'Status';
  static const kAssetTemplate = 'AssetTemplate';
  static const kTerritoryCode = 'Territory';
  static const kShowAssets = 'ShowAssets';
  static const kPropertySearch = 'PropertySearch';
  static const kMake = 'Make';
  static const kModel = 'Model';
  static const kSerialNumber = 'SerialNumber';
  static const kName = 'Name';
  static const kCounters = 'Counters';

  void fetchFilterValues() {
    dataController.getFilterValues();
  }

  Future<void> fetchFavouriteFiltes() async {
    final favouriteSearchs =
        await dataController.getFavouriteSearchParameters();
    favourites.value = [...favouriteSearchs];
  }

  Future<void> deleteSearchParameter(String name) async {
    await dataController.deleteSearchParameter(name);
  }

  Future<void> saveSearchParameter(String name, String parameters) async {
    await dataController.saveSearchParameter(
      name: name,
      searchParameters: parameters,
      existingName: name == favourite.value?.name ? name : null,
    );

    await fetchFavouriteFiltes();
    favourite.value = favourites.value.firstWhere((e) => e.name == name);
  }

  @override
  void removeFilter(int index) {
    final f = [...filters.value];
    final removingFilter = f[index];
    if (removingFilter.key == kPropertySearch) {
      dataController.selectedFilters.value = [];
    }

    super.removeFilter(index);
  }

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: kDepotNo))
        EmrFilterModel<List<String>>(key: kDepotNo, name: 'Depot No'),
      if (!containsFilter(key: kAssetType))
        EmrFilterModel<List<String>>(key: kAssetType, name: 'Asset Type'),
      if (!containsFilter(key: kCategory))
        EmrFilterModel<List<String>>(key: kCategory, name: 'Category'),
      if (!containsFilter(key: kStatus))
        EmrFilterModel<List<String>>(key: kStatus, name: 'Status'),
      if (!containsFilter(key: kMake))
        EmrFilterModel<List<String>>(key: kMake, name: 'Make'),
      if (!containsFilter(key: kModel))
        EmrFilterModel<List<String>>(key: kModel, name: 'Model'),
      if (!containsFilter(key: kSerialNumber))
        EmrFilterModel<List<String>>(key: kSerialNumber, name: 'SerialNumber'),
      if (!containsFilter(key: kCounters))
        EmrFilterModel<List<String>>(key: kCounters, name: 'Counters'),
      if (!containsFilter(key: kName))
        EmrFilterModel<List<String>>(key: kName, name: 'Name'),
      if (!containsFilter(key: kName))
        EmrFilterModel<List<String>>(
          key: kAssetCode,
          name: 'AssetCode',
        ),
      if (!containsFilter(key: kAssetTemplate))
        EmrFilterModel<List<String>>(
          key: kAssetTemplate,
          name: 'Template Name',
        ),
      if (!containsFilter(key: kShowAssets))
        EmrFilterModel<String>(key: kShowAssets, name: 'Show Assets'),
      if (!containsFilter(key: kPropertySearch))
        EmrFilterModel<List<AssetPropertyFilter?>>(
          key: kPropertySearch,
          name: 'Property Search',
        ),
      if (!containsFilter(key: kTerritoryCode))
        EmrFilterModel<List<String>>(
          key: kTerritoryCode,
          name: 'Territory Code',
        ),
    ];
  }
}
