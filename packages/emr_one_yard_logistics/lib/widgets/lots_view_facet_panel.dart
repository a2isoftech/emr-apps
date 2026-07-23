import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_query_layout_default_facets_panel.dart';
import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:emr_one_yard_logistics/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

enum LotFacetPanelViewMode {
  detail,
  visual,
}

class LotsViewFacetPanel extends StatefulWidget {
  const LotsViewFacetPanel({required this.controller, super.key});

  final EmrQueryLayoutController<Lot> controller;

  @override
  State<LotsViewFacetPanel> createState() => _LotsViewFacetPanelState();
}

class _LotsViewFacetPanelState extends State<LotsViewFacetPanel> {
  late FlutterSignal<LotFacetPanelViewMode> _viewMode;

  @override
  void initState() {
    super.initState();
    _viewMode = signal<LotFacetPanelViewMode>(LotFacetPanelViewMode.detail);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // The FlChart draws outside its bounds so this padding is necessary
          const SizedBox(height: Insets.gutter + 4),
          SegmentedButton<LotFacetPanelViewMode>(
            showSelectedIcon: false,
            segments: <ButtonSegment<LotFacetPanelViewMode>>[
              ButtonSegment<LotFacetPanelViewMode>(
                value: LotFacetPanelViewMode.detail,
                label: Text(context.l10n.detail),
                icon: const Icon(Icons.calculate_outlined),
              ),
              ButtonSegment<LotFacetPanelViewMode>(
                value: LotFacetPanelViewMode.visual,
                label: Text(context.l10n.visual),
                icon: const Icon(Icons.bar_chart),
              ),
            ],
            selected: <LotFacetPanelViewMode>{_viewMode.value},
            onSelectionChanged: (Set<LotFacetPanelViewMode> newSelection) {
              setState(() {
                // By default there is only a single segment that can be
                // selected at one time, so its value is always the first
                // item in the selected set.
                _viewMode.value = newSelection.first;
              });
            },
          ),
          ValueListenableBuilder(
            valueListenable: _viewMode,
            builder: (context, value, child) {
              return switch (value) {
                LotFacetPanelViewMode.detail =>
                  EmrQueryLayoutDefaultFacetsPanel<Lot>(
                    controller: widget.controller,
                  ),
                LotFacetPanelViewMode.visual => LotViewGraphicalFacets<Lot>(
                    controller: widget.controller,
                  ),
              };
            },
          ),
        ],
      ),
    );
  }
}
