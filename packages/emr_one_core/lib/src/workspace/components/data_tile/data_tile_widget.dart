import 'package:emr_one_core/models/user_dashboards/internal/direct_query_facet_result_value.dart';
import 'package:emr_one_core/models/user_dashboards/internal/direct_query_result.dart';
import 'package:emr_one_core/models/user_dashboards/user_dashboard_models.dart';
import 'package:emr_one_core/models/workspace/workspaces.dart';
import 'package:emr_one_core/src/widgets/user_dashboards/query_editing/internal/tile/user_dashboard_tile_limit_query.dart';
import 'package:emr_one_core/src/widgets/user_dashboards/query_editing/internal/tile/user_dashboard_tile_single_facet.dart';
import 'package:emr_one_core/src/workspace/components/data_tile/data_tile.dart';
import 'package:emr_one_core/src/workspace/element_container.dart';
import 'package:emr_one_core/src/workspace/workspaces.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DataTileWidget extends StatefulWidget {
  const DataTileWidget({
    required this.element,
    required this.dragging,
    super.key,
  });

  @override
  State<DataTileWidget> createState() => _DataTileWidgetState();

  final WorkspaceElementBase element;
  final bool dragging;
}

class _DataTileWidgetState extends State<DataTileWidget> {
  late DirectQueryInstance _customProperties;
  late Future<DirectQueryResult> _getDataFuture;

  @override
  void initState() {
    super.initState();
    _customProperties = widget.element.customProperties as DirectQueryInstance;
    _getDataFuture =
        widget.element.controller.directQueryService.executeDirectQuery(
      _customProperties.queryDefinitionId,
      _customProperties.parameterValues.value,
    );

    final controller = widget.element.controller as DataTileController;
    controller.onCommit = () {
      setState(() {
        _getDataFuture =
            widget.element.controller.directQueryService.executeDirectQuery(
          _customProperties.queryDefinitionId,
          _customProperties.parameterValues.value,
        );
      });
    };
  }

  @override
  void didUpdateWidget(covariant DataTileWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.element != widget.element) {
      final controller = widget.element.controller as DataTileController;
      controller.onCommit = () {
        setState(() {
          _getDataFuture =
              widget.element.controller.directQueryService.executeDirectQuery(
            _customProperties.queryDefinitionId,
            _customProperties.parameterValues.value,
          );
        });
      };
      _customProperties =
          widget.element.customProperties as DirectQueryInstance;
      _getDataFuture =
          widget.element.controller.directQueryService.executeDirectQuery(
        _customProperties.queryDefinitionId,
        _customProperties.parameterValues.value,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_customProperties.parameterValues.value
        .any((x) => x.value.value == '')) {
      return _needsAttention();
    }

    return GestureDetector(
      onDoubleTap: () {
        Provider.of<WorkspaceController>(context, listen: false)
            .editElementProperties(widget.element);
      },
      child: ValueListenableBuilder(
        valueListenable: widget.element.elementProperties.backgroundColour,
        builder: (context, value, child) {
          return ElementContainer(
            backgroundColour:
                widget.element.elementProperties.backgroundColour.value,
            child: FutureBuilder<DirectQueryResult>(
              future: _getDataFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const SizedBox(
                    width: 116,
                    height: 116,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }

                if (snapshot.hasError) {
                  return SizedBox(
                    child: Center(
                      child: Text('Error: ${snapshot.error}'),
                    ),
                  );
                }

                //final result = snapshot.data!;
                final count = snapshot.data?.totalResults ?? 0;

                return switch (_customProperties.kind.value) {
                  DirectQueryKind.singleFacetValue =>
                    UserDashboardTileSingleFacet(
                      element: widget.element,
                      item: _customProperties,
                      facet: snapshot.data!.results[0].values
                              .where(
                                (x) =>
                                    x.range ==
                                    _customProperties.facetRangeId.value,
                              )
                              .firstOrNull ??
                          DirectQueryFacetResultValue(
                            range: 'No data',
                            count: 0,
                          ),
                    ),
                  DirectQueryKind.limitQuery => UserDashboardTileLimitQuery(
                      element: widget.element,
                      item: _customProperties,
                      count: count,
                    ),
                };
              },
            ),
          );
        },
      ),
    );
  }

  Widget _needsAttention() {
    return GestureDetector(
      onDoubleTap: () =>
          Provider.of<WorkspaceController>(context, listen: false)
              .editElementProperties(widget.element),
      child: Stack(
        children: [
          Positioned.fill(
            child: Center(
              child: Icon(
                Icons.warning,
                size: 48,
                color: Theme.of(context).colorScheme.error,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 64),
            child: Center(
              child: Text(
                'Some settings need attention',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
