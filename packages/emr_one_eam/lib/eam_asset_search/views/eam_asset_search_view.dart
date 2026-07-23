import 'package:collection/collection.dart';
import 'package:emr_one_core/data/emr_query_scope_sort_order.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_eam/common/colors.dart';
import 'package:emr_one_eam/common/constants.dart';
import 'package:emr_one_eam/eam_asset_search/controllers/eam_asset_search_filter_controller.dart';
import 'package:emr_one_eam/eam_asset_search/models/asset.dart' as search;
import 'package:emr_one_eam/eam_asset_search/models/asset_search_input.dart';
import 'package:emr_one_eam/eam_asset_search/models/favourite_search_parameters.dart';
import 'package:emr_one_eam/eam_asset_search/views/eam_asset_search_data_source.dart';
import 'package:emr_one_eam/graphql/queries/search_assets.graphql.dart';
import 'package:emr_one_eam/screen_access.dart';
import 'package:emr_one_eam/transfer_and_dispose/controller/transfer_and_dispose_controller.dart';
import 'package:emr_one_eam/transfer_and_dispose/views/transfer_and_dispose.dart';
import 'package:emr_one_eam/widgets/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EamAssetSearchView extends StatefulWidget {
  const EamAssetSearchView({
    required this.transferDisposeController,
    required this.queryLayoutController,
    this.onAssetSelected,
    this.onReviewSelected,
    super.key,
  });

  final void Function(String)? onAssetSelected;
  final void Function(List<String>)? onReviewSelected;
  final ITransferDisposeController transferDisposeController;
  final EmrQueryLayoutController<Query$SearchAssets$searchAssets$nodes>
      queryLayoutController;

  @override
  State<EamAssetSearchView> createState() => _EamAssetSearchViewState();
}

class _EamAssetSearchViewState extends State<EamAssetSearchView> {
  late EmrGridController<Query$SearchAssets$searchAssets$nodes> _gridController;

