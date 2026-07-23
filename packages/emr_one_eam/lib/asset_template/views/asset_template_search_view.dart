import 'package:collection/collection.dart';
import 'package:emr_one_core/data/emr_query_scope_sort_order.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_eam/asset_template/views/asset_template_data_source.dart';
import 'package:emr_one_eam/graphql/queries/asset_template.graphql.dart';
import 'package:flutter/material.dart';

class AssetTemplateSearchView extends StatefulWidget {
  const AssetTemplateSearchView({
    required this.queryLayoutController,
    this.onAssetTemplateSelected,
    super.key,
  });

  final EmrQueryLayoutController<
          Query$GetPaginatedAssetTemplates$assetTemplates$nodes>
      queryLayoutController;

  final void Function(Query$GetPaginatedAssetTemplates$assetTemplates$nodes)?
      onAssetTemplateSelected;

  @override
  State<AssetTemplateSearchView> createState() =>
      _AssetTemplateSearchViewState();
}

class _AssetTemplateSearchViewState extends State<AssetTemplateSearchView> {
  late EmrGridController<Query$GetPaginatedAssetTemplates$assetTemplates$nodes>
      _gridController;
  @override
  void initState() {
    super.initState();
    _gridController = EmrGridController<
        Query$GetPaginatedAssetTemplates$assetTemplates$nodes>(
      data: widget.queryLayoutController.dataSource.data,
      showLoader: widget.queryLayoutController.dataSource.loading,
    );
    final gridDataSource =
        widget.queryLayoutController.dataSource as AssetTemplateDataSource;
    gridDataSource.onRefresh = () async {
      _gridController.selectedRows.value = [];
    };
    gridDataSource.refresh();
    widget.queryLayoutController.menuChildrenBuilder = (context) => [
          SizedBox(
            width: 200,
            child: ExpansionTile(
              collapsedBackgroundColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              title: Text(context.l10n.export),
              children: <Widget>[
                ListTile(
                  title: Text(context.l10n.assetTemplate),
                  onTap: gridDataSource.exportAssetTemplates,
                ),
              ],
            ),
          ),
        ];
  }

  @override
  Widget build(BuildContext context) {
    return EmrQueryLayout<
        Query$GetPaginatedAssetTemplates$assetTemplates$nodes>.grid(
      queryLayoutController: widget.queryLayoutController,
      onRowTapped: (Query$GetPaginatedAssetTemplates$assetTemplates$nodes row) {
        widget.onAssetTemplateSelected?.call(
          row,
        );
      },
      columns: [
        columnBuilder(
          headerText: context.l10n.templateName,
          getSortIcon: () => _sortIcon('name'),
          onSortTap: () =>
              widget.queryLayoutController.dataSource.sortBy('name'),
          cellText: (p0) => p0.name ?? '',
        ),
      ],
    );
  }

  Widget _sortIcon(String field) {
    final value = widget.queryLayoutController.dataSource.queryScope.sortOrder
        .firstWhereOrNull(
      (element) => element.field == field,
    );

    return value == null
        ? const SizedBox.shrink()
        : value.direction == EmrQueryScopeSortOrderDirection.asc
            ? const Icon(Icons.arrow_drop_up)
            : const Icon(Icons.arrow_drop_down);
  }

  EmrGridColumn<Query$GetPaginatedAssetTemplates$assetTemplates$nodes>
      columnBuilder({
    required String headerText,
    required String Function(
      Query$GetPaginatedAssetTemplates$assetTemplates$nodes,
    ) cellText,
    void Function()? onSortTap,
    void Function(String? id)? onCellTap,
    Widget Function()? getSortIcon,
    int flex = 4,
    double width = 100,
  }) {
    return EmrGridColumn(
      flex: flex,
      width: width,
      headerBuilder: () => MouseRegion(
        cursor:
            onSortTap != null ? SystemMouseCursors.click : MouseCursor.defer,
        child: GestureDetector(
          onTap: onSortTap,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  headerText,
                ),
              ),
              if (getSortIcon != null) getSortIcon.call(),
            ],
          ),
        ),
      ),
      cellBuilder:
          (Query$GetPaginatedAssetTemplates$assetTemplates$nodes rowItem) =>
              Padding(
        padding: const EdgeInsets.all(8),
        child: Text(
          cellText.call(rowItem),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
