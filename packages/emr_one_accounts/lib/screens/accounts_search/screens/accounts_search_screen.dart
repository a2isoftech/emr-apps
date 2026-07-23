import 'package:emr_core_api/extensions/account_type_enum_extension.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class AccountsSearchScreen extends StatefulWidget {
  const AccountsSearchScreen({super.key});

  @override
  State<AccountsSearchScreen> createState() => _AccountsSearchScreenState();
}

class _AccountsSearchScreenState extends State<AccountsSearchScreen> {
  late EmrGridController<Account> _gridController;
  late final EmrQueryLayoutController<Account> queryLayoutController;

  @override
  void initState() {
    super.initState();
    queryLayoutController = Provider.of<EmrQueryLayoutController<Account>>(
      context,
      listen: false,
    );
    _gridController = EmrGridController<Account>(
      data: queryLayoutController.dataSource.data,
      showLoader: queryLayoutController.dataSource.loading,
    );
    final filterController =
        queryLayoutController.filterController!
            as AccountsSearchFilterController;
    filterController.fetchFilterValues();
    final gridDataSource =
        queryLayoutController.dataSource as AccountsSearchDataSource;
    gridDataSource.onRefresh = () async {
      _gridController.selectedRows.value = [];
    };

    gridDataSource.refresh();
  }

  @override
  Widget build(BuildContext context) {
    const headerTextStyle = TextStyle(fontWeight: FontWeight.bold);
    final formatter = DateFormat('d-MMMM-yyyy');

    return EmrQueryLayout<Account>.grid(
      gridController: _gridController,
      queryLayoutController: queryLayoutController,
      columns: [
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'code',
            dataSource: queryLayoutController.dataSource,
            child: Text(context.l10n.code, style: headerTextStyle),
          ),
          cellBuilder: (account) => Text(account.code ?? ''),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'name',
            dataSource: queryLayoutController.dataSource,
            child: Text(context.l10n.name, style: headerTextStyle),
          ),
          cellBuilder: (account) => Text(account.name ?? ''),
        ),
        EmrGridColumn(
          headerBuilder: () =>
              Text(context.l10n.status, style: headerTextStyle),
          cellBuilder: (account) => Text(account.accountStatus ?? ''),
        ),
        EmrGridColumn(
          headerBuilder: () =>
              Text(context.l10n.address, style: headerTextStyle),
          cellBuilder: (account) => Text(_getAccountAddressString(account)),
        ),
        EmrGridColumn(
          headerBuilder: () =>
              Text(context.l10n.managerName, style: headerTextStyle),
          cellBuilder: (account) => Text(_getAccountManagersString(account)),
        ),
        EmrGridColumn(
          headerBuilder: () => Text(context.l10n.type, style: headerTextStyle),
          cellBuilder: (account) =>
              Text(_getAccountTypeString(context, account)),
        ),
        EmrGridColumn(
          headerBuilder: () =>
              Text(context.l10n.industryGroup, style: headerTextStyle),
          cellBuilder: (account) => Text(account.industryGroup ?? ''),
        ),
        EmrGridColumn(
          headerBuilder: () =>
              Text(context.l10n.lastVisited, style: headerTextStyle),
          cellBuilder: (account) => Text(
            account.lastTicketDate == null
                ? ''
                : formatter.format(account.lastTicketDate!.toLocal()),
          ),
        ),
      ],
      onRowTapped: (account) => context.goNamed(
        AccountNamedRoutes.detail,
        params: {'accountId': Uri.encodeComponent(account.id!)},
      ),
    );
  }

  String _getAccountAddressString(Account account) {
    if (account.addresses.isNotEmpty) {
      final address1 = account.addresses.first?.address1;
      return '${address1 ?? ''} ${account.addresses.first?.postCode ?? ''}';
    }
    return '-';
  }

  String _getAccountManagersString(Account account) {
    if (account.primaryManager != null) {
      final managerName = account.primaryManager?.name;
      final managerEmail = account.primaryManager?.emailAddress;
      return '${managerName ?? ''} ${managerEmail ?? ''}';
    }
    if (account.managers != null && account.managers!.isNotEmpty) {
      final managerName = account.managers!.first.name;
      final managerEmail = account.managers!.first.emailAddress;
      return '${managerName ?? ''} ${managerEmail ?? ''}';
    }
    return '-';
  }

  String _getAccountTypeString(BuildContext context, Account account) {
    return account.accountType.displayString(context);
  }
}
