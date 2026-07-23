import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/emr_one_data_management.dart';
import 'package:emr_one_data_management/screens/company_bank_accounts/company_bank_account_data_source.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class CompanyBankAccountSearch extends StatefulWidget
    with AppBarExtender, OmniSearch {
  const CompanyBankAccountSearch({super.key});

  @override
  List<Widget> getActions(BuildContext context) => [
    if (context.userHasPermission(
      'permissions/data-management/company-bank-accounts/create/action',
    ))
      IconButton.filled(
        tooltip: 'Add Company Bank Account',
        onPressed: () => context.goNamed(
          EmrOneDataManagementConstants.kRouteCompanyBankAccountForm,
          params: {'code': EmrOneDataManagementConstants.kEmptyGuid},
        ),
        icon: const Icon(Icons.add_circle),
      ),
  ];

  @override
  State<CompanyBankAccountSearch> createState() =>
      _CompanyBankAccountSearchState();
}

class _CompanyBankAccountSearchState extends State<CompanyBankAccountSearch> {
  late final CompanyBankAccountDataSource _dataSource;
  late final EmrQueryLayoutController<CompanyBankAccount>
  _queryLayoutController;

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

    _dataSource = CompanyBankAccountDataSource(
      referenceDataService: context.coreApi.referenceData,
      errorHandler: handleErrors,
    );

    _dataSource.sortBy('code');

    _queryLayoutController = EmrQueryLayoutController<CompanyBankAccount>(
      dataSource: _dataSource,
      supportedViewModes: {EmrQueryLayoutViewMode.grid},
    );
  }

  @override
  Widget build(BuildContext context) {
    return EmrQueryLayoutHybrid<CompanyBankAccount>(
      controller: _queryLayoutController,
      columns: [
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'code',
            dataSource: _queryLayoutController.dataSource,
            child: const EmrGridHeader(text: 'Code'),
          ),
          cellBuilder: (companyBankAccount) => Text(companyBankAccount.code),
          width: 70,
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'Bank Name',
            dataSource: _queryLayoutController.dataSource,
            child: const EmrGridHeader(text: 'Bank Name'),
          ),
          cellBuilder: (companyBankAccount) =>
              Text(companyBankAccount.bankName),
          width: 150,
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'Default Account',
            dataSource: _queryLayoutController.dataSource,
            child: const EmrGridHeader(text: 'Default Account'),
          ),
          cellBuilder: (companyBankAccount) =>
              Text(companyBankAccount.defaultAccount),
          width: 150,
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'Company',
            dataSource: _queryLayoutController.dataSource,
            child: const EmrGridHeader(text: 'Company'),
          ),
          cellBuilder: (companyBankAccount) =>
              Text(companyBankAccount.company!.fullName),
          width: 150,
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'Territory',
            dataSource: _queryLayoutController.dataSource,
            child: const EmrGridHeader(text: 'Territory'),
          ),
          cellBuilder: (companyBankAccount) =>
              Text(companyBankAccount.territory!.name),
          width: 150,
        ),
      ],
      onItemTapped: (companyBankAccount) {
        context.goNamed(
          EmrOneDataManagementConstants.kRouteCompanyBankAccountForm,
          params: {'code': companyBankAccount.code},
        );
      },
    );
  }
}
