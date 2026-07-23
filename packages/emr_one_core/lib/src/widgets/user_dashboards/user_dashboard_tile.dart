import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/models/user_dashboards/internal/direct_query_facet_result_value.dart';
import 'package:emr_one_core/models/user_dashboards/internal/direct_query_result.dart';
import 'package:emr_one_core/models/user_dashboards/user_dashboard_models.dart';
import 'package:emr_one_core/models/workspace/workspace_element_base.dart';
import 'package:emr_one_core/services/direct_query_service.dart';
import 'package:emr_one_core/src/widgets/user_dashboards/query_editing/internal/tile/user_dashboard_tile_limit_query.dart';
import 'package:emr_one_core/src/widgets/user_dashboards/query_editing/internal/tile/user_dashboard_tile_single_facet.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@internal
class UserDashboardTile extends StatefulWidget {
  const UserDashboardTile({
    required this.item,
    required this.directQueryService,
    required this.facetRangeId,
    required this.element,
    super.key,
  });

  final WorkspaceElementBase element;
  final DirectQueryInstance item;
  final DirectQueryService directQueryService;
  final String facetRangeId;

  @override
  State<UserDashboardTile> createState() => _UserDashboardTileState();
}

class _UserDashboardTileState extends State<UserDashboardTile> {
  late Future<DirectQueryResult> getDataFuture;

  @override
  void initState() {
    super.initState();

    getDataFuture = widget.directQueryService.executeDirectQuery(
      widget.item.queryDefinitionId,
      widget.item.parameterValues.value,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getDataFuture,
      builder: (context, snapshot) {
        if (mounted && snapshot.connectionState == ConnectionState.waiting) {
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
            width: 116,
            height: 116,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.running_with_errors,
                    size: 48,
                    color: Theme.of(context).colorScheme.error,
                  ),
                  const SizedBox(height: Insets.gutter),
                  Text(
                    'Query failed',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context).colorScheme.error,
                        ),
                  ),
                ],
              ),
            ),
          );
        }

        if (widget.item.kind.value == DirectQueryKind.singleFacetValue) {
          return UserDashboardTileSingleFacet(
            element: widget.element,
            item: widget.item,
            facet: snapshot.data!.results[0].values
                    .where((x) => x.range == widget.facetRangeId)
                    .firstOrNull ??
                DirectQueryFacetResultValue(
                  range: 'No data',
                  count: 0,
                ),
          );
        } else if (widget.item.kind.value == DirectQueryKind.limitQuery) {
          final count = snapshot.data?.totalResults ?? 0;
          return UserDashboardTileLimitQuery(
            element: widget.element,
            item: widget.item,
            count: count,
          );
        }

        return SizedBox(
          width: 116,
          height: 116,
          child: Center(
            child: Text(
              'Unsupported query kind: ${widget.item.kind.value}',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        );
      },
    );
  }
}
