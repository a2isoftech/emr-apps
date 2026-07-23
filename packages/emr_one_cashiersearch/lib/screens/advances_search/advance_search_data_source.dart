import 'dart:convert';

import 'package:emr_core_api/graphql/queries/payment/advances/search_advances_facets.graphql.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_cashiersearch/controllers/advance_filters_controller.dart';
import 'package:emr_one_cashiersearch/extensions/string_extension.dart';
import 'package:emr_one_cashiersearch/extensions/user_info_extensions.dart';
import 'package:emr_one_cashiersearch/models/advance.dart';
import 'package:emr_one_cashiersearch/models/filter_item_model.dart';
import 'package:emr_one_cashiersearch/services/advances_payment_service.dart';
import 'package:emr_one_core/data/emr_facet_result_value.dart';
import 'package:emr_one_core/emr_one_core.dart';

class AdvanceSearchDataSource extends EmrQueryGraphQLDataSource<Advance> {
  AdvanceSearchDataSource({
    required this.advancesService,
    required this.userInfoService,
  });

  final IAdvancesPaymentService advancesService;
  final UserInfoService userInfoService;

  @override
  bool get supportsFacets => true;

  @override
  bool get supportsPaging => true;

  final _debounceLoad =
      Debounceable<
        (List<Advance>, EmrQueryGraphQLMetadata<Query$SearchAdvancesFacets>)
      >();

  @override
  Future<void> refresh() async {
    await _debounceLoad.call(
      () async {
        loading.value = true;

        final order = getOrder();
        final input = getSearchAdvancesInput();
        if (input == null) {
          return (
            <Advance>[],
            EmrQueryGraphQLMetadata<Query$SearchAdvancesFacets>(
              Query$SearchAdvancesFacets(searchAdvancesFacets: []),
              0,
              EmrQueryGraphQLPageInfo(
                hasPreviousPage: false,
                hasNextPage: false,
                startCursor: null,
                endCursor: null,
              ),
            ),
          );
        }
        return advancesService
            .searchAdvances(
              first: first,
              last: last,
              after: after,
              before: before,
              order: order,
              input: input,
            )
            .catchError((Object err) {
              loading.value = false;
              return Future.value((<Advance>[], getDefaultMeta()));
            });
      },
      then: (response) async {
        final (results, meta) = response;
        final facetResults = transformFacetResult(
          meta.facets.searchAdvancesFacets,
        );
        recordCount = meta.recordCount;
        pageInfo = meta.pageInfo;
        facets.value = facetResults;
        data.value = results;
        loading.value = false;
        await onRefresh.call();
      },
    );
  }

  EmrQueryGraphQLMetadata<Query$SearchAdvancesFacets> getDefaultMeta() {
    return EmrQueryGraphQLMetadata<Query$SearchAdvancesFacets>(
      Query$SearchAdvancesFacets(searchAdvancesFacets: []),
      0,
      EmrQueryGraphQLPageInfo(
        startCursor: null,
        endCursor: null,
        hasNextPage: false,
        hasPreviousPage: false,
      ),
    );
  }

  List<Input$SearchAdvancesSortInput> getOrder() {
    return queryScope.sortOrder
        .map(
          (e) => Input$SearchAdvancesSortInput.fromJson(
            jsonDecode('{ "${e.field}": "${e.direction}" }')
                as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  Map<String, EmrFacetResult> transformFacetResult(
    List<Query$SearchAdvancesFacets$searchAdvancesFacets> facets,
  ) {
    final facetResults = {
      for (final v in facets)
        v.key: EmrFacetResult(
          name: _addSpacesToCamelCase(v.value.name!),
          values:
              v.value.values
                  ?.map(
                    (e) => EmrFacetResultValue(
                      text: (_mapServerText(e?.range)?.toUpperCase() ?? '')
                          .replaceAll('ADVANCEVALUE', 'x'),
                      value: _mapServerValue(e?.range) ?? '',
                      count: e?.count ?? 0,
                    ),
                  )
                  .toList() ??
              [],
        ),
    };
    return facetResults;
  }

  Input$AdvancesSearchInput? getSearchAdvancesInput() {
    final accountNameIds =
        _getFilterKeyList(AdvanceFiltersController.kPartyAccountName) ?? [];
    final accountNumberIds =
        _getStringFilterList(AdvanceFiltersController.kPartyAccountNumber) ??
        [];
    List<String> accountIds;

    final payingYardId = 'yards/${userInfoService.userInfo.getDefaultYard()}';

    if (accountNameIds.isNotEmpty && accountNumberIds.isNotEmpty) {
      final commonIds = accountNameIds.toSet().intersection(
        accountNumberIds.toSet(),
      );
      if (commonIds.isEmpty) {
        return null;
      }
      accountIds = commonIds.toList();
    } else {
      accountIds = accountNameIds.isNotEmpty
          ? accountNameIds
          : accountNumberIds;
    }
    final filterStatuses = _getStringFilterList(
      AdvanceFiltersController.kStatus,
    );
    final statusEnums = filterStatuses != null
        ? Enum$AdvanceStatus.values
              .where(
                (status) => filterStatuses.contains(
                  status.name.toLowerCase().capitalize(),
                ),
              )
              .toList()
        : null;
    return Input$AdvancesSearchInput(
      query: queryScope.query,
      accountIds: accountIds,
      companyIds: _getFilterKeyList(AdvanceFiltersController.kCompanyName),
      reasons: _getReasonValues(AdvanceFiltersController.kReason),
      handlingYardIds: _getFilterKeyList(
        AdvanceFiltersController.kHandlingYard,
      ),
      payableYardIds: _getFilterKeyList(AdvanceFiltersController.kPayableYard),
      statuses: statusEnums,
      payingYardId: payingYardId,
    );
  }

  List<Enum$AdvanceReason>? _getReasonValues(String key) {
    final filterValues = _getStringFilterList(AdvanceFiltersController.kReason);
    if (filterValues?.isNotEmpty ?? false) {
      return Enum$AdvanceReason.values
          .where((el) => filterValues!.contains(el.name.toLowerCase()))
          .toList();
    }
    return null;
  }

  List<String>? _getStringFilterList(String key) =>
      (queryScope.filters[key] as List<String?>?)?.whereType<String>().toList();

  List<String>? _getFilterKeyList(String key) {
    final filter = (queryScope.filters[key] as List?)?.cast<FilterItem>();
    return filter?.map((e) => e.key).toList();
  }

  //TODO - Need revisit to get localized text
  String _addSpacesToCamelCase(String input) {
    return input.replaceAllMapped(
      RegExp('(?<!^)([A-Z])'),
      (match) => ' ${match.group(0)}',
    );
  }

  //TODO - Need revisit to get localized text
  String? _mapServerText(String? serverValue) {
    return switch (serverValue) {
      'commodity' => 'Commodity',
      'haulage' => 'Haulage',
      'cost' => 'Cost',
      'contract' => 'Contract',
      'preinvoice' => 'Pre Invoice',
      'percentage' => 'Percentage',
      'fixed' => 'Fixed',
      'partialpay' => 'Partial Pay',
      _ => serverValue,
    };
  }

  String? _mapServerValue(String? serverValue) {
    return switch (serverValue) {
      'preinvoice' => 'pre_invoice',
      'partialpay' => 'partial_pay',
      _ => serverValue,
    };
  }
}
