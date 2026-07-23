import 'package:emr_core_api/graphql/queries/account/accout_search_by_account_name.graphql.dart';
import 'package:emr_core_api/graphql/queries/account/accout_search_by_account_number.graphql.dart';
import 'package:emr_core_api/graphql/queries/search_suggestions/search_companies.graphql.dart';
import 'package:emr_core_api/graphql/queries/search_suggestions/search_contracts.graphql.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_cashiersearch/base/base_service.dart';
import 'package:emr_one_core/emr_one_core.dart';

abstract class ISearchSuggestionService extends BaseService {
  ISearchSuggestionService({required super.httpClient});

  Future<List<(String id, String fullName)>> searchSuggestionCompanies({
    String? query,
  });

  Future<List<(String id, String name)>> searchSuggestionAccountsByNumber(
    String query,
  );

  Future<List<(String id, String name)>> searchSuggestionAccountsByName(
    String query,
  );

  Future<List<(String id, String customerReference, String internalReference)>>
   searchSuggestionContracts(
    String query,
  );

}

class SearchSuggestionService extends ISearchSuggestionService {
  SearchSuggestionService({required super.httpClient});

  @override
  Future<List<(String id, String fullName)>> searchSuggestionCompanies({
    String? query,
  }) async {
    final formattedQuery = getFormattedSearchValue(query);
    final result = await documentNodeQuerySearchSuggestionCompanies.execute(
      httpClient,
      Query$SearchSuggestionCompanies.fromJson,
      variables: Variables$Query$SearchSuggestionCompanies(
        input: Input$SearchCompanyInput(
          query: formattedQuery,
        ),
      ),
    );
    if (result.hasErrors() || result.data?.companies == null) {
      return [];
    }
    return result.data!.companies!.nodes!
        .map((company) => (company.id, company.fullName))
        .toList();
  }

  @override
  Future<List<(String id, String name)>>
   searchSuggestionAccountsByNumber(String searchText) async {
    final results = await documentNodeQueryAccountSearchByAccountNumber.execute(
      httpClient,
      Query$AccountSearchByAccountNumber.fromJson,
      variables: Variables$Query$AccountSearchByAccountNumber(
        input: searchText,
      ),
    );

    if (results.hasErrors()) {
      throw Exception(results.errors);
    }
    return results.data?.searchAccountsByAccountNumber?.nodes
            ?.map((x) => (x.id, x.code))
            .toSet()
            .toList() ??
        [];
  }

  @override
  Future<List<(String id, String name)>>
   searchSuggestionAccountsByName(String searchText) async {
    final results = await documentNodeQueryAccountSearchByAccountName.execute(
      httpClient,
      Query$AccountSearchByAccountName.fromJson,
      variables: Variables$Query$AccountSearchByAccountName(
        input: searchText,
      ),
    );

    if (results.hasErrors()) {
      throw Exception(results.errors);
    }
    return results.data?.searchAccountsByAccountName?.nodes
            ?.map((x) => (x.id, x.name))
            .toSet()
            .toList() ??
        [];
  }

  @override
  Future<List<(String id, String customerReference, String internalReference)>>
  searchSuggestionContracts(
    String query,
  ) async {
    final result = await documentNodeQuerySearchContracts.execute(
      httpClient,
      Query$SearchContracts.fromJson,
      variables: Variables$Query$SearchContracts(
        input: Input$SearchContractsInput(
          query: query,
        ),
      ),
    );
    if (result.hasErrors() || result.data?.searchContracts?.nodes == null) {
      return [];
    }
    return result.data!.searchContracts!.nodes!
        .map((contract) => 
          (contract.id,
           contract.customerReference,
            contract.internalReference),)
        .toList();
  }

  String getFormattedSearchValue(String? searchValue) {
    if (searchValue != null && searchValue.isNotEmpty) {
      final tokens = searchValue.split(' ');
      return '${tokens.join('* ')}*';
    }
    return '';
  }
}
