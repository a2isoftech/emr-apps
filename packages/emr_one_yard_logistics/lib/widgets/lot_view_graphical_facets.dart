import 'package:collection/collection.dart';
import 'package:emr_one_core/data/emr_facet_result_value.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_logistics/data/lots_data.dart';
import 'package:emr_one_yard_logistics/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LotViewGraphicalFacets<T> extends StatelessWidget {
  const LotViewGraphicalFacets({required this.controller, super.key});

  final EmrQueryLayoutController<T> controller;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: EmrOneConstants.kDefaultFacetsPanelWidth,
        child: ValueListenableBuilder(
          valueListenable: controller.dataSource.facets,
          builder: (context, value, child) {
            return SingleChildScrollView(
              /// This padding represents the gap between the left and right
              /// edge of the facet list as per the XD designs
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
                          switch (facet.key) {
                            LotsDataConstants.kTypeFacet ||
                            LotsDataConstants.kStateFacet ||
                            LotsDataConstants.kOuterCasingFacet ||
                            LotsDataConstants.kInnerCompositionFacet ||
                            LotsDataConstants.kDryCopperPercentageFacet ||
                            LotsDataConstants.kLeadPercentageFacet =>
                              Column(
                                children: [
                                  ColoredBox(
                                    color: Colors.transparent,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: Insets.gutter,
                                          ),
                                          child: Text(
                                            facet.value.name.toUpperCase(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  FacetGraph(
                                    facet: facet.value,
                                    height: _getFacetVisualHeight(facet),
                                  ),
                                ],
                              ),
                            _ => const SizedBox.shrink()
                          },
                          if (facet.key != value.entries.last.key)
                            const Padding(
                              padding: EdgeInsets.only(top: Insets.gutter),
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

  double _getFacetVisualHeight(MapEntry<String, EmrFacetResult> facet) {
    return switch (facet.key) {
      LotsDataConstants.kTypeFacet => 70,
      LotsDataConstants.kStateFacet => 70,
      LotsDataConstants.kOuterCasingFacet => 90,
      LotsDataConstants.kInnerCompositionFacet => 90,
      LotsDataConstants.kDryCopperPercentageFacet => 90,
      LotsDataConstants.kLeadPercentageFacet => 90,
      _ => 100,
    };
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
    } else {
      controller.filterController!.addOrUpdateFilter(
        filter: filterModel,
        text: value.text,
        value: value.value,
      );
    }
  }
}
