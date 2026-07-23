import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/emr_one_data_management_constants.dart';
import 'package:emr_one_data_management/screens/stock_take_configs/stock_take_config_data_source.dart';
import 'package:emr_sharedtypes/models/models.dart';
import 'package:flutter/material.dart';

class StockTakeConfigSearch extends StatefulWidget with AppBarExtender {
  const StockTakeConfigSearch({super.key});

  @override
  List<Widget> getActions(BuildContext context) => [
    if (context.userHasPermission(
      'permissions/data-management/stock-take-configs/edit',
    ))
      IconButton.filled(
        tooltip: context.l10n.addStockTakeConfig,
        onPressed: () => context.goNamed(
          EmrOneDataManagementConstants.kRouteStockTakeConfigsEdit,
          params: {'yardCode': EmrOneDataManagementConstants.kRouteEdit },
        ),
        icon: const Icon(Icons.add_circle),
      ),
  ];

  @override
  State<StockTakeConfigSearch> createState() => _StockTakeConfigSearchState();
}

class _StockTakeConfigSearchState extends State<StockTakeConfigSearch> {
  late final StockTakeConfigDataSource _dataSource;
  late final EmrQueryLayoutController<StockTakeConfig> _queryLayoutContorller;

  @override
  void initState() {
    super.initState();

    _dataSource = StockTakeConfigDataSource(
      referenceDataService: context.coreApi.referenceData,
    );

    _queryLayoutContorller = EmrQueryLayoutController(
      dataSource: _dataSource,
      supportedViewModes: {EmrQueryLayoutViewMode.grid},
    );

    _dataSource.refresh();
  }

  @override
  Widget build(BuildContext context) {
    return EmrQueryLayoutHybrid<StockTakeConfig>(
      controller: _queryLayoutContorller,
      columns: [
        EmrGridColumn(
          headerBuilder: () => Text(context.l10n.yardCode),
          cellBuilder: (item) => Text(item.yardCode),
        ),
        EmrGridColumn(
          headerBuilder: () => Text(context.l10n.enableDeltaSnapshot),
          cellBuilder: (item) =>
              Icon(_getIcon(item.isDeltaSnapshotEnabled), color: Colors.grey),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrGridHeader(text: context.l10n.actions),
          cellBuilder: (item) => Tooltip(
            message: context.l10n.delete,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  _deleteConfig(context, item.yardCode);
                },
                child: const Icon(
                  Icons.delete_outline,
                  size: 26,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          width: 70,
        ),
      ],
      onItemTapped: (config) {
        context.goNamed(
          EmrOneDataManagementConstants.kRouteStockTakeConfigsEdit,
          params: {'yardCode': config.yardCode},
        );
      },
    );
  }

  IconData _getIcon(bool? value) {
    if (true == value) return Icons.check_box;
    if (value == false) return Icons.check_box_outline_blank;
    return Icons.remove_circle;
  }

  Future<void> _deleteConfig(BuildContext context, String yardCode) async {
    await EmrDialog.modal<void>(
      context,
      titleText: context.l10n.confirm,
      builder: (context) => Text(
        context.l10n.confirmDeleteStockTakeConfig,
        softWrap: true,
      ),
      acceptLabel: context.l10n.ok,
      isDanger: true,
      onAccept: () async {
        final result = await context.coreApi.referenceData
            .saveStockTakeConfiguration(
              yardCode,
              isDeleted: true,
            );

        if (result?.success == false) {
          if (!context.mounted) return;

          await EmrModal.showMessageBar(
            context,
            result!.message,
            messageType: MessageBarTypes.error,
          );

          return;
        }
        if (!context.mounted) return;
        await EmrModal.showMessageBar(context, context.l10n.deleted);
        await _dataSource.refresh();

        if (!context.mounted) return;
        context.pop();
      },
      onCancel: () => context.pop(),
    );
    return Future.value();
  }
}
