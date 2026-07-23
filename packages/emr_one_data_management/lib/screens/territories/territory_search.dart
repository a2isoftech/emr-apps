import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/emr_one_data_management.dart';
import 'package:emr_one_data_management/screens/territories/territories_data_source.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class TerritorySearch extends StatefulWidget with AppBarExtender, OmniSearch {
  const TerritorySearch({super.key});

  @override
  List<Widget> getActions(BuildContext context) => [
    if (context.userHasPermission('data-management/territories/create/action'))
      IconButton.filled(
        tooltip: 'Add territory',
        onPressed: () => context.goNamed(
          EmrOneDataManagementConstants.kRouteTerritoryForm,
          params: {'code': EmrOneDataManagementConstants.kEmptyGuid},
        ),
        icon: const Icon(Icons.add_circle),
      ),
  ];

  @override
  State<TerritorySearch> createState() => _TerritorySearchState();
}

class _TerritorySearchState extends State<TerritorySearch> {
  late final TerritoriesDataSource _dataSource;
  late final EmrQueryLayoutController<Territory> _queryLayoutController;

  final ValueNotifier<EmrOneCoreUom?> emrOneCoreUomNotifier = ValueNotifier(
    null,
  );
  final ValueNotifier<Company?> defaultCompanyNotifier = ValueNotifier(null);

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

    _dataSource = TerritoriesDataSource(
      referenceDataService: context.coreApi.referenceData,
      errorHandler: handleErrors,
    );

    _dataSource.sortBy('code');

    _queryLayoutController = EmrQueryLayoutController<Territory>(
      dataSource: _dataSource,
      supportedViewModes: {EmrQueryLayoutViewMode.grid},
    );
  }

  @override
  void dispose() {
    emrOneCoreUomNotifier.dispose();
    defaultCompanyNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return EmrQueryLayoutHybrid<Territory>(
      controller: _queryLayoutController,
      columns: [
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'code',
            dataSource: _queryLayoutController.dataSource,
            child: const EmrGridHeader(text: 'Code'),
          ),
          cellBuilder: (territory) => Text(territory.code),
          width: 70,
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'name',
            dataSource: _queryLayoutController.dataSource,
            child: const EmrGridHeader(text: 'Territory Name'),
          ),
          cellBuilder: (territory) => Text(territory.name),
          width: 150,
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'defaultCompanyId',
            dataSource: _queryLayoutController.dataSource,
            child: const EmrGridHeader(text: 'Default Company'),
          ),
          cellBuilder: (territory) =>
              Text(territory.defaultCompany?.fullName ?? ''),
          width: 250,
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'uomId',
            dataSource: _queryLayoutController.dataSource,
            child: const EmrGridHeader(text: 'UOM'),
          ),
          cellBuilder: (territory) {
            final uom = EmrOneCoreUomConstants.lookup.firstWhere(
              (u) =>
                  EmrOneCoreUomConstants.lookup.indexOf(u) == territory.uomId,
              orElse: () => EmrOneCoreUomConstants.lookup.first, // Fallback
            );
            return Text(uom.uomCode == 'XX' ? '---' : uom.uomCode);
          },
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'currencyCode',
            dataSource: _queryLayoutController.dataSource,
            child: const EmrGridHeader(text: 'Currency Code'),
          ),
          cellBuilder: (territory) => Text(territory.currencyCode ?? ''),
          width: 150,
        ),
      ],
      onItemTapped: (territory) {
        // ✅ Update notifiers when row is tapped
        defaultCompanyNotifier.value = territory.defaultCompany;
        emrOneCoreUomNotifier.value = EmrOneCoreUomConstants.lookup.firstWhere(
          (uom) =>
              EmrOneCoreUomConstants.lookup.indexOf(uom) == territory.uomId,
          orElse: () => EmrOneCoreUomConstants.lookup.first, // Fallback
        );

        context.goNamed(
          EmrOneDataManagementConstants.kRouteTerritoryForm,
          params: {'code': territory.code},
        );
      },
    );
  }
}
