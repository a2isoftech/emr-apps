import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/emr_one_data_management_constants.dart';
import 'package:emr_one_data_management/screens/weighbridge_configurations/controllers/weighbridge_config_search_controller.dart';
import 'package:emr_one_data_management/screens/weighbridge_configurations/weighbridge_config_preferences.dart';
import 'package:emr_one_data_management/screens/weighbridge_configurations/weighbridge_configurations_data_source.dart';
import 'package:emr_sharedtypes/models/weighbridge/weighbridge_configuration.dart';
import 'package:flutter/material.dart';

class WeighbridgeConfigurationsSearch extends StatefulWidget
    with AppBarExtender, OmniSearch {
  WeighbridgeConfigurationsSearch({
    required this.userInfoService,
    required this.preferences,
    super.key,
  });

  final UserInfoService userInfoService;
  final WeighbridgeConfigPreferences preferences;

  @override
  List<Widget> getActions(BuildContext context) => [
    IconButton.filled(
      tooltip: context.l10n.addWeighbridgeConfig,
      onPressed: () => context.pushNamed(
        EmrOneDataManagementConstants.kRouteWeighbridgeConfigForm,
        params: {'id': EmrOneDataManagementConstants.kEmptyGuid},
      ),
      icon: const Icon(Icons.add_circle),
    ),
  ];

  @override
  State<WeighbridgeConfigurationsSearch> createState() =>
      _WeighbridgeConfigurationsSearch();
}

class _WeighbridgeConfigurationsSearch
    extends State<WeighbridgeConfigurationsSearch> {
  late final WeighbridgeConfigurationsDataSource _dataSource;
  late final WeighbridgeConfigSearchFilterContoller _filterController;
  late final EmrQueryLayoutController<WeighbridgeConfiguration>
  _queryLayoutController;
  late final Future<void> _initializeFuture;

  @override
  void initState() {
    super.initState();
    _initializeFuture = initialize();
  }

  Future<void> initialize() async {
    _dataSource = WeighbridgeConfigurationsDataSource(
      coreApiService: context.coreApi,
      handleErrors: handleErrors,
    );

    final savedFilters = await widget.preferences.getFilter();
    _filterController = WeighbridgeConfigSearchFilterContoller(
      userInfoService: widget.userInfoService,
      savedFilters: savedFilters,
    );

    _filterController.filters.addListener(_onFilterChanged);

    _queryLayoutController = EmrQueryLayoutController<WeighbridgeConfiguration>(
      dataSource: _dataSource,
      filterController: _filterController,
      supportedViewModes: {EmrQueryLayoutViewMode.grid},
    );
  }

  @override
  void dispose() {
    _filterController.filters.removeListener(_onFilterChanged);
    super.dispose();
  }

  void _onFilterChanged() {
    widget.preferences.saveFilter(_filterController.filtersAsMap);
  }

  Widget _getCloneWidget(
    BuildContext context,
    WeighbridgeConfiguration configuration,
    EmrQueryDataSource<WeighbridgeConfiguration> dataSource,
  ) {
    return SizedBox(
      width: 26,
      height: 26,
      child: Row(
        children: [
          Tooltip(
            message: context.l10n.clone,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  context.pushNamed(
                    EmrOneDataManagementConstants.kRouteWeighbridgeConfigForm,
                    params: {'id': configuration.id},
                    queryParams: {'clone': 'true'},
                  );
                },
                child: const Icon(
                  Icons.copy_rounded,
                  size: 26,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const headerTextStyle = TextStyle(fontWeight: FontWeight.bold);
    return FutureBuilder(
      future: _initializeFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const CircularProgressIndicator();
        }
        return EmrQueryLayoutHybrid<WeighbridgeConfiguration>(
          controller: _queryLayoutController,
          columns: [
            EmrGridColumn(
              headerBuilder: () => EmrSortableGridHeader(
                field: 'machineName',
                dataSource: _queryLayoutController.dataSource,
                child: Text(context.l10n.machineName, style: headerTextStyle),
              ),
              cellBuilder: (configuration) => Text(configuration.machineName),
              width: 200,
            ),
            EmrGridColumn(
              headerBuilder: () => EmrSortableGridHeader(
                field: 'weighbridgeId',
                dataSource: _queryLayoutController.dataSource,
                child: Text(context.l10n.weighbridgeId, style: headerTextStyle),
              ),
              cellBuilder: (configuration) => Text(configuration.weighbridgeId),
              width: 150,
            ),
            EmrGridColumn(
              headerBuilder: () => EmrSortableGridHeader(
                field: 'yardCode',
                dataSource: _queryLayoutController.dataSource,
                child: Text(context.l10n.yardCode, style: headerTextStyle),
              ),
              cellBuilder: (configuration) =>
                  Text(configuration.yardId.split('/').last),
              width: 150,
            ),
            EmrGridColumn(
              headerBuilder: () => EmrSortableGridHeader(
                field: 'ipAddress',
                dataSource: _queryLayoutController.dataSource,
                child: Text(context.l10n.ipAddress, style: headerTextStyle),
              ),
              cellBuilder: (configuration) => Text(configuration.ipAddress),
            ),
            EmrGridColumn(
              headerBuilder: () => EmrGridHeader(text: context.l10n.actions),
              cellBuilder: (config) => _getCloneWidget(
                context,
                config,
                _queryLayoutController.dataSource,
              ),
              width: 70,
            ),
          ],
          onItemTapped: (weighbridgeProfile) => context.pushNamed(
            EmrOneDataManagementConstants.kRouteWeighbridgeConfigForm,
            params: {'id': weighbridgeProfile.id},
          ),
        );
      },
    );
  }

  Future<void> handleErrors(String errorMessage) async {
    await EmrModal.showMessageBar(
      context,
      errorMessage,
      messageType: MessageBarTypes.error,
    );
  }
}
