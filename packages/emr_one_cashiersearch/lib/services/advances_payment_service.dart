import 'package:emr_core_api/emr_core_api.dart' hide PaymentMethodFactory;
import 'package:emr_one_cashiersearch/base/base_service.dart';
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart'
    hide Account, AccountType, BusinessDetail, PaymentTerm;

abstract class IAdvancesPaymentService extends BaseService {
  IAdvancesPaymentService({required super.httpClient});

  Future<(List<Advance>, EmrQueryGraphQLMetadata<Query$SearchAdvancesFacets>)>
  searchAdvances({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$AdvancesSearchInput? input,
    List<Input$SearchAdvancesSortInput> order,
  });

  Future<Query$SearchAdvancesFacets> getSearchAdvancesFacets({
    Input$AdvancesSearchInput? input,
  });

  Future<ApiResponse<String>> saveAdvances(Advance advance);

  Future<ApiResponse<Advance>> getAdvances(String id);

  Future<Account?> getAccountById(String id);

  Future<List<Account>> searchSimpleAccounts(
    String query, {
    String? after,
    String? before,
    int? first,
    int? last,
  });

  Future<List<Yard>> yards(
    String query, {
    List<Territory> territories = const [],
  });
}

class AdvancesPaymentService extends IAdvancesPaymentService {
  AdvancesPaymentService({required super.httpClient});

  @override
  Future<(List<Advance>, EmrQueryGraphQLMetadata<Query$SearchAdvancesFacets>)>
  searchAdvances({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$AdvancesSearchInput? input,
    List<Input$SearchAdvancesSortInput>? order,
  }) async {
    final facets = await getSearchAdvancesFacets(input: input);

    final results = await documentNodeQuerySearchAdvances.execute(
      httpClient,
      Query$SearchAdvances.fromJson,
      variables: Variables$Query$SearchAdvances(
        after: after,
        before: before,
        first: first,
        last: last,
        order: order,
        input: input ?? Input$AdvancesSearchInput(),
      ),
    );

    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    final advances =
        results.data?.searchAdvances?.nodes
            ?.map((e) => Advance.fromJson(e.toJson()))
            .toList() ??
        [];

    final pageInfo = results.data?.searchAdvances?.pageInfo;
    return (
      advances,
      EmrQueryGraphQLMetadata(
        facets,
        results.data?.searchAdvances?.totalCount ?? 0,
        EmrQueryGraphQLPageInfo(
          hasPreviousPage: pageInfo?.hasPreviousPage ?? false,
          hasNextPage: pageInfo?.hasNextPage ?? false,
          startCursor: pageInfo?.startCursor,
          endCursor: pageInfo?.endCursor,
        ),
      ),
    );
  }

