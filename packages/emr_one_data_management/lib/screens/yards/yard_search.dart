import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/emr_one_data_management.dart';
import 'package:emr_one_data_management/screens/yards/yard_data_source.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class YardSearch extends StatefulWidget with AppBarExtender, OmniSearch {
  const YardSearch({required this.queryLayoutController, super.key});

  final EmrQueryLayoutController<Yard> queryLayoutController;
  @override
  List<Widget> getActions(BuildContext context) => [
    if (context.userHasPermission('data-management/yards/create/action'))
      IconButton.filled(
        tooltip: 'Add yard',
        onPressed: () => context.goNamed(
          EmrOneDataManagementConstants.kRouteYardForm,
          params: {'code': EmrOneDataManagementConstants.kEmptyGuid},
        ),
        icon: const Icon(Icons.add_circle),
      ),
  ];

  @override
  State<YardSearch> createState() => _YardSearchState();
}

class _YardSearchState extends State<YardSearch> {
  late final YardsDataSource _dataSource;
  late final EmrQueryLayoutController<Yard> _queryLayoutController;

  Future<void> handleErrors(String errorMessage) async {
    await EmrModal.showMessageBar(
      context,
      errorMessage,
      messageType: MessageBarTypes.error,
    );
  }

  @override
  void initState() {
    super.initState();

    _dataSource = YardsDataSource(
      referenceDataService: context.coreApi.referenceData,
      errorHandler: handleErrors,
    );

    _dataSource.sortBy('yardCode');

    _queryLayoutController = widget.queryLayoutController;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return EmrQueryLayoutHybrid<Yard>(
      controller: _queryLayoutController,
      columns: [
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'yardCode',
            dataSource: _queryLayoutController.dataSource,
            child: const EmrGridHeader(text: 'Yard Code'),
          ),
          cellBuilder: (yard) => Text(yard.yardCode),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'shortName',
            dataSource: _queryLayoutController.dataSource,
            child: const EmrGridHeader(text: 'Yard Name'),
          ),
          cellBuilder: (yard) => Text(yard.name),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'companyCode',
            dataSource: _queryLayoutController.dataSource,
            child: const EmrGridHeader(text: 'Company Name'),
          ),
          cellBuilder: (yard) => Text(yard.company?.fullName ?? ''),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'territoryCode',
            dataSource: _queryLayoutController.dataSource,
            child: const EmrGridHeader(text: 'Territory Name'),
          ),
          cellBuilder: (yard) => Text(yard.company!.territory!.name),
        ),
        EmrGridColumn(
          headerBuilder: () => const EmrGridHeader(text: 'Region'),
          cellBuilder: (yard) => Text(yard.region?.name ?? ''),
        ),
        EmrGridColumn(
          headerBuilder: () => const EmrGridHeader(text: 'Timezone'),
          cellBuilder: (yard) => Text(yard.timeZoneId!),
        ),
      ],
      onItemTapped: (yard) {
        context.goNamed(
          EmrOneDataManagementConstants.kRouteYardForm,
          params: {'code': yard.yardCode},
        );
      },
    );
  }
}
