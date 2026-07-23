import 'dart:convert';

import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/favourite_filters/favourite_filter_model.dart';
import 'package:emr_one_core/widgets/favourite_filters/favourite_filter_parameters.dart';
import 'package:emr_one_core/widgets/favourite_filters/favourite_filter_provider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

/// This Widget can be used to save filter parameters When using standard
/// EmrGridController and EmrQueryLayoutController,
/// This widget can be used to save filters as 'Favourites' which can later be
/// retrieved with a single click. These favourite filters can be saved or
/// deleted via this widget that calls an endpoint in EmrUserAccess api.
/// FavouriteFilters widget can be added to QueryLayouts' actionsBuilder as a
/// menu anchor. It can also be added to menuChildrenBuilder.
///
///- module : name of package to save filters for each package if user
///accessing different apps within emrapps
///
///- filterController : It needs EmrFilterController to fetch applied filter so
///that it can be serialized and saved.and apply favourite filters when any of
///the favourites is clicked.
///
///- dataSouce: Optional EmrQueryDataSource is required so that when the filters
///are applied, the grid can be refreshed with correct data.
class FavouriteFilters extends StatefulWidget {
  const FavouriteFilters({
    required this.module,
    required this.filterController,
    this.dataSource,
    super.key,
  });

  final String module;
  final EmrFilterController filterController;
  final EmrQueryDataSource<dynamic>? dataSource;

  @override
  State<FavouriteFilters> createState() => _FavouriteFiltersState();
}

class _FavouriteFiltersState extends State<FavouriteFilters> {
  late FavouriteFilterProvider provider;

  ValueNotifier<List<FavouriteFilterParameters>> favourites = ValueNotifier([]);
  ValueNotifier<FavouriteFilterParameters?> favouriteSelected =
      ValueNotifier(null);

  late Future<List<FavouriteFilterParameters>?> _loadFilters;

  @override
  Widget build(BuildContext context) {
    final httpClient = Provider.of<BaseClient>(context, listen: false);
    provider = FavouriteFilterProvider(httpClient: httpClient);

    _loadFilters = provider.getFavouriteFilterParameters(module: widget.module);
    return Column(
      children: [
        ValueListenableBuilder(
          valueListenable: favouriteSelected,
          builder: (context, value, child) {
            return Visibility(
              child: ListTile(
                leading: Icon(
                  Icons.star,
                  color: value != null
                      ? EmrColours.secondaryYellow
                      : Colors.grey.shade400,
                ),
                title: Text(context.l10n.saveFilters),
                onTap: () async {
                  final editController = TextEditingController(
                    text: value?.filterName,
                  );
                  final result = await showDialog<String>(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text(context.l10n.saveas),
                        content: TextFormField(controller: editController),
                        actions: [
                          TextButton(
                            onPressed: () => context.pop(),
                            child: Text(context.l10n.cancel),
                          ),
                          FilledButton(
                            onPressed: () => context.pop(editController.text),
                            style: EmrButtonStyles.cta(),
                            child: Text(context.l10n.ok),
                          ),
                        ],
                      );
                    },
                  );

                  if (result?.isEmpty ?? true) return;

                  await _saveFavouriteFilterParameters(result!);
                },
              ),
            );
          },
        ),
        const Divider(),
        FutureBuilder<List<FavouriteFilterParameters>?>(
          future: _loadFilters,
          initialData: const [],
          builder: (
            BuildContext context,
            AsyncSnapshot<List<FavouriteFilterParameters>?> snapshot,
          ) {
            if (!snapshot.hasData) {
              return const CircularProgressIndicator.adaptive();
            }
            favourites.value = snapshot.data ?? [];

            return ValueListenableBuilder(
              valueListenable: favourites,
              builder: (context, value, child) {
                return Visibility(
                  visible: value.isNotEmpty,
                  child: SizedBox(
                    width: 200,
                    child: ExpansionTile(
                      collapsedBackgroundColor: Colors.transparent,
                      backgroundColor: Colors.transparent,
                      title: Text(context.l10n.favourites),
                      children: value
                          .map(
                            (e) => ListTile(
                              trailing: IconButton(
                                onPressed: () {
                                  _deleteFavouriteSearchParameter(
                                    e.filterName,
                                  );
                                },
                                icon: const Icon(Icons.clear),
                              ),
                              title: Text(e.filterName),
                              onTap: () {
                                _onFavouriteFilterParameterSelected(e);
                              },
                            ),
                          )
                          .toList(),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }

  Future<List<EmrFilterModel<dynamic>>?> _getEmrFilters(
    List<FavouriteFilterModel> savedFilters,
  ) async {
    final filters = <EmrFilterModel<dynamic>>[];
    final existingFilters = widget.filterController.filters.value;
    final newFilters = widget.filterController.newFilters();

    final allFilters = [...existingFilters, ...newFilters];

    for (final filter in savedFilters) {
      final emrFilter =
          allFilters.where((element) => element.key == filter.key).firstOrNull;

      if (emrFilter != null) {
        final castedValue = emrFilter.getValue(filter.value);

        final updated = emrFilter.copyWith(
          text: filter.text,
          value: castedValue,
        );
        filters.add(updated);
      }
    }
    return filters;
  }

  Future<void> _setSelectedFilter(FavouriteFilterParameters selected) async {
    final jsonFilters = json.decode(
      selected.filterParameters,
    );

    final favouriteFilters = (jsonFilters as List<dynamic>)
        .map((e) => FavouriteFilterModel.fromJson(e as Map<String, dynamic>))
        .toList();

    final filters = await _getEmrFilters(favouriteFilters);

    if (filters != null) {
      widget.filterController.filters.value = filters;
    }

    await widget.dataSource?.refresh();
  }

  Future<void> _saveFavouriteFilterParameters(String name) async {
    final filtersToStore = <FavouriteFilterModel>[];

    for (final filter in widget.filterController.filters.value) {
      filtersToStore.add(
        FavouriteFilterModel(
          key: filter.key,
          value: filter.value,
          text: filter.text,
        ),
      );
    }

    final jsonToStore = filtersToStore.map((e) => e.toJson()).toList();

    final jsonString = json.encode(
      jsonToStore,
    );

    final result = await provider.saveSearchParameter(
      name: name,
      searchParameters: jsonString,
      module: widget.module,
      existingName: name == favouriteSelected.value?.filterName ? name : null,
    );

    if (result != null) {
      favourites.value = [...favourites.value, result];
    }
  }

  Future<void> _onFavouriteFilterParameterSelected(
    FavouriteFilterParameters value,
  ) async {
    favouriteSelected.value = value;
    await _setSelectedFilter(value);
  }

  Future<void> _deleteFavouriteSearchParameter(String name) async {
    final isDeleted = await provider.deleteSearchParameter(
      filterName: name,
      moduleName: widget.module,
    );

    if (isDeleted) {
      favourites.value.removeWhere(
        (element) =>
            element.filterName == name && element.moduleName == widget.module,
      );

      favourites.value = [...favourites.value];
    }
  }
}