  @override
  void initState() {
    super.initState();
    _gridController = EmrGridController<Query$SearchAssets$searchAssets$nodes>(
      data: widget.queryLayoutController.dataSource.data,
      rowSelectionMode: RowSelectionMode.multiple,
      showLoader: widget.queryLayoutController.dataSource.loading,
    );
    final filterController = widget.queryLayoutController.filterController!
        as EamAssetSearchFilterController;
    filterController.fetchFilterValues();
    filterController.fetchFavouriteFiltes();
    final showAssetFilter = filterController.filters.value
        .where((element) => element.key == 'ShowAssets')
        .first;
    filterController.addOrUpdateFilter(
      filter: showAssetFilter,
      text: 'Show Assets: LIVE',
      value: 'LIVE',
    );
    final gridDataSource =
        widget.queryLayoutController.dataSource as EamAssetSearchDataSource;
    gridDataSource.onRefresh = () async {
      _gridController.selectedRows.value = [];
    };
    //gridDataSource.queryScope.filters

    gridDataSource.refresh();
    widget.queryLayoutController.menuChildrenBuilder = (context) => [
          ValueListenableBuilder(
            valueListenable: _gridController.selectedRows,
            builder: (parentContext, value, child) {
              final access = Provider.of<ScreenAccess>(context, listen: false);
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  ValueListenableBuilder(
                    valueListenable: filterController.favourite,
                    builder: (context, value, child) {
                      return Visibility(
                        child: ListTile(
                          leading: Icon(
                            Icons.star,
                            color: value != null
                                ? EamAppColors.inProgress
                                : EamAppColors.lightGrey,
                          ),
                          title: Text(context.l10n.saveFilters),
                          onTap: () async {
                            final editController = TextEditingController(
                              text: value?.name,
                            );
                            final result = await showDialog<String>(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text(context.l10n.saveas),
                                  content:
                                      TextFormField(controller: editController),
                                  actions: [
                                    TextButton(
                                      onPressed: () => context.pop(),
                                      child: Text(context.l10n.cancel),
                                    ),
                                    TextButton(
                                      onPressed: () =>
                                          context.pop(editController.text),
                                      child: Text(context.l10n.ok),
                                    ),
                                  ],
                                );
                              },
                            );

                            if (result?.isEmpty ?? true) return;

                            await _saveFavouriteSearchParameters(result!);
                          },
                        ),
                      );
                    },
                  ),
                  const Divider(),
                  ValueListenableBuilder(
                    valueListenable: filterController.favourites,
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
                                          e.name!,
                                        );
                                      },
                                      icon: const Icon(Icons.clear),
                                    ),
                                    title:
                                        Text(e.name ?? context.l10n.favourite),
                                    onTap: () {
                                      _onFavouriteSearchParameterSelected(e);
                                    },
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      );
                    },
                  ),
                  Visibility(
                    visible: value.isNotEmpty &&
                        (access.isEAMBusinessAdmin(context) ||
                            access.isEAMFinanceAdmin(context)),
                    child: SizedBox(
                      width: 200,
                      child: ExpansionTile(
                        collapsedBackgroundColor: Colors.transparent,
                        backgroundColor: Colors.transparent,
                        title: Text(context.l10n.actions),
                        children: <Widget>[
                          Visibility(
                            visible: access.isEAMBusinessAdmin(context) &&
                                    value.length > 1 ||
                                canTransferDispose(value),
                            child: ListTile(
                              title: Text(context.l10n.transferString),
                              onTap: () async {
                                await validateAndTransfer(context, value);
                              },
                            ),
                          ),
                          Visibility(
                            visible: access.isEAMBusinessAdmin(context) &&
                                    value.length > 1 ||
                                canTransferDispose(value),
                            child: ListTile(
                              title: Text(context.l10n.dispose),
                              onTap: () async {
                                await validateAndDispose(context, value);
                              },
                            ),
                          ),
                          ListTile(
                            title: Text(context.l10n.approve),
                            onTap: () async {
                              if (!access.isEAMFinanceAdmin(context)) {
                                await EmrDialog.ok(
                                  context,
                                  titleText: context.l10n.information,
                                  contentText: access.accessDeniedMessage(),
                                );
                              } else {
                                await bulkApproveAssets(context, value);
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: ExpansionTile(
                      collapsedBackgroundColor: Colors.transparent,
                      backgroundColor: Colors.transparent,
                      title: Text(context.l10n.export),
                      children: <Widget>[
                        ListTile(
                          title: Text(context.l10n.assets),
                          onTap: gridDataSource.exportAssets,
                        ),
                        ListTile(
                          title: Text(context.l10n.assetMainAttributesOnly),
                          onTap: gridDataSource.exportAssetMainAttributes,
                        ),
                        ListTile(
                          title: Text(context.l10n.counters),
                          onTap: gridDataSource.exportAssetCounters,
                        ),
                        ListTile(
                          title: Text(context.l10n.qrCode),
                          onTap: gridDataSource.exportQrCode,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ];
  }

  Future<void> _saveFavouriteSearchParameters(String name) async {
    final gridDataSource =
        widget.queryLayoutController.dataSource as EamAssetSearchDataSource;
    final controller = widget.queryLayoutController.filterController!
        as EamAssetSearchFilterController;
    final parameters = gridDataSource.getAssetSearchInput().toJsonString();
    await controller.saveSearchParameter(name, parameters);
  }

  Future<void> _onFavouriteSearchParameterSelected(
    FavouriteSearchParameters value,
  ) async {
    final controller = widget.queryLayoutController.filterController!
        as EamAssetSearchFilterController;
    controller.favourite.value = value;
    final gridDataSource =
        widget.queryLayoutController.dataSource as EamAssetSearchDataSource;
    final favFilters = AssetSearchInput.fromJsonString(
      value.parameters!,
    );
    controller.filters.value = gridDataSource.getFilter(favFilters);
    await gridDataSource.refresh();
  }

  Future<void> _deleteFavouriteSearchParameter(String name) async {
    final controller = widget.queryLayoutController.filterController!
        as EamAssetSearchFilterController;
    await controller.deleteSearchParameter(name);
    if (controller.favourite.value?.name == name) {
      final gridDataSource =
          widget.queryLayoutController.dataSource as EamAssetSearchDataSource;
      gridDataSource.queryScope.filters = {};
      await gridDataSource.refresh();
    }
    await controller.fetchFavouriteFiltes();
  }

  @override
  Widget build(BuildContext context) {
    return EmrQueryLayout<Query$SearchAssets$searchAssets$nodes>.grid(
      gridController: _gridController,
      queryLayoutController: widget.queryLayoutController,
      onRowTapped: (asset) {
        widget.onAssetSelected?.call(asset.code);
      },
      columns: [
        ...ConstantLists.gridColumns
            .where((element) => element != AssetGridColumns.checkbox)
            .map(
              (e) => columnBuilder(
                flex: e == AssetGridColumns.serialNo ? 2 : 1,
                headerText: e,
                getSortIcon: () => _sortIcon(_getSortType(e)),
                onSortTap: () => widget.queryLayoutController.dataSource
                    .sortBy(_getSortType(e)),
                cellText: (p0) => _getCellValue(p0, e),
              ),
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

  String _getSortType(String headerName) {
    switch (headerName) {
      case AssetGridColumns.assetCode:
        return AssetGridSortTypes.code;
      case AssetGridColumns.assetType:
        return AssetGridSortTypes.assetType;
      case AssetGridColumns.depo:
        return AssetGridSortTypes.depotNo;
      case AssetGridColumns.make:
        return AssetGridSortTypes.make;
      case AssetGridColumns.model:
        return AssetGridSortTypes.model;
      case AssetGridColumns.serialNo:
        return AssetGridSortTypes.serialNumber;
      case AssetGridColumns.status:
        return AssetGridSortTypes.status;
      case AssetGridColumns.name:
        return AssetGridSortTypes.name;
    }
    return '';
  }

  String _getCellValue(
    Query$SearchAssets$searchAssets$nodes asset,
    String type,
  ) {
    switch (type) {
      case AssetGridColumns.assetCode:
        return asset.code;
      case AssetGridColumns.assetType:
        return asset.assetType;
      case AssetGridColumns.depo:
        return asset.depotNo;
      case AssetGridColumns.make:
        return asset.make;
      case AssetGridColumns.model:
        return asset.model ?? '-';
      case AssetGridColumns.serialNo:
        return asset.serialNumber ?? '-';
      case AssetGridColumns.status:
        return asset.status;
      case AssetGridColumns.name:
        return asset.name ?? '-';
    }
    return '-';
  }

  EmrGridColumn<Query$SearchAssets$searchAssets$nodes> columnBuilder({
    required String headerText,
    required String Function(
      Query$SearchAssets$searchAssets$nodes,
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
              Text(
                headerText,
              ),
              if (getSortIcon != null) getSortIcon.call(),
            ],
          ),
        ),
      ),
      cellBuilder: (Query$SearchAssets$searchAssets$nodes rowItem) => Text(
        cellText.call(rowItem),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  EmrGridColumn<Query$SearchAssets$searchAssets$nodes> columnBuilderWidget({
    required String headerText,
    required Widget Function(
      Query$SearchAssets$searchAssets$nodes,
    ) cellWidget,
    void Function()? onSortTap,
    Widget Function()? getSortMaker,
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
              Text(
                headerText,
              ),
              if (getSortMaker != null) getSortMaker.call(),
            ],
          ),
        ),
      ),
      cellBuilder: cellWidget,
    );
  }

  Future<void> validateAndTransfer(
    BuildContext context,
    List<Query$SearchAssets$searchAssets$nodes> value,
  ) async {
    final selectedAssets =
        value.map((e) => search.Asset.fromJson(e.toJson())).toList();
    final gridDataSource =
        widget.queryLayoutController.dataSource as EamAssetSearchDataSource;
    if (selectedAssets.isNotEmpty) {
      final alreadyInProcess =
          gridDataSource.validateSelectedAssetsForTransfer(selectedAssets);

      if (alreadyInProcess == null || alreadyInProcess.isEmpty) {
        await navigateToTransferDisposeScreen(
          selectedAssets,
          AssetActions.transfer,
        );
      } else {
        await EmrDialog.cancelOk(
          context,
          titleText: context.l10n.areYouSure,
          contentText: '''
${context.l10n.transferAlreadyProcess} \n ${alreadyInProcess.join(', ')} \n ${context.l10n.initiateRemainingTransferQuestion}''',
          onOk: () async {
            await navigateToTransferDisposeScreen(
              selectedAssets,
              AssetActions.transfer,
            );
          },
        );
      }
    }
  }

  Future<void> validateAndDispose(
    BuildContext context,
    List<Query$SearchAssets$searchAssets$nodes> value,
  ) async {
    final selectedAssets =
        value.map((e) => search.Asset.fromJson(e.toJson())).toList();
    final gridDataSource =
        widget.queryLayoutController.dataSource as EamAssetSearchDataSource;
    if (selectedAssets.isNotEmpty) {
      final alreadyInProcess =
          gridDataSource.validateSelectedAssetsForDispose(selectedAssets);
      if (alreadyInProcess == null || alreadyInProcess.isEmpty) {
        await navigateToTransferDisposeScreen(
          selectedAssets,
          AssetActions.dispose,
        );
      } else {
        await EmrDialog.cancelOk(
          context,
          titleText: context.l10n.areYouSure,
          contentText: '''
${context.l10n.disposeAlreadyProcess} \n ${alreadyInProcess.join(', ')} \n ${context.l10n.initiateRemainingDisposeAsset}''',
          onOk: () async {
            await navigateToTransferDisposeScreen(
              selectedAssets,
              AssetActions.dispose,
            );
          },
        );
      }
    }
  }

  Future<void> bulkApproveAssets(
    BuildContext context,
    List<Query$SearchAssets$searchAssets$nodes> value,
  ) async {
    final selectedAssetIds = value
        .where(
          (element) => !element.approved,
        )
        .map((e) => e.id)
        .toList();

    if (selectedAssetIds.isEmpty) {
      if (context.mounted) {
        await EmrDialog.ok(
          context,
          titleText: context.l10n.information,
          contentText: context.l10n.assetsAlreadyApproved,
        );
      }
    } else {
      final gridDataSource =
          widget.queryLayoutController.dataSource as EamAssetSearchDataSource;
      final selectedAssetCodes = value
          .where(
            (element) => !element.approved,
          )
          .map((e) => e.code)
          .toList();

      final confirmation = await showConfirmationDialog(
        context: context,
        message: context.l10n.sureToApproveSelectedAsset,
        actionButtons: [_getReviewButton(selectedAssetCodes)],
      );
      if (confirmation ?? false) {
        final result =
            await gridDataSource.bulkApproveSelectedAssets(selectedAssetIds);
        if (result) {
          if (context.mounted) {
            await EmrDialog.ok(
              context,
              titleText: context.l10n.success,
              contentText: context.l10n.assetsApprovedSuccesfully,
            );
          }
        } else {
          if (context.mounted) {
            await EmrDialog.ok(
              context,
              titleText: context.l10n.error,
              contentText: context.l10n.eamFailedToApproveMessage,
            );
          }
        }
      }
    }
  }

  Widget _getReviewButton(List<String> assetCodes) {
    return ElevatedButton(
      onPressed: () {
        widget.onReviewSelected?.call(assetCodes);
        context.pop();
      },
      child: Text(context.l10n.review),
    );
  }

  Future<void> navigateToTransferDisposeScreen(
    List<search.Asset> selectedAssets,
    AssetActions action,
  ) async {
    if (selectedAssets.isNotEmpty) {
      widget.transferDisposeController.assets.value = selectedAssets;
      widget.transferDisposeController.setCurrentAction(action);
      await showWidgetDialog(
        context: context,
        title: action == AssetActions.dispose
            ? context.l10n.disposeApprovals
            : context.l10n.transferApprovals,
        widget: TransferAndDisposeBase(
          onActionPerformed: context.pop,
          controller: widget.transferDisposeController,
        ),
      );
      widget.transferDisposeController.reset();
    } else {
      if (context.mounted) {
        await EmrDialog.ok(
          context,
          titleText: context.l10n.error,
          contentText: context.l10n.cannotPerformActionAsset,
        );
      }
    }
  }

  bool canTransferDispose(List<Query$SearchAssets$searchAssets$nodes> value) {
    final asset = value.firstOrNull;
    if (asset == null) {
      return false;
    }
    return asset.approved;
  }
}
