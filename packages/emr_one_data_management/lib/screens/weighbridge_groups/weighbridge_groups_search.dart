import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/emr_one_data_management.dart';
import 'package:emr_one_data_management/screens/weighbridge_groups/weighbridge_groups_data_source.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class WeighbridgeGroupsSearch extends StatefulWidget
    with AppBarExtender, OmniSearch {
  WeighbridgeGroupsSearch({super.key});

  @override
  List<Widget> getActions(BuildContext context) => [
    IconButton.filled(
      tooltip: context.l10n.addWeighbridgeGroup,
      onPressed: () => context.pushNamed(
        EmrOneDataManagementConstants.kRouteWeighbridgeGroupsForm,
        params: {'code': EmrOneDataManagementConstants.kEmptyGuid},
      ),
      icon: const Icon(Icons.add_circle),
    ),
  ];

  @override
  State<WeighbridgeGroupsSearch> createState() => _WeighbridgeGroupssSearch();
}

class _WeighbridgeGroupssSearch extends State<WeighbridgeGroupsSearch> {
  late final WeighbridgeGroupsDataSource _dataSource;
  late final EmrQueryLayoutController<WeighbridgeGroup> _queryLayoutController;
  late final Future<void> _initializeFuture;

  @override
  void initState() {
    super.initState();

    _initializeFuture = initialize();
  }

  Future<void> initialize() async {
    _dataSource = WeighbridgeGroupsDataSource(
      coreApiService: context.coreApi,
      handleErrors: handleErrors,
    );

    _queryLayoutController = EmrQueryLayoutController<WeighbridgeGroup>(
      dataSource: _dataSource,
      supportedViewModes: {EmrQueryLayoutViewMode.grid},
    );
  }

  @override
  void dispose() {
    super.dispose();
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
        return EmrQueryLayoutHybrid<WeighbridgeGroup>(
          controller: _queryLayoutController,
          columns: [
            EmrGridColumn(
              headerBuilder: () =>
                  Text(context.l10n.yardCode, style: headerTextStyle),
              cellBuilder: (weighbridgeGroup) =>
                  Text(weighbridgeGroup.yardCode),
            ),
            EmrGridColumn(
              headerBuilder: () =>
                  Text(context.l10n.weighbridgeGroups, style: headerTextStyle),
              cellBuilder: (weighbridgeGroup) => SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(),
                  child: Wrap(
                    spacing: 6,
                    runSpacing: 4,
                    children: weighbridgeGroup.group
                        .map<Widget>(
                          (group) => Chip(
                            label: Text(group),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 2,
                            ),
                            visualDensity: VisualDensity.compact,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            ),
          ],
          onItemTapped: (weighbridgeGroup) => context.pushNamed(
            EmrOneDataManagementConstants.kRouteWeighbridgeGroupsForm,
            params: {'code': weighbridgeGroup.yardCode},
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
