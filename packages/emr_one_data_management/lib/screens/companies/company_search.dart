import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/companies/companies.dart';
import 'package:emr_sharedtypes/models/company.dart';
import 'package:flutter/material.dart';

class CompanySearch extends StatefulWidget with OmniSearch, AppBarExtender {
  const CompanySearch({super.key});

  @override
  List<Widget> getActions(BuildContext context) => [
    IconButton.filled(
      tooltip: 'Add Company',
      onPressed: () {
        context.goNamed('company-add');
      },
      icon: const Icon(Icons.add_circle),
    ),
  ];

  @override
  State<StatefulWidget> createState() => _CompanySearchSate();
}

class _CompanySearchSate extends State<CompanySearch> {
  Future<void> handleErrors(String errorMessage) async {
    await EmrModal.showMessageBar(
      context,
      errorMessage,
      messageType: MessageBarTypes.error,
    );
  }

  @override
  Widget build(BuildContext context) {
    final companyDataSource = CompanyDataSource(
      coreApiService: context.coreApi,
      errorHandler: handleErrors,
    );

    companyDataSource.sortBy('code');

    final queryLayoutController = EmrQueryLayoutController<Company>(
      dataSource: companyDataSource,
      supportedViewModes: {EmrQueryLayoutViewMode.grid}
    );
    return EmrQueryLayoutHybrid<Company>(
      controller: queryLayoutController,
      onItemTapped: (value) {
        context.goNamed('company-edit', params: {'code': value.code});
      },
      columns: [
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'code',
            dataSource: queryLayoutController.dataSource,
            child: const EmrGridHeader(text: 'Company Code'),
          ),
          cellBuilder: (company) => Text(company.code),
          width: 150,
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'shortName',
            dataSource: queryLayoutController.dataSource,
            child: const EmrGridHeader(text: 'Short Name'),
          ),
          cellBuilder: (company) => Text(company.shortName),
          width: 180,
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'fullName',
            dataSource: queryLayoutController.dataSource,
            child: const EmrGridHeader(text: 'Full Name'),
          ),
          cellBuilder: (company) => Text(company.fullName),
          width: 250,
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'territoryCode',
            dataSource: queryLayoutController.dataSource,
            child: const EmrGridHeader(text: 'Territory'),
          ),
          cellBuilder: (company) => Text(company.territoryCode),
        ),
      ],
    );
  }
}
