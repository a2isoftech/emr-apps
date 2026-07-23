import 'package:collection/collection.dart';
import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/data/emr_facet_result_value.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class EmrQueryLayoutDefaultFacetsPanel<T> extends StatelessWidget {
  const EmrQueryLayoutDefaultFacetsPanel({required this.controller, super.key});

  final EmrQueryLayoutController<T> controller;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: EmrOneConstants.kDefaultFacetsPanelWidth,
        child: ValueListenableBuilder(
          valueListenable: controller.dataSource.facets,
          builder: (context, value, child) {
            return value.isEmpty
                ? Center(
                    child: Text(context.l10n.noRecordsMessage),
                  )
                : SingleChildScrollView(
                    /// This padding represents the gap between the left and
                    /// right edge of the facet list as per the XD designs
                    padding: const EdgeInsets.symmetric(
                      horizontal: Insets.gutter * 2,
                      vertical: Insets.gutter,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              for (final facet in value.entries) ...[
                                _buildFacetTitle(facet, context),
                                for (final value in facet.value.values)
                                  _buildFacetSection(context, facet, value),
                                if (facet.key != value.entries.last.key)
                                  const Padding(
                                    padding: EdgeInsets.only(
                                      top: Insets.gutter,
                                    ),
                                    child: Divider(),
                                  ),
                              ],
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
          },
        ),
      );

  Widget _buildFacetTitle(
    MapEntry<String, EmrFacetResult> facet,
    BuildContext context,
  ) {
    return ColoredBox(
      color: Colors.transparent,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: Insets.gutter,
            ),
            child: Text(
              facet.value.name.toUpperCase(),
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFacetSection(
    BuildContext context,
    MapEntry<String, EmrFacetResult> facet,
    EmrFacetResultValue value,
  ) {
    return ColoredBox(
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            /// This flex provides a width bias
            /// for the facet name
            flex: 2,
            child: TextButton(
              style: ButtonStyle(
                alignment: Alignment.centerLeft,
                padding: WidgetStateProperty.all(
                  EdgeInsets.zero,
                ),
                textStyle: WidgetStateProperty.all(
                  Theme.of(context).textTheme.bodyMedium,
                ),
                foregroundColor: WidgetStateProperty.all(
                  // Use the default colour when the
                  // filter isn't or can't be added.
                  (controller.filterController?.canAddFilter(
                                facet.key,
                              ) ??
                              false) ||
                          (controller.filterController?.containsFilter(
                                key: facet.key,
                              ) ??
                              false)
                      ? EmrColours.secondaryCyan
                      : Theme.of(context).colorScheme.onSurface,
                ),
                overlayColor: WidgetStateProperty.all(
                  Colors.transparent,
                ),
                minimumSize: WidgetStateProperty.all(
                  const Size(100, 0),
                ),
              ),
              onPressed:
                  // Only enable the button when the
                  // filter is or can be added.
                  (controller.filterController?.canAddFilter(
                                facet.key,
                              ) ??
                              false) ||
                          (controller.filterController?.containsFilter(
                                key: facet.key,
                              ) ??
                              false)
                      ? () => onFacetSelected(
                            facet.key,
                            value,
                          )
                      : null,
              child: Text(
                value.text,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Flexible(
            child: Text(
              '${value.count}',
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  void onFacetSelected(String key, EmrFacetResultValue value) {
    if (controller.filterController == null) {
      return;
    }

    // Try to fetch an existing filter matching the key of the selected
    // facet, or add a new one if it doesn't exist and the filter controller
    // allows it. Then update the text and value if that was successful.
    final filterModel =
        controller.filterController!.tryGetFilter<dynamic>(key: key) ??
            controller.filterController!
                .newFilters()
                .firstWhereOrNull((x) => x.key == key);

    if (filterModel == null) {
      return;
    }

    if (filterModel is EmrFilterModel<List<String>>) {
      // Add the value if it doesn't already exist in the values.
      final values = filterModel.value ?? [];

      if (!values.any(
        (element) =>
            const CaseInsensitiveEquality().equals(element, value.value),
      )) {
        values.add(value.value);
      }

      controller.filterController!.addOrUpdateFilter(
        filter: filterModel,
        text: values.length > 1
            ? '${value.text} +${values.length - 1}'
            : value.text,
        value: values,
      );
    } else if (filterModel is EmrFilterModel<List<int>>) {
      // Add the value if it doesn't already exist in the values.
      final values = filterModel.value ?? [];

      if (!values.any(
        (element) => element == int.parse(value.value),
      )) {
        values.add(int.parse(value.value));
      }

      controller.filterController!.addOrUpdateFilter(
        filter: filterModel,
        text: value.text,
        value: values,
      );
    } else {
      controller.filterController!.addOrUpdateFilter(
        filter: filterModel,
        text: value.text,
        value: value.value,
      );
    }
  }
}