  @override
  Future<Query$SearchAdvancesFacets> getSearchAdvancesFacets({
    Input$AdvancesSearchInput? input,
  }) async {
    final results = await documentNodeQuerySearchAdvancesFacets.execute(
      httpClient,
      Query$SearchAdvancesFacets.fromJson,
      variables: Variables$Query$SearchAdvancesFacets(
        input: input ?? Input$AdvancesSearchInput(),
      ),
    );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }
    return results.data!;
  }

  String? getFormattedSearchValue(String? searchValue) {
    if (searchValue != null && searchValue.isNotEmpty) {
      final tokens = searchValue.split(' ');
      return '${tokens.join('* ')}*';
    }
    return null;
  }

  @override
  Future<ApiResponse<String>> saveAdvances(Advance advance) async {
    PercentageTermDetails? percentageTermDetails;
    FixedTermDetails? fixedTermDetails;
    PartialPayTermDetails? partialPayTermDetails;

    if (advance.term.termType == AdvanceTermType.percentage) {
      percentageTermDetails = advance.term as PercentageTermDetails;
    } else if (advance.term.termType == AdvanceTermType.fixed) {
      fixedTermDetails = advance.term as FixedTermDetails;
    } else if (advance.term.termType == AdvanceTermType.partialPay) {
      partialPayTermDetails = advance.term as PartialPayTermDetails;
    }

    final jsonData = advance.toJson();
    jsonData['termDetails'] = null;
    jsonData.addAll({
      'percentageTermDetails': percentageTermDetails?.toJson(),
      'fixedTermDetails': fixedTermDetails?.toJson(),
      'partialPayTermDetails': partialPayTermDetails?.toJson(),
    });

    final input = Input$AdvanceInput.fromJson(jsonData);

    final result = await documentNodeMutationsaveAdvance.execute(
      httpClient,
      Mutation$saveAdvance.fromJson,
      variables: Variables$Mutation$saveAdvance(input: input),
    );
    if (result.hasErrors()) {
      return ApiResponse(
        data: result.errors?.firstOrNull?.code ?? '',
        success: false,
        message:
            result.errors?.firstOrNull?.message ??
            'Unable to create new advance deposit',
      );
    }

    return ApiResponse(data: result.data?.saveAdvance.id ?? '');
  }

  @override
  Future<ApiResponse<Advance>> getAdvances(String id) async {
    final response = await documentNodeQueryGetAdvance.execute(
      httpClient,
      Query$GetAdvance.fromJson,
      variables: Variables$Query$GetAdvance(
        input: Input$GetAdvanceInput(id: id),
      ),
    );
    if (response.hasErrors() || response.data?.advance == null) {
      return ApiResponse(
        success: false,
        message: 'Unable to fetch the adnvance deposit',
      );
    }
    final advance = Advance.fromJson(response.data!.advance.toJson());
    return ApiResponse(data: advance);
  }

  @override
  Future<Account?> getAccountById(String id) async {
    final response = await documentNodeQueryGetAccountById.execute(
      httpClient,
      Query$GetAccountById.fromJson,
      variables: Variables$Query$GetAccountById(accountId: id),
    );
    // ignore: deprecated_member_use
    final account = response.data?.accountById;
    return account != null
        ? Account(
            id: account.id,
            code: account.code,
            name: account.name,
            accountContacts: [],
            type: AccountType.fromJson(account.type.toJson()),
            businessDetail: account.businessDetail != null
                ? BusinessDetail(
                    PaymentTerm(
                      account
                                      .businessDetail
                                      ?.paymentTerm
                                      ?.financialPaymentMethod !=
                                  null &&
                              account
                                  .businessDetail!
                                  .paymentTerm!
                                  .financialPaymentMethod
                                  .isNotEmpty
                          ? PaymentMethodJson.fromJson(
                              account
                                  .businessDetail!
                                  .paymentTerm!
                                  .financialPaymentMethod,
                            )
                          : null,
                    ),
                    null,
                  )
                : null,
          )
        : null;
  }

  @override
  Future<List<Account>> searchSimpleAccounts(
    String query, {
    String? after,
    String? before,
    int? first,
    int? last,
  }) async {
    final response = await documentNodeQueryAccountSearchSimple.execute(
      httpClient,
      Query$AccountSearchSimple.fromJson,
      variables: Variables$Query$AccountSearchSimple(
        after: after,
        before: before,
        first: first,
        last: last,
        input: Input$AccountsSearchInput(query: '*$query'),
      ),
    );
    final accounts =
        response.data?.searchAccounts?.nodes
            ?.map(
              (account) => Account(
                id: account.id,
                code: account.code,
                name: account.name,
                accountContacts: [],
                type: AccountType.fromJson(account.type.toJson()),
                businessDetail: account.businessDetail != null
                    ? BusinessDetail(
                        PaymentTerm(
                          account
                                          .businessDetail
                                          ?.paymentTerm
                                          ?.financialPaymentMethod !=
                                      null &&
                                  account
                                      .businessDetail!
                                      .paymentTerm!
                                      .financialPaymentMethod
                                      .isNotEmpty
                              ? PaymentMethodJson.fromJson(
                                  account
                                      .businessDetail!
                                      .paymentTerm!
                                      .financialPaymentMethod,
                                )
                              : null,
                        ),
                        null,
                      )
                    : null,
              ),
            )
            .toList() ??
        [];
    return accounts;
  }

  @override
  Future<List<Yard>> yards(
    String query, {
    List<Territory> territories = const [],
  }) async {
    final territoriesCodes = territories
        .map((toElement) => toElement.code)
        .toList();

    var formattedSearchQuery = '';
    if (query.isNotEmpty) {
      final tokens = query.split(' ');
      formattedSearchQuery = '*${tokens.join('* ')}*';
    }

    final response = await documentNodeQueryGetYards.execute(
      httpClient,
      Query$GetYards.fromJson,
      variables: Variables$Query$GetYards(
        query: formattedSearchQuery,
        territoryCodes: territoriesCodes,
      ),
    );

    return response.data!.yards!.edges!
        .map(
          (e) => Yard(
            id: e.node.id,
            name: e.node.name,
            yardCode: e.node.yardCode,
            //name: e.node.shortName,
            shortName: e.node.shortName,
            defaultPaymentMethod: PaymentMethodJson.fromJson(
              e.node.defaultPaymentMethod.toJson(),
            ),
            paymentMethods: PaymentMethods.fromJson(
              e.node.paymentMethods.toJson(),
            ),
            company: e.node.company != null
                ? Company(
                    id: e.node.company!.id,
                    code: e.node.company!.code,
                    fullName: e.node.company!.fullName,
                    shortName: e.node.company!.shortName,
                    territory: e.node.company!.territory != null
                        ? Territory(
                            e.node.company!.territory!.code,
                            e.node.company!.territory!.name,
                            const [],
                            id: e.node.company!.territory!.id,
                            currencyCode:
                                e.node.company!.territory!.currencyCode,
                          )
                        : null,
                  )
                : null,
          ),
        )
        .toList();
  }
}
