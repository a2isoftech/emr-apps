import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/widgets.dart';

class ChequeBooksFilterController extends EmrFilterController {
  ChequeBooksFilterController({required Territory defaultTerritory})
    : super(
        filterContentBuilder: (context, filter, controller) {
          return switch (filter.key) {
            kTerritory => EmrFilterAutoComplete<Territory, Territory>(
              Key(filter.key),
              filter,
              controller,
              (pattern, filterController) =>
                  context.coreApi.referenceData.territories(pattern),
              close: Navigator.of(context).pop,
              getTitle: (suggestion) => suggestion.code,
              getSubtitle: (suggestion) => suggestion.name,
              getValue: (suggestion) => suggestion,
            ),
            kCompanyBankAccount =>
              EmrFilterAutoComplete<CompanyBankAccount, CompanyBankAccount>(
                Key(filter.key),
                filter,
                controller,
                (pattern, filterController) => _searchCompanyBankAccounts(
                  context,
                  filterController,
                  pattern,
                ),
                close: Navigator.of(context).pop,
                getTitle: (suggestion) => suggestion.code,
                getSubtitle: (suggestion) => suggestion.bankName,
                getValue: (suggestion) => suggestion,
              ),
            _ => throw Exception(
              'filterContentBuilder should return a Widget for '
              '${filter.key}',
            ),
          };
        },
        filters: [
          EmrFilterModel<Territory>(
            key: kTerritory,
            name: 'Territory',
            text: defaultTerritory.code,
            value: defaultTerritory,
            enableDelete: false,
          ),
          // The bank account filter is added by `onTerritoryChanged`.
        ],
      );

  static const kTerritory = 'Territory';
  static const kCompanyBankAccount = 'CompanyBankAccount';

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: kTerritory))
        EmrFilterModel<Territory>(key: kTerritory, name: 'Territory'),
      if (!containsFilter(key: kCompanyBankAccount))
        EmrFilterModel<CompanyBankAccount>(
          key: kCompanyBankAccount,
          name: 'Bank Account',
        ),
    ];
  }

  static Future<Iterable<CompanyBankAccount>> _searchCompanyBankAccounts(
    BuildContext context,
    EmrFilterController filterController,
    String pattern,
  ) async {
    final territory = filterController.tryGetFilter<Territory>(
      key: kTerritory,
    )!;

    final companyBankAccounts = await context.coreApi.referenceData
        .searchCompanyBankAccounts(
          query: pattern,
          territoryCode: territory.value!.code,
        );

    return companyBankAccounts.data!.$1;
  }

  Future<void> onTerritoryChanged(BuildContext context) async {
    final bankAccountText = context.l10n.bankAccount;

    final data = await _searchCompanyBankAccounts(context, this, '');

    if (data.isEmpty) {
      return;
    }

    final companyBankAccount = tryGetFilter<CompanyBankAccount>(
      key: kCompanyBankAccount,
    );

    addOrUpdateFilter(
      filter:
          companyBankAccount ??
          EmrFilterModel<CompanyBankAccount>(
            key: kCompanyBankAccount,
            name: bankAccountText,
            enableDelete: false,
          ),
      text: data.first.code,
      value: data.first,
    );
  }
}
