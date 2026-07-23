import 'package:collection/collection.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// An abstract controller for use with [EmrFilter] which allows you to add,
/// remove, update and get filters.
/// Override [newFilters] and return a list of filters which can be added. If it
/// returns an empty array, the add filter button is disabled.
/// The [addFilterContentBuilder] method is used to return the Widget that is
/// shown when the user clicks the "add filter" button.
/// Similarly, [filterContentBuilder] will return the Widget that will be shown
/// when a user clicks a filter that has already been added.
abstract class EmrFilterController {
  EmrFilterController({
    required this.filterContentBuilder,
    List<EmrFilterModel<dynamic>>? filters,
    this.addFilterContentBuilder = _defaultAddFilterContentBuilder,
    this.displayMode = EmrFilterDisplayMode.auto,
  }) {
    if (filters != null) {
      this.filters.value.addAll(filters);
    }
  }

  /// A list of filters to show.
  final ValueNotifier<List<EmrFilterModel<dynamic>>> filters =
      ValueNotifier([]);

  /// A map of the filters as a key-value pair.
  Map<String, dynamic> get filtersAsMap {
    final map = <String, dynamic>{};

    for (final filter in filters.value) {
      map[filter.key] = filter.value;
    }

    return map;
  }

  // Each filter controller needs a GlobalKey to identify the Chip used to show
  // the add filter popover.
  final GlobalKey addFilterGlobalKey = GlobalKey();

  /// A builder which will return a [Widget] to show when the user is adding
  /// a filter.
  final Widget Function(
    BuildContext context,
    EmrFilter filter,
    EmrFilterController controller,
  ) addFilterContentBuilder;

  /// A builder which will return a [Widget] to show when the user is viewing
  /// an existing filter.
  final Widget Function(
    BuildContext context,
    EmrFilterModel<dynamic> filter,
    EmrFilterController controller,
  ) filterContentBuilder;

  final EmrFilterDisplayMode displayMode;

  EmrFilterDisplayMode get calculatedDisplayMode {
    final usePopover = displayMode == EmrFilterDisplayMode.popover ||
        (displayMode == EmrFilterDisplayMode.auto && kIsWeb);

    return usePopover
        ? EmrFilterDisplayMode.popover
        : EmrFilterDisplayMode.modal;
  }

  /// Add a filter to [filters] and notifies any listeners.
  // void addFilter(EmrFilterModel value) {
  //   filters.value = [
  //     ...filters.value,
  //     value,
  //   ];
  // }

  /// Remove a filter from [filters] and notifies any listeners.
  void removeFilter(int index) {
    final f = [...filters.value];

    f.removeAt(index);

    filters.value = f;
  }

  /// Adds a filter, or updates it if it's already in [filters].
  /// Then notifies any listeners.
  void addOrUpdateFilter<T>({
    required EmrFilterModel<T> filter,
    required String text,
    required T value,
  }) {
    var index = filters.value.indexOf(filter);

    // If the filter isn't yet in the filters list, add it directly, which won't
    // notify any listeners - that'll be done later when we set `filters.value`.
    if (index == -1) {
      filters.value.add(filter);
      index = filters.value.length - 1;
    }

    final f = [...filters.value];
    f[index] = f[index].copyWith(
      name: filter.name,
      text: text,
      value: value,
    );

    filters.value = f;
  }

  /// A list of EmrFilterModel to show in the "add filter" list.
  List<EmrFilterModel<dynamic>> newFilters() => [];

  /// Returns whether a filter with the specified key can be added.
  bool canAddFilter(String key) =>
      newFilters().any((element) => element.key == key);

  /// Try to get the first filter for a key from [filters].
  /// If a filter doesn't exist then [null] is returned.
  EmrFilterModel<T>? tryGetFilter<T>({
    required String key,
  }) =>
      filters.value.firstWhereOrNull((element) => element.key == key)
          as EmrFilterModel<T>?;

  /// Returns whether the [filters] contains a key with the specified string.
  bool containsFilter({
    required String key,
    bool withValue = false,
  }) =>
      filters.value.any(
        (element) =>
            element.key == key &&
            (withValue == false || (withValue && element.value != null)),
      );

  String? validator() => null;

  /// A default builder for adding a new filter. This will show an
  /// [EmrFilterPopoverWrapper] where the user can pick a filter type and
  /// then select the value from whichever widget is then shown.
  static Widget _defaultAddFilterContentBuilder(
    BuildContext context,
    EmrFilter filter,
    EmrFilterController controller,
  ) =>
      controller.calculatedDisplayMode == EmrFilterDisplayMode.popover
          ? EmrFilterPopoverWrapper(controller: controller)
          : EmrFilterModalWrapper(controller: controller);

  /// Update the list of [filters] with any values specified in the router state
  /// For example, navigating to a page with this URL (split over multiple lines
  /// to aid clarity):
  /// http://localhost/example-page
  ///   ?filters=publicationId,managedBuyer
  ///   &publicationId.value=296
  ///   &publicationId.text=UK%20West%20%28North%20West%20NFE%29%20-%20B
  ///   &managedBuyer.value=353edf41-7194-4dc1-97ff-889e1d94f3c0
  ///   &managedBuyer.text=ALAN
  /// would set the value and text of two filters, assuming the controller has
  /// these defined and allows them to be added.
  void parseFromRouterState(EoRouterState state, String key) {
    final filterNames = state.queryParams[key]?.split(',') ?? [];

    // Set default filter values.
    for (final filter in filters.value) {
      if (!filterNames.contains(filter.key)) {
        continue;
      }

      _mergeFilter(state, filter, filters.value);
    }

    // Add optional filters.
    for (final filterName in filterNames) {
      final filter =
          newFilters().firstWhereOrNull((element) => element.key == filterName);

      if (filter == null) continue;

      _mergeFilter(state, filter, filters.value);
    }
  }

  void _mergeFilter(
    EoRouterState state,
    EmrFilterModel<dynamic> filter,
    List<EmrFilterModel<dynamic>> filters,
  ) {
    // Get the filter text and value from the query parameters.
    final text = state.queryParams['${filter.key}.text'];
    dynamic value = state.queryParams['${filter.key}.value'];

    if (filter is EmrFilterModel<int>) {
      value = int.parse(value.toString());
    }

    final newFilter = filter.copyWith(text: text, value: value);

    // Replace the filter if it's already in the list, otherwise add it.
    final replaceIndex = filters.indexOf(filter);

    if (replaceIndex > -1) {
      filters[replaceIndex] = newFilter;
    } else {
      filters.add(newFilter);
    }
  }
}
