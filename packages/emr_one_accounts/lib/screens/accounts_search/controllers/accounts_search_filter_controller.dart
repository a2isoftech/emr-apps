import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/widgets.dart';

class AccountsSearchFilterController extends EmrFilterController {
  AccountsSearchFilterController({required this.dataController})
    : super(
        filterContentBuilder: (context, filter, controller) {
          switch (filter.key) {
            case kAccountManager:
              return EmrFilterAutoComplete<ListValue, String>(
                Key(filter.key),
                filter,
                controller,
                (pattern, filterController) async {
                  return dataController.getAccountManagers(pattern);
                },
                close: Navigator.of(context).pop,
                getTitle: (p0) => '${p0.text}',
                getValue: (p0) => p0.value ?? '',
                multi: true,
              );
            case kAccountStatus:
              return EmrFilterAutoComplete<ListValue, String>(
                Key(filter.key),
                filter,
                controller,
                (pattern, filterController) async {
                  return dataController.allAccountStatuses
                      .where(
                        (e) =>
                            ((e.value ?? '').toLowerCase().contains(
                                  pattern.toLowerCase(),
                                ) ||
                                (e.text ?? '').toLowerCase().contains(
                                  pattern,
                                )) &&
                            (e.text != Enum$AccountType.$unknown.toJson()),
                      )
                      .toList();
                },
                close: Navigator.of(context).pop,
                getTitle: (p0) => '${p0.text}',
                getValue: (p0) => p0.text ?? '',
                multi: true,
              );
            case kAccountType:
              return EmrFilterAutoComplete<ListValue, String>(
                Key(filter.key),
                filter,
                controller,
                (pattern, filterController) async {
                  return dataController.allAccountTypes
                      .where(
                        (e) =>
                            ((e.value ?? '').toLowerCase().contains(
                                  pattern.toLowerCase(),
                                ) ||
                                (e.text ?? '').toLowerCase().contains(
                                  pattern,
                                )) &&
                            (e.text != Enum$AccountType.$unknown.toJson()),
                      )
                      .toList();
                },
                close: Navigator.of(context).pop,
                getTitle: (p0) => '${p0.text}',
                getValue: (p0) => p0.value ?? '',
                multi: true,
              );
          }

          throw Exception(
            'filterContentBuilder should return a Widget for ${filter.key}',
          );
        },
        filters: [],
        displayMode: EmrFilterDisplayMode.popover,
      );

  final AccountsSearchDataController dataController;

  static const kAccountManager = 'AccountManagers';
  static const kAccountStatus = 'AccountStatuses';
  static const kAccountType = 'AccountTypes';

  void fetchFilterValues() {
    dataController.getFilterValues();
  }

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: kAccountManager))
        EmrFilterModel<List<String>>(
          key: kAccountManager,
          name: 'Account Manager',
        ),
      if (!containsFilter(key: kAccountStatus))
        EmrFilterModel<List<String>>(
          key: kAccountStatus,
          name: 'Account Status',
        ),
      if (!containsFilter(key: kAccountType))
        EmrFilterModel<List<String>>(key: kAccountType, name: 'Account Type'),
    ];
  }
}
